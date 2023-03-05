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

namespace LabelPrint
{
    public partial class PrintedProductList : Form
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataAdapter da;
        SqlDataReader dr;
        string con = ConfigurationManager.ConnectionStrings["LabelPrint.Properties.Settings.LabelPrintDBConnectionString"].ConnectionString;

        public PrintedProductList()
        {
            InitializeComponent();
        }

        private void PrintedProductList_Load(object sender, EventArgs e)
        {
            //cn = new SqlConnection(@"Data Source=DESKTOP-GFBVDG9;Initial Catalog=LabelPrintDB; User ID=sa; Password=Belal@123;");
            cn = new SqlConnection(con);
            cn.Open();
            //bind data in data grid view  
            GetAllPrintedProductLabel();
            GetAllUser();

        }

        private void GetAllPrintedProductLabel()
        {
            cmd = new SqlCommand("sp_ProductLabelPrintList_GetByUserId", cn);

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserId", DisplayUser.User_Id);
            da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;
            dataGridView1.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
        }

        private void btnBack_Click(object sender, EventArgs e)
        {
            this.Hide();
            ProductLabel pl = new ProductLabel();
            pl.ShowDialog();

        }

        private void btnLogout_Click(object sender, EventArgs e)
        {
            this.Hide();
            LoginForm lf=new LoginForm();
            lf.ShowDialog();
           
        }

        private void btnBack_Click_1(object sender, EventArgs e)
        {
            this.Hide();
            ProductLabel pl = new ProductLabel();
            pl.ShowDialog();
        }

        private void btnLogout_Click_1(object sender, EventArgs e)
        {
            this.Hide();
            LoginForm lf = new LoginForm();
            lf.ShowDialog();
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(comboBoxUser.SelectedValue) != 0)
            {
                cmd = new SqlCommand("sp_PrintedListByUserOrDateRange", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PrintById", Convert.ToInt32(comboBoxUser.SelectedValue));

                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                dataGridView1.DataSource = dt;
                dataGridView1.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            }
            else if (Convert.ToInt32(comboBoxUser.SelectedValue) != 0 && txtFromDate.Text != string.Empty && txtToDate.Text != string.Empty)
            {
                cmd = new SqlCommand("sp_PrintedListByUserOrDateRange", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PrintById", Convert.ToInt32(comboBoxUser.SelectedValue));
                cmd.Parameters.AddWithValue("@FromDate", Convert.ToDateTime(txtFromDate.Text));
                cmd.Parameters.AddWithValue("@ToDate", Convert.ToDateTime(txtToDate.Text));

                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                dataGridView1.DataSource = dt;
                dataGridView1.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            }
            else if (Convert.ToInt32(comboBoxUser.SelectedValue) == 0 && txtFromDate.Text != string.Empty && txtToDate.Text != string.Empty)
            {
                cmd = new SqlCommand("sp_PrintedListByUserOrDateRange", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@FromDate", Convert.ToDateTime(txtFromDate.Text));
                cmd.Parameters.AddWithValue("@ToDate", Convert.ToDateTime(txtToDate.Text));

                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                dataGridView1.DataSource = dt;
                dataGridView1.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            }
            else
            {
                MessageBox.Show("Criteria Not Matched", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }


        private void GetAllUser()
        {
            cmd = new SqlCommand("sp_GetAllUser", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserId", DisplayUser.User_Id);
            da = new SqlDataAdapter(cmd);
            //Fill the DataTable with records from Table.
            DataTable dt = new DataTable();
            da.Fill(dt);

            //Insert the Default Item to DataTable.
            DataRow row = dt.NewRow();
            row[0] = 0;
            row[1] = "Please select";
            dt.Rows.InsertAt(row, 0);

            //Assign DataTable as DataSource.
            comboBoxUser.DataSource = dt;
            comboBoxUser.DisplayMember = "DisplayName";
            comboBoxUser.ValueMember = "UserId";
        }
    }
}
