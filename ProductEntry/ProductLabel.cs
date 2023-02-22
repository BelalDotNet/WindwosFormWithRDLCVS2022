using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml.Linq;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;

namespace LabelPrint
{
    public partial class ProductLabel : Form
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataAdapter da;
        SqlDataReader dr;

        //string con = ConfigurationManager.ConnectionStrings["DBCon"].ConnectionString;
        string con = ConfigurationManager.ConnectionStrings["LabelPrint.Properties.Settings.LabelPrintDBConnectionString"].ConnectionString;

        private void ProductLabel_Load(object sender, EventArgs e)
        {
            //cn = new SqlConnection(@"Data Source=DESKTOP-GFBVDG9;Initial Catalog=LabelPrintDB; User ID=sa; Password=Belal@123;");
            cn = new SqlConnection(con);

            cn.Open();
            //bind data in data grid view  
            GetAllProductLabel();

            //lblPackedByName.Text = DisplayUser.Display_Name;
            //disable delete and update button on load  
            // btnUpdate.Enabled = false;
            // btnDelete.Enabled = false;

        }

        public ProductLabel()
        {
            InitializeComponent();
           
        }



        private void btnProductLabelSave_Click(object sender, EventArgs e)
        {



            if (txtProductName.Text != string.Empty && txtBatchNo.Text != string.Empty)
            {
                cmd = new SqlCommand("sp_ProductLabel_Create", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ProductName", txtProductName.Text);
                cmd.Parameters.AddWithValue("@BatchNo", txtBatchNo.Text);
                cmd.Parameters.AddWithValue("@MfgDate", Convert.ToDateTime(mfxDateTime.Text));
                cmd.Parameters.AddWithValue("@ExpDate", Convert.ToDateTime(expDateTime.Text));
                cmd.Parameters.AddWithValue("@PackQuantity", Convert.ToDecimal(txtPackQuantity.Text));
                cmd.Parameters.AddWithValue("@PackedBy", DisplayUser.User_Id);
                cmd.Parameters.AddWithValue("@SrNo", txtSrNo.Text);
                cmd.Parameters.AddWithValue("@StorageCondition", txtStorageCondition.Text);
                cmd.ExecuteNonQuery();
                MessageBox.Show("New Label Saved Successfully.", "Record Saved", MessageBoxButtons.OK, MessageBoxIcon.Information);
                 GetAllProductLabel();
                txtProductName.Text = "";
                txtBatchNo.Text = "";
                mfxDateTime.Text = "";
                expDateTime.Text = "";
                txtPackQuantity.Text = "";
                txtSrNo.Text = "";
                txtStorageCondition.Text = "";
            }
            else
            {
                MessageBox.Show("Please enter value in all fields", "Invalid Data", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }


        }

        private void GetAllProductLabel()
        {
            cmd = new SqlCommand("ProductLabel_GetAll", cn);
            da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dgProductLabel.DataSource = dt;
            dgProductLabel.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
        }

        private void dgProductLabel_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

            txtProductID.Text = dgProductLabel.Rows[e.RowIndex].Cells[0].Value.ToString();
            txtProductName.Text = dgProductLabel.Rows[e.RowIndex].Cells[1].Value.ToString();
            txtBatchNo.Text = dgProductLabel.Rows[e.RowIndex].Cells[2].Value.ToString();

            mfxDateTime.Text = dgProductLabel.Rows[e.RowIndex].Cells[3].Value.ToString();
            expDateTime.Text = dgProductLabel.Rows[e.RowIndex].Cells[4].Value.ToString();

            txtPackQuantity.Text = dgProductLabel.Rows[e.RowIndex].Cells[5].Value.ToString();
            txtSrNo.Text = dgProductLabel.Rows[e.RowIndex].Cells[6].Value.ToString();

            txtStorageCondition.Text = dgProductLabel.Rows[e.RowIndex].Cells[7].Value.ToString();
           
        }

        private void btnPrintProductLabel_Click(object sender, EventArgs e)
        {
            try
            {
                SavePrintedProductLabel();

                if (txtProductID.Text != string.Empty)
                {
                    SqlCommand cmmd = new SqlCommand("spProductLabel_GetByProductLabelId", cn);
                    cmmd.CommandType = CommandType.StoredProcedure;

                    cmmd.Parameters.AddWithValue("@ProductLabelId", Convert.ToInt32(txtProductID.Text));
                    SqlDataReader dr = cmmd.ExecuteReader();
                    LabelPrintForm ff = new LabelPrintForm(dr);
                    ff.ShowDialog();
                    dr.Close();
                }
                else
                {
                    MessageBox.Show("Please Select Data From List", "Empty Field Clicked", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch (Exception)
            {

                throw;
            }
            

           
                
        }

        private void SavePrintedProductLabel()
        {
            if (txtProductID.Text != string.Empty)
            {
                cmd = new SqlCommand("sp_ProductLabelPrintList_Create", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ProductLabelId", Convert.ToInt32(txtProductID.Text));
                cmd.ExecuteNonQuery();
            }
            else
            {
                //MessageBox.Show("Please Select Data From List", "Empty Field Clicked", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }

        }

        private void btnPrintedProductList_Click(object sender, EventArgs e)
        {
            this.Hide();
            PrintedProductList ppl = new PrintedProductList();
            ppl.ShowDialog();
        }

        private void dgProductLabel_CellContentDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            txtProductID.Text = dgProductLabel.Rows[e.RowIndex].Cells[0].Value.ToString();
            txtProductName.Text = dgProductLabel.Rows[e.RowIndex].Cells[1].Value.ToString();
            txtBatchNo.Text = dgProductLabel.Rows[e.RowIndex].Cells[2].Value.ToString();

            mfxDateTime.Text = dgProductLabel.Rows[e.RowIndex].Cells[3].Value.ToString();
            expDateTime.Text = dgProductLabel.Rows[e.RowIndex].Cells[4].Value.ToString();

            txtPackQuantity.Text = dgProductLabel.Rows[e.RowIndex].Cells[5].Value.ToString();
            txtSrNo.Text = dgProductLabel.Rows[e.RowIndex].Cells[6].Value.ToString();

            txtStorageCondition.Text = dgProductLabel.Rows[e.RowIndex].Cells[7].Value.ToString();
        }

        private void btnLogout_Click(object sender, EventArgs e)
        {
            this.Hide();
            LoginForm lf=new LoginForm();
            lf.ShowDialog();
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            txtProductName.Text = "";
            txtBatchNo.Text = "";
            mfxDateTime.Text = DateTime.Now.ToString();
            expDateTime.Text = DateTime.Now.ToString();
            txtPackQuantity.Text = "";
            txtSrNo.Text = "";
            txtStorageCondition.Text = "";
            txtProductID.Text = string.Empty;
        }
    }
    
 
}
