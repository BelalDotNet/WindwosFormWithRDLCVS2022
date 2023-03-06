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
using LabelPrint.MasterPage;

namespace LabelPrint
{
    public partial class ProductLabel : Form
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataAdapter da;
        SqlDataReader dr;
        public static int ProducLabelId = 0;
        //string con = ConfigurationManager.ConnectionStrings["DBCon"].ConnectionString;
        string con = ConfigurationManager.ConnectionStrings["LabelPrint.Properties.Settings.LabelPrintDBConnectionString"].ConnectionString;

        private void ProductLabel_Load(object sender, EventArgs e)
        {
            //cn = new SqlConnection(@"Data Source=DESKTOP-GFBVDG9;Initial Catalog=LabelPrintDB; User ID=sa; Password=Belal@123;");
            cn = new SqlConnection(con);

            cn.Open();
            //bind data in data grid view  
            GetAllProductLabel();
            GetAllFormVersion();
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

            if (btnProductLabelSave.Text=="Save")
            {
                if (txtProductName.Text != string.Empty && txtBatchNo.Text != string.Empty)
                {
                    cmd = new SqlCommand("sp_ProductLabel_CreateOrUpdate", cn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ProductLabelId", ProducLabelId);
                    cmd.Parameters.AddWithValue("@FormVersionId", comBoxFormVersion.SelectedValue);
                    cmd.Parameters.AddWithValue("@ProductName", txtProductName.Text);
                    cmd.Parameters.AddWithValue("@BatchNo", txtBatchNo.Text);
                    cmd.Parameters.AddWithValue("@MfgDate", Convert.ToDateTime(mfxDateTime.Text));
                    cmd.Parameters.AddWithValue("@ExpDate", Convert.ToDateTime(expDateTime.Text));
                    cmd.Parameters.AddWithValue("@PackQuantity", txtPackQuantity.Text);
                    cmd.Parameters.AddWithValue("@PackedBy", DisplayUser.User_Id);
                    cmd.Parameters.AddWithValue("@SrNo", txtSrNo.Text);
                    cmd.Parameters.AddWithValue("@StorageCondition", txtStorageCondition.Text);
                    cmd.Parameters.AddWithValue("@UpdatorId", DisplayUser.User_Id);

                    cmd.ExecuteNonQuery();
                    MessageBox.Show("New Product Label Saved Successfully.", "Record Saved", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    GetAllProductLabel();
                    ClearAll();
                }
                else
                {
                    MessageBox.Show("Please enter value in all fields", "Invalid Data", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            else
            {
                if (txtProductName.Text != string.Empty && txtBatchNo.Text != string.Empty)
                {
                    cmd = new SqlCommand("sp_ProductLabel_CreateOrUpdate", cn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ProductLabelId", Convert.ToInt32(txtProductID.Text));
                    cmd.Parameters.AddWithValue("@FormVersionId", comBoxFormVersion.SelectedValue);
                    cmd.Parameters.AddWithValue("@ProductName", txtProductName.Text);
                    cmd.Parameters.AddWithValue("@BatchNo", txtBatchNo.Text);
                    cmd.Parameters.AddWithValue("@MfgDate", Convert.ToDateTime(mfxDateTime.Text));
                    cmd.Parameters.AddWithValue("@ExpDate", Convert.ToDateTime(expDateTime.Text));
                    cmd.Parameters.AddWithValue("@PackQuantity", txtPackQuantity.Text);
                    cmd.Parameters.AddWithValue("@PackedBy", DisplayUser.User_Id);
                    cmd.Parameters.AddWithValue("@SrNo", txtSrNo.Text);
                    cmd.Parameters.AddWithValue("@StorageCondition", txtStorageCondition.Text);
                    cmd.Parameters.AddWithValue("@UpdatorId", DisplayUser.User_Id);

                    cmd.ExecuteNonQuery();
                    MessageBox.Show("Product Label Updated Successfully.", "Record Updated", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    GetAllProductLabel();
                    ClearAll();
                }
                else
                {
                    MessageBox.Show("Please enter value in all fields", "Invalid Data", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }

       


        }

        private void GetAllProductLabel()
        {
            cmd = new SqlCommand("ProductLabel_GetAll", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserId", DisplayUser.User_Id);

            da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dgProductLabel.DataSource = dt;
            dgProductLabel.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            this.dgProductLabel.Columns["ProductLabelId"].Visible = false;
            this.dgProductLabel.Columns["FormVersionId"].Visible = false;
        }

        private void dgProductLabel_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex<0)
            {
                return;
            }         
            txtProductID.Text = dgProductLabel.Rows[e.RowIndex].Cells[1].Value.ToString();
            
            txtProductName.Text = dgProductLabel.Rows[e.RowIndex].Cells[2].Value.ToString();
            txtBatchNo.Text = dgProductLabel.Rows[e.RowIndex].Cells[3].Value.ToString();

            mfxDateTime.Text = dgProductLabel.Rows[e.RowIndex].Cells[4].Value.ToString();
            expDateTime.Text = dgProductLabel.Rows[e.RowIndex].Cells[5].Value.ToString();

            txtPackQuantity.Text = dgProductLabel.Rows[e.RowIndex].Cells[6].Value.ToString();
            txtSrNo.Text = dgProductLabel.Rows[e.RowIndex].Cells[7].Value.ToString();

            txtStorageCondition.Text = dgProductLabel.Rows[e.RowIndex].Cells[8].Value.ToString();

            comBoxFormVersion.SelectedValue = dgProductLabel.Rows[e.RowIndex].Cells[9].Value.ToString();

            btnProductLabelSave.Text = "Update";

            dgProductLabel.SelectionMode = DataGridViewSelectionMode.FullRowSelect;

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
                    LabelPrintForm ff = new LabelPrintForm(dr, "Product_Label");
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
            if (e.RowIndex < 0)
            {
                return;
            }
            txtProductID.Text = dgProductLabel.Rows[e.RowIndex].Cells[1].Value.ToString();
            txtProductName.Text = dgProductLabel.Rows[e.RowIndex].Cells[2].Value.ToString();
            txtBatchNo.Text = dgProductLabel.Rows[e.RowIndex].Cells[3].Value.ToString();

            mfxDateTime.Text = dgProductLabel.Rows[e.RowIndex].Cells[4].Value.ToString();
            expDateTime.Text = dgProductLabel.Rows[e.RowIndex].Cells[5].Value.ToString();

            txtPackQuantity.Text = dgProductLabel.Rows[e.RowIndex].Cells[6].Value.ToString();
            txtSrNo.Text = dgProductLabel.Rows[e.RowIndex].Cells[7].Value.ToString();

            txtStorageCondition.Text = dgProductLabel.Rows[e.RowIndex].Cells[8].Value.ToString();

            comBoxFormVersion.SelectedValue = dgProductLabel.Rows[e.RowIndex].Cells[9].Value.ToString();

            btnProductLabelSave.Text = "Update";


            dgProductLabel.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
        }

        private void btnLogout_Click(object sender, EventArgs e)
        {
            this.Hide();
            LoginForm lf=new LoginForm();
            lf.ShowDialog();
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            ClearAll();
        }

        private void ClearAll()
        {
            txtProductName.Text = "";
            txtBatchNo.Text = "";
            mfxDateTime.Text = DateTime.Now.ToString();
            expDateTime.Text = DateTime.Now.ToString();
            txtPackQuantity.Text = "";
            txtSrNo.Text = "";
            txtStorageCondition.Text = "";
            txtProductID.Text = string.Empty;
            comBoxFormVersion.SelectedValue = 0;
            btnProductLabelSave.Text = "Save";
        }


        private void GetAllFormVersion()
        {
            cmd = new SqlCommand("sp_GetAllFormVersionNo", cn);
            da = new SqlDataAdapter(cmd);
            //////Fill the DataTable with records from Table.
            DataTable dt = new DataTable();
            da.Fill(dt);

            //Insert the Default Item to DataTable.
            DataRow row = dt.NewRow();
            row[0] = 0;
            row[3] = "Please Select Form & Version No";
            dt.Rows.InsertAt(row, 0);

            //Assign DataTable as DataSource.
            comBoxFormVersion.DataSource = dt;
            comBoxFormVersion.DisplayMember = "FormVersion";
            comBoxFormVersion.ValueMember = "FormVersionId";
        }

        private void btnNewFormVersionPopup_Click(object sender, EventArgs e)
        {
            FormVersionEntry nFV=new FormVersionEntry();
            nFV.ShowDialog();
        }
    }
    
 
}
