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
        public LabelPrintForm()
        {
            InitializeComponent();
        }

        ReportDataSource datasource;

        public LabelPrintForm(IDataReader dr)
        {
            InitializeComponent();

            datasource = new ReportDataSource("DS_ProductLabel", dr);
        }

        private void LabelPrintForm_Load(object sender, EventArgs e)
        {
            this.reportViewer1.LocalReport.DataSources.Clear();
            this.reportViewer1.LocalReport.DataSources.Add(datasource);
            this.reportViewer1.RefreshReport();
            
        }
    }
}
