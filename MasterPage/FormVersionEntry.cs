using LabelPrint.UserInfo;
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
        public static int FormVersionId = 0;
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
            GetAllFormVersion();
        }

        private void btnFormVersionSave_Click(object sender, EventArgs e)
        {
            if (btnFormVersionSave.Text == "Save")
            {

                if (Convert.ToInt32(comBoxFormTemplate.SelectedValue) != 0 && txtBoxFormNo.Text != string.Empty && txtBoxVersionNo.Text != string.Empty)
                {
                    cmd = new SqlCommand("tbl_FormTemplateVersion_CreateOrUpdate", cn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@FormVersionId", FormVersionId);
                    cmd.Parameters.AddWithValue("@FormTemplateId", comBoxFormTemplate.SelectedValue);
                    cmd.Parameters.AddWithValue("@FormNo", txtBoxFormNo.Text);
                    cmd.Parameters.AddWithValue("@VersionNo", txtBoxVersionNo.Text);
                    cmd.Parameters.AddWithValue("@UpdatorId", DisplayUser.User_Id);
                    cmd.ExecuteNonQuery();
                    ClearAll();
                    MessageBox.Show("New Form Version Saved Successfully.", "Record Saved", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    GetAllFormVersion();

                }
                else
                {
                    MessageBox.Show("Please enter value in all fields", "Invalid Data", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            else
            {
                if (Convert.ToInt32(comBoxFormTemplate.SelectedValue) != 0 && txtBoxFormNo.Text != string.Empty && txtBoxVersionNo.Text != string.Empty)
                {
                    cmd = new SqlCommand("tbl_FormTemplateVersion_CreateOrUpdate", cn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@FormTemplateId", comBoxFormTemplate.SelectedValue);
                    cmd.Parameters.AddWithValue("@FormNo", txtBoxFormNo.Text);
                    cmd.Parameters.AddWithValue("@VersionNo", txtBoxVersionNo.Text);
                    cmd.Parameters.AddWithValue("@FormVersionId", Convert.ToInt32(txtBoxFormVersionID.Text));
                    cmd.Parameters.AddWithValue("@UpdatorId", DisplayUser.User_Id);
                    cmd.ExecuteNonQuery();
                    ClearAll();
                    MessageBox.Show("New Form Version Updated Successfully.", "Record Updated", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    GetAllFormVersion();

                }
                else
                {
                    MessageBox.Show("Please enter value in all fields", "Invalid Data", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
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

        private void GetAllFormVersion()
        {
            cmd = new SqlCommand("tbl_FormTemplateVersion_GetAll", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dgFormVersion.DataSource = dt;
            dgFormVersion.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            this.dgFormVersion.Columns["FormVersionId"].Visible = false;
            this.dgFormVersion.Columns["FormTemplateId"].Visible = false;
        }



        private void ClearAll()
        {
            comBoxFormTemplate.SelectedValue = 0;
            txtBoxVersionNo.Text = "";
            txtBoxFormNo.Text = "";
            btnFormVersionSave.Text = "Save";
            txtBoxFormVersionID.Text = "";
        }

        private void dgFormVersion_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex < 0)
            {
                return;
            }
            txtBoxFormVersionID.Text = dgFormVersion.Rows[e.RowIndex].Cells[1].Value.ToString();
            txtBoxFormNo.Text = dgFormVersion.Rows[e.RowIndex].Cells[3].Value.ToString();
            txtBoxVersionNo.Text = dgFormVersion.Rows[e.RowIndex].Cells[4].Value.ToString(); 
            comBoxFormTemplate.SelectedValue = dgFormVersion.Rows[e.RowIndex].Cells[5].Value.ToString();
            btnFormVersionSave.Text = "Update";
            dgFormVersion.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
        }

        private void btnFormVersionClear_Click(object sender, EventArgs e)
        {
            ClearAll();
        }

        private void dgFormVersion_CellContentDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex < 0)
            {
                return;
            }
            txtBoxFormVersionID.Text = dgFormVersion.Rows[e.RowIndex].Cells[1].Value.ToString();
            txtBoxFormNo.Text = dgFormVersion.Rows[e.RowIndex].Cells[3].Value.ToString();
            txtBoxVersionNo.Text = dgFormVersion.Rows[e.RowIndex].Cells[4].Value.ToString();
            comBoxFormTemplate.SelectedValue = dgFormVersion.Rows[e.RowIndex].Cells[5].Value.ToString();
            btnFormVersionSave.Text = "Update";

            dgFormVersion.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
        }
    }
}
