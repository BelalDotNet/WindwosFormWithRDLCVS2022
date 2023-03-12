using Microsoft.Reporting.WinForms;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Imaging;
using System.Drawing.Printing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LabelPrint
{
    public partial class LabelPrintForm : Form
    {
        public static string _reportTemplate=string.Empty;
        ReportDataSource datasource;

        private static List<Stream> m_streams;
        private static int m_currentPageIndex = 0;

        public LabelPrintForm()
        {
            InitializeComponent();
        }

        public LabelPrintForm(IDataReader dr, string reportTemplate)
        {
            InitializeComponent();

            _reportTemplate=reportTemplate;

            if (reportTemplate=="Product_Label")
            {
                datasource = new ReportDataSource("DS_ProductLabel", dr);
            }
            else if(reportTemplate == "Process_Label")
            {
                datasource = new ReportDataSource("DS_ProcessLabel", dr);
            }
           
        }
        public LabelPrintForm(IDataReader dr, string reportTemplate, bool isPrint)
        {
            InitializeComponent();

            _reportTemplate = reportTemplate;

            if (reportTemplate == "Product_Label")
            {
                datasource = new ReportDataSource("DS_ProductLabel", dr);

                this.reportViewer1.LocalReport.DataSources.Clear();
                string RDLCFilePath = Application.StartupPath.Replace("\\bin\\Debug", "");
                LocalReport report = new LocalReport();
                report.ReportPath = RDLCFilePath + @"\ProductReport\Rpt_ProductLabelPrint.rdlc";
                report.DataSources.Add(datasource);
                PrintToPrinter(report);
            }
            else if (reportTemplate == "Process_Label")
            {
                datasource = new ReportDataSource("DS_ProcessLabel", dr);
            }

        }

        private void LabelPrintForm_Load(object sender, EventArgs e)
        {
            this.reportViewer1.LocalReport.DataSources.Clear();
            string RDLCFilePath =Application.StartupPath.Replace("\\bin\\Debug", "");

            if (_reportTemplate== "Product_Label")
            {
                reportViewer1.LocalReport.ReportPath = RDLCFilePath + @"\ProductReport\Rpt_ProductLabelPrint.rdlc"; // Path of the rdlc file
            }
            else if (_reportTemplate=="Process_Label")
            {
                reportViewer1.LocalReport.ReportPath = RDLCFilePath + @"\ProductReport\Rpt_ProcessLabelPrint.rdlc"; 
            }
            
            this.reportViewer1.LocalReport.DataSources.Add(datasource);
            this.reportViewer1.RefreshReport();



            //this.reportViewer1.LocalReport.DataSources.Clear();
            //this.reportViewer1.LocalReport.DataSources.Add(datasource);
            //this.reportViewer1.RefreshReport();

        }

        public static void PrintToPrinter(LocalReport report)
        {
            Export(report);

        }

        public static void Export(LocalReport report, bool print = true)
        {
            string deviceInfo =
             @"<DeviceInfo>
                <OutputFormat>EMF</OutputFormat>
                <PageWidth>4in</PageWidth>
                <PageHeight>4in</PageHeight>
                <MarginTop>0in</MarginTop>
                <MarginLeft>0in</MarginLeft>
                <MarginRight>0in</MarginRight>
                <MarginBottom>0in</MarginBottom>
            </DeviceInfo>";
            Warning[] warnings;
            m_streams = new List<Stream>();
            report.Render("Image", deviceInfo, CreateStream, out warnings);
            foreach (Stream stream in m_streams)
                stream.Position = 0;

            if (print)
            {
                Print();
            }
        }


        public static void Print()
        {
            if (m_streams == null || m_streams.Count == 0)
                throw new Exception("Error: no stream to print.");
            PrintDocument printDoc = new PrintDocument();
            if (!printDoc.PrinterSettings.IsValid)
            {
                throw new Exception("Error: cannot find the default printer.");
            }
            else
            {
                printDoc.PrintPage += new PrintPageEventHandler(PrintPage);
                m_currentPageIndex = 0;
                printDoc.Print();
            }
        }

        public static Stream CreateStream(string name, string fileNameExtension, Encoding encoding, string mimeType, bool willSeek)
        {
            Stream stream = new MemoryStream();
            m_streams.Add(stream);
            return stream;
        }

        public static void PrintPage(object sender, PrintPageEventArgs ev)
        {
            Metafile pageImage = new
               Metafile(m_streams[m_currentPageIndex]);

            // Adjust rectangular area with printer margins.
            Rectangle adjustedRect = new Rectangle(
                ev.PageBounds.Left - (int)ev.PageSettings.HardMarginX,
                ev.PageBounds.Top - (int)ev.PageSettings.HardMarginY,
                ev.PageBounds.Width,
                ev.PageBounds.Height);

            // Draw a white background for the report
            ev.Graphics.FillRectangle(Brushes.White, adjustedRect);

            // Draw the report content
            ev.Graphics.DrawImage(pageImage, adjustedRect);

            // Prepare for the next page. Make sure we haven't hit the end.
            m_currentPageIndex++;
            ev.HasMorePages = (m_currentPageIndex < m_streams.Count);
        }

        public static void DisposePrint()
        {
            if (m_streams != null)
            {
                foreach (Stream stream in m_streams)
                    stream.Close();
                m_streams = null;
            }
        }
    }
}
