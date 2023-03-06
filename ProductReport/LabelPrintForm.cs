using Microsoft.Reporting.WinForms;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
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
    }
}
