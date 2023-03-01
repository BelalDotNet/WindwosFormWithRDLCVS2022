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

namespace LabelPrint.MasterPage
{
    public partial class FormVersionEntry : Form
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataAdapter da;
        SqlDataReader dr;
        public static int ProducLabelId = 0;
        //string con = ConfigurationManager.ConnectionStrings["DBCon"].ConnectionString;
        string con = ConfigurationManager.ConnectionStrings["LabelPrint.Properties.Settings.LabelPrintDBConnectionString"].ConnectionString;



        public FormVersionEntry()
        {
            InitializeComponent();
        }

        private void FormVersionEntry_Load(object sender, EventArgs e)
        {
            //cn = new SqlConnection(@"Data Source=DESKTOP-GFBVDG9;Initial Catalog=LabelPrintDB; User ID=sa; Password=Belal@123;");
            cn = new SqlConnection(con);
            cn.Open();

            GetAllFormTemplate();
        }

        private void btnFormVersionSave_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(comBoxFormTemplate.SelectedValue) != 0 && txtBoxFormNo.Text != string.Empty && txtBoxVersionNo.Text!=string.Empty)
            {
                cmd = new SqlCommand("tbl_FormTemplateVersion_CREATE", cn);
                cmd.CommandType = CommandType.StoredProcedure;              
                cmd.Parameters.AddWithValue("@FormTemplateId", comBoxFormTemplate.SelectedValue);
                cmd.Parameters.AddWithValue("@FormNo", txtBoxFormNo.Text);
                cmd.Parameters.AddWithValue("@VersionNo", txtBoxVersionNo.Text);      
                cmd.ExecuteNonQuery();
                ClearAll();            

                MessageBox.Show("New Form Template Saved Successfully.", "Record Saved", MessageBoxButtons.OK, MessageBoxIcon.Information);


            }
            else
            {
                MessageBox.Show("Please enter value in all fields", "Invalid Data", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }


        private void GetAllFormTemplate()
        {
            cmd = new SqlCommand("tbl_FormTemplate_Get", cn);
            da = new SqlDataAdapter(cmd);
            //Fill the DataTable with records from Table.
            DataTable dt = new DataTable();
            da.Fill(dt);

            //Insert the Default Item to DataTable.
            DataRow row = dt.NewRow();
            row[0] = 0;
            row[1] = "Please Select Form Template";
            dt.Rows.InsertAt(row, 0);

            //Assign DataTable as DataSource.
            comBoxFormTemplate.DataSource = dt;
            comBoxFormTemplate.DisplayMember = "TemplateName";
            comBoxFormTemplate.ValueMember = "FromTemplateId";
        }

        private void ClearAll()
        {
            comBoxFormTemplate.SelectedValue = 0;
            txtBoxVersionNo.Text = "";
            txtBoxFormNo.Text = "";
        }
    }
}
