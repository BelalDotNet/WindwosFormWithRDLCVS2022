using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LabelPrint.ProductEntry
{
    public partial class ProcessLabel : Form
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataAdapter da;
        SqlDataReader dr;
        public static int ProcessLabelId = 0;
        //string con = ConfigurationManager.ConnectionStrings["DBCon"].ConnectionString;
        string con = ConfigurationManager.ConnectionStrings["LabelPrint.Properties.Settings.LabelPrintDBConnectionString"].ConnectionString;

        public ProcessLabel()
        {
            InitializeComponent();
        }

        private void ProcessLabel_Load(object sender, EventArgs e)
        {
            //cn = new SqlConnection(@"Data Source=DESKTOP-GFBVDG9;Initial Catalog=LabelPrintDB; User ID=sa; Password=Belal@123;");
            cn = new SqlConnection(con);

            cn.Open();
            //bind data in data grid view  
            GetAllProcessLabel();
            //GetAllFormVersionForProcessLabel();
            //lblPackedByName.Text = DisplayUser.Display_Name;
            //disable delete and update button on load  
            // btnUpdate.Enabled = false;
            // btnDelete.Enabled = false;
        }


        private void GetAllProcessLabel()
        {
            cmd = new SqlCommand("ProcessLabel_UserWiseGetAll", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserId", DisplayUser.User_Id);
            da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dgProcessLabel.DataSource = dt;
            dgProcessLabel.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;

            this.dgProcessLabel.Columns["ProcessLabelId"].Visible = false;
            this.dgProcessLabel.Columns["FormVersionId"].Visible = false;
        }

        private void btnProcessLabelSave_Click(object sender, EventArgs e)
        {

        }
    }
}
