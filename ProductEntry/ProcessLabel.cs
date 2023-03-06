using LabelPrint.MasterPage;
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
            GetAllFormVersion();
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
            if (btnProcessLabelSave.Text == "Save")
            {
                if (txtBoxPLProductName.Text != string.Empty && txtBoxPLBatchNo.Text != string.Empty && txtBoxPLBatchSize.Text != string.Empty)
                {
                    cmd = new SqlCommand("tbl_ProcessLabel_CreateOrUpdate", cn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ProcessLabelId", ProcessLabelId);
                    cmd.Parameters.AddWithValue("@FormVersionId", comBoxPLFormVersion.SelectedValue);
                    cmd.Parameters.AddWithValue("@ProductName", txtBoxPLProductName.Text);
                    cmd.Parameters.AddWithValue("@BatchNo", txtBoxPLBatchNo.Text);
                    cmd.Parameters.AddWithValue("@BatchSize", txtBoxPLBatchSize.Text);
                    cmd.Parameters.AddWithValue("@Status", txtBoxPLStatus.Text);
                    cmd.Parameters.AddWithValue("@MfgDate", Convert.ToDateTime(txtBoxPLmfxDateTime.Text));
                    cmd.Parameters.AddWithValue("@ExpDate", Convert.ToDateTime(txtBoxPLexpDateTime.Text));
                    cmd.Parameters.AddWithValue("@ContNo", txtBoxPLContainerNo.Text);
                    cmd.Parameters.AddWithValue("@GrossWt", txtBoxPLGrossWt.Text);
                    cmd.Parameters.AddWithValue("@TareWt", txtBoxPLTareWt.Text);
                    cmd.Parameters.AddWithValue("@NetWt", txtBoxPLNetWt.Text);
                    cmd.Parameters.AddWithValue("@CheckedBy", DisplayUser.User_Id);
                    cmd.Parameters.AddWithValue("@CheckedDate", Convert.ToDateTime(txtBoxPLCheckedDate.Text));         
                    cmd.Parameters.AddWithValue("@UpdatorId", DisplayUser.User_Id);

                    cmd.ExecuteNonQuery();
                    MessageBox.Show("New Process Label Saved Successfully.", "Record Saved", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    GetAllProcessLabel();
                    ClearAll();
                }
                else
                {
                    MessageBox.Show("Please enter value in all fields", "Invalid Data", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else
            {
                if (txtBoxPLProductName.Text != string.Empty && txtBoxProcessLabelID.Text != string.Empty)
                {
                    cmd = new SqlCommand("tbl_ProcessLabel_CreateOrUpdate", cn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ProcessLabelId", Convert.ToInt32(txtBoxProcessLabelID.Text));
                    cmd.Parameters.AddWithValue("@FormVersionId", comBoxPLFormVersion.SelectedValue);
                    cmd.Parameters.AddWithValue("@ProductName", txtBoxPLProductName.Text);
                    cmd.Parameters.AddWithValue("@BatchNo", txtBoxPLBatchNo.Text);
                    cmd.Parameters.AddWithValue("@BatchSize", txtBoxPLBatchSize.Text);
                    cmd.Parameters.AddWithValue("@Status", txtBoxPLStatus.Text);
                    cmd.Parameters.AddWithValue("@MfgDate", Convert.ToDateTime(txtBoxPLmfxDateTime.Text));
                    cmd.Parameters.AddWithValue("@ExpDate", Convert.ToDateTime(txtBoxPLexpDateTime.Text));
                    cmd.Parameters.AddWithValue("@ContNo", txtBoxPLContainerNo.Text);
                    cmd.Parameters.AddWithValue("@GrossWt", txtBoxPLGrossWt.Text);
                    cmd.Parameters.AddWithValue("@TareWt", txtBoxPLTareWt.Text);
                    cmd.Parameters.AddWithValue("@NetWt", txtBoxPLNetWt.Text);
                    cmd.Parameters.AddWithValue("@CheckedBy", DisplayUser.User_Id);
                    cmd.Parameters.AddWithValue("@CheckedDate", Convert.ToDateTime(txtBoxPLCheckedDate.Text));
                    cmd.Parameters.AddWithValue("@UpdatorId", DisplayUser.User_Id);

                    cmd.ExecuteNonQuery();
                    MessageBox.Show(" Process Label UPdated Successfully.", "Record Saved", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    GetAllProcessLabel();
                    ClearAll();
                }
                else
                {
                    MessageBox.Show("Please enter Correct fields", "Invalid Data", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }


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
            comBoxPLFormVersion.DataSource = dt;
            comBoxPLFormVersion.DisplayMember = "FormVersion";
            comBoxPLFormVersion.ValueMember = "FormVersionId";
        }

        private void ClearAll()
        {
            comBoxPLFormVersion.SelectedValue= 0;
            txtBoxPLProductName.Text = "";
            txtBoxPLBatchNo.Text = "";
            txtBoxPLBatchSize.Text = "";
            txtBoxPLStatus.Text = "";
            txtBoxPLmfxDateTime.Text = DateTime.Now.ToString();
            txtBoxPLexpDateTime.Text = DateTime.Now.ToString();
            txtBoxPLContainerNo.Text = "";
            txtBoxPLGrossWt.Text = "";
            txtBoxPLTareWt.Text = "";
            txtBoxPLNetWt.Text = "";
            txtBoxPLCheckedDate.Text = DateTime.Now.ToString();
            btnProcessLabelSave.Text = "Save";

        }

        private void btnNewPLFormVersionPopup_Click(object sender, EventArgs e)
        {
            FormVersionEntry nFV = new FormVersionEntry();
            nFV.ShowDialog();
        }

        private void dgProcessLabel_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex < 0)
            {
                return;
            }

            dgProcessLabel.SelectionMode = DataGridViewSelectionMode.FullRowSelect;

            txtBoxProcessLabelID.Text = dgProcessLabel.Rows[e.RowIndex].Cells[1].Value.ToString();
            txtBoxPLProductName.Text = dgProcessLabel.Rows[e.RowIndex].Cells[2].Value.ToString();
            txtBoxPLBatchNo.Text = dgProcessLabel.Rows[e.RowIndex].Cells[3].Value.ToString();
            txtBoxPLBatchSize.Text = dgProcessLabel.Rows[e.RowIndex].Cells[4].Value.ToString();
            txtBoxPLStatus.Text = dgProcessLabel.Rows[e.RowIndex].Cells[5].Value.ToString();

            txtBoxPLmfxDateTime.Text = dgProcessLabel.Rows[e.RowIndex].Cells[6].Value.ToString();
            txtBoxPLexpDateTime.Text = dgProcessLabel.Rows[e.RowIndex].Cells[7].Value.ToString();
       

            txtBoxPLContainerNo.Text = dgProcessLabel.Rows[e.RowIndex].Cells[8].Value.ToString();
            txtBoxPLGrossWt.Text = dgProcessLabel.Rows[e.RowIndex].Cells[9].Value.ToString();
            txtBoxPLTareWt.Text = dgProcessLabel.Rows[e.RowIndex].Cells[10].Value.ToString();
            txtBoxPLNetWt.Text = dgProcessLabel.Rows[e.RowIndex].Cells[11].Value.ToString();

            comBoxPLFormVersion.SelectedValue = dgProcessLabel.Rows[e.RowIndex].Cells[12].Value.ToString();


            btnProcessLabelSave.Text = "Update";


        }

        private void dgProcessLabel_CellContentDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex < 0)
            {
                return;
            }

            dgProcessLabel.SelectionMode = DataGridViewSelectionMode.FullRowSelect;

            txtBoxProcessLabelID.Text = dgProcessLabel.Rows[e.RowIndex].Cells[1].Value.ToString();
            txtBoxPLProductName.Text = dgProcessLabel.Rows[e.RowIndex].Cells[2].Value.ToString();
            txtBoxPLBatchNo.Text = dgProcessLabel.Rows[e.RowIndex].Cells[3].Value.ToString();
            txtBoxPLBatchSize.Text = dgProcessLabel.Rows[e.RowIndex].Cells[4].Value.ToString();
            txtBoxPLStatus.Text = dgProcessLabel.Rows[e.RowIndex].Cells[5].Value.ToString();

            txtBoxPLmfxDateTime.Text = dgProcessLabel.Rows[e.RowIndex].Cells[6].Value.ToString();
            txtBoxPLexpDateTime.Text = dgProcessLabel.Rows[e.RowIndex].Cells[7].Value.ToString();


            txtBoxPLContainerNo.Text = dgProcessLabel.Rows[e.RowIndex].Cells[8].Value.ToString();
            txtBoxPLGrossWt.Text = dgProcessLabel.Rows[e.RowIndex].Cells[9].Value.ToString();
            txtBoxPLTareWt.Text = dgProcessLabel.Rows[e.RowIndex].Cells[10].Value.ToString();
            txtBoxPLNetWt.Text = dgProcessLabel.Rows[e.RowIndex].Cells[11].Value.ToString();

            comBoxPLFormVersion.SelectedValue = dgProcessLabel.Rows[e.RowIndex].Cells[12].Value.ToString();


            btnProcessLabelSave.Text = "Update";
        }

        private void btnProcessLabelClear_Click(object sender, EventArgs e)
        {
            ClearAll();
        }

        private void btnPrintProcessLabel_Click(object sender, EventArgs e)
        {
            try
            {
                SavePrintedProcessLabel();

                if (txtBoxProcessLabelID.Text != string.Empty)
                {
                    SqlCommand cmmd = new SqlCommand("tbl_ProcessLabel_GetByPLIdForPrint", cn);
                    cmmd.CommandType = CommandType.StoredProcedure;

                    cmmd.Parameters.AddWithValue("@ProcessLabelId", Convert.ToInt32(txtBoxProcessLabelID.Text));
                    SqlDataReader dr = cmmd.ExecuteReader();
                    LabelPrintForm ff = new LabelPrintForm(dr, "Process_Label");
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

        private void SavePrintedProcessLabel()
        {
            if (txtBoxProcessLabelID.Text != string.Empty)
            {
                cmd = new SqlCommand("tbl_ProcessLabelPrintList_Create", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ProcessLabelId", Convert.ToInt32(txtBoxProcessLabelID.Text));
                cmd.ExecuteNonQuery();
            }
            else
            {
                MessageBox.Show("Something Wrong With Printed Data", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }
    }
}
