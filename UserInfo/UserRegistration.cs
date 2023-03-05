using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;

namespace LabelPrint.UserInfo
{
    public partial class UserRegistration : Form
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataAdapter da;
        SqlDataReader dr;
        public static int UserId = 0;

        string con = ConfigurationManager.ConnectionStrings["LabelPrint.Properties.Settings.LabelPrintDBConnectionString"].ConnectionString;


        public UserRegistration()
        {
            InitializeComponent();
        }
        private void UserRegistration_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection(con);
            cn.Open();
            txtBoxPassword.PasswordChar = '*';
            txtBoxConfirmPassword.PasswordChar = '*';
            ClearAll();
            GetAllUser();
        }

        private void btnToLoginRender_Click(object sender, EventArgs e)
        {
            this.Hide();
            LoginForm lf=new LoginForm();
            lf.ShowDialog();
        }

        private void btnUserRegistration_Click(object sender, EventArgs e)
        {

            if (btnUserRegistration.Text == "Register")
            {

                if (txtBoxConfirmPassword.Text != string.Empty && txtBoxPassword.Text != string.Empty && Regex.Replace(txtBoxUserName.Text, " ", "") != string.Empty)
                {
                    if (txtBoxPassword.Text == txtBoxConfirmPassword.Text)
                    {
                        cmd = new SqlCommand("select * from tbl_User where UserName='" + Regex.Replace(txtBoxUserName.Text, " ", "") + "'", cn);
                        dr = cmd.ExecuteReader();
                        if (dr.Read())
                        {
                            dr.Close();
                            MessageBox.Show("User Name Already exist please try another ", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                        else
                        {
                            dr.Close();
                            cmd = new SqlCommand("tbl_User_Registration_CreateOrUpdate", cn);
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@UserName", txtBoxUserName.Text);
                            cmd.Parameters.AddWithValue("@DisplayName", txtBoxFullName.Text);
                            cmd.Parameters.AddWithValue("@Password", txtBoxPassword.Text);
                            cmd.Parameters.AddWithValue("@Email", txtBoxEmail.Text);
                            cmd.Parameters.AddWithValue("@Phone", txtBoxPhoneNumber.Text);
                            cmd.Parameters.AddWithValue("@UserId", UserId);
                            cmd.ExecuteNonQuery();
                            GetAllUser();
                            ClearAll();
                            //DialogResult result = MessageBox.Show("Do You Want to Login Now?", "Login", MessageBoxButtons.OKCancel, MessageBoxIcon.Information);
                            //if (result.Equals(DialogResult.OK))
                            //{
                            //    this.Hide();
                            //    LoginForm lf=new LoginForm();
                            //    lf.ShowDialog();
                            //}
                            //else
                            //{
                            MessageBox.Show("User Account is created Successfully!!!", "Done", MessageBoxButtons.OK, MessageBoxIcon.Information);

                            // }



                        }
                    }
                    else
                    {
                        MessageBox.Show("Please enter both password same ", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                else
                {
                    MessageBox.Show("Please enter value in all field.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else
            {
                if (txtBoxPassword.Text == txtBoxConfirmPassword.Text && Regex.Replace(txtBoxUserName.Text, " ", "") != string.Empty)
                {
                    //cmd = new SqlCommand("select * from tbl_User where UserName='" + Regex.Replace(txtBoxUserName.Text, " ", "") + "'", cn);
                    //dr = cmd.ExecuteReader();
                    //if (dr.Read())
                    //{
                    //    dr.Close();
                    //    MessageBox.Show("User Name Already exist please try another ", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    //}
                    //else
                    //{
                    //    dr.Close();
                        cmd = new SqlCommand("tbl_User_Registration_CreateOrUpdate", cn);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@UserName", txtBoxUserName.Text);
                        cmd.Parameters.AddWithValue("@DisplayName", txtBoxFullName.Text);
                        cmd.Parameters.AddWithValue("@Password", txtBoxPassword.Text);
                        cmd.Parameters.AddWithValue("@Email", txtBoxEmail.Text);
                        cmd.Parameters.AddWithValue("@Phone", txtBoxPhoneNumber.Text);
                        cmd.Parameters.AddWithValue("@UserId", Convert.ToInt32(txtBoxUserId.Text));
                        cmd.ExecuteNonQuery();
                        GetAllUser();
                        ClearAll();
                        //DialogResult result = MessageBox.Show("Do You Want to Login Now?", "Login", MessageBoxButtons.OKCancel, MessageBoxIcon.Information);
                        //if (result.Equals(DialogResult.OK))
                        //{
                        //    this.Hide();
                        //    LoginForm lf=new LoginForm();
                        //    lf.ShowDialog();
                        //}
                        //else
                        //{
                        MessageBox.Show("User Account is Updated Successfully!!!", "Done", MessageBoxButtons.OK, MessageBoxIcon.Information);

                        // }



                   // }
                }
                else
                {
                    MessageBox.Show("Please enter both password same & Unique User Name", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void btnUserRegistration_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnUserRegistration.PerformClick();
                //TextBox Will Not Cleared If I Use SuppressKeyPress
                e.SuppressKeyPress = true;
                

            }
        }

        private void txtBoxUserName_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                txtBoxEmail.Focus();
                // TextBox Will Not Cleared If I Use SuppressKeyPress
                e.SuppressKeyPress = true;
            }
        }

        private void txtBoxPassword_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                txtBoxConfirmPassword.Focus();
                // TextBox Will Not Cleared If I Use SuppressKeyPress
                e.SuppressKeyPress = true;
            }
        }

        private void txtBoxConfirmPassword_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnUserRegistration.Focus();
                // TextBox Will Not Cleared If I Use SuppressKeyPress
                e.SuppressKeyPress = true;
            }
        }

        private void txtBoxFullName_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                txtBoxUserName.Focus();
                // TextBox Will Not Cleared If I Use SuppressKeyPress
                e.SuppressKeyPress = true;
            }
        }

        private void txtBoxEmail_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                txtBoxPhoneNumber.Focus();
                // TextBox Will Not Cleared If I Use SuppressKeyPress
                e.SuppressKeyPress = true;
            }
        }

        private void txtBoxPhoneNumber_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                txtBoxPassword.Focus();
                // TextBox Will Not Cleared If I Use SuppressKeyPress
                e.SuppressKeyPress = true;
            }
        }

        private void btnClearUserData_Click(object sender, EventArgs e)
        {
            ClearAll();

        }
        private void ClearAll()
        {
            txtBoxUserName.Text = "";
            txtBoxFullName.Text = "";
            txtBoxEmail.Text = "";
            txtBoxPhoneNumber.Text = "";
            txtBoxPassword.Text = "";
            txtBoxConfirmPassword.Text = "";
            btnUserRegistration.Text = "Register";
            btnDeleteUser.Visible = false;
        }

        private void GetAllUser()
        {
            cmd = new SqlCommand("tbl_User_GetAll", cn);
            da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dgUserRegistration.DataSource = dt;
            dgUserRegistration.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            this.dgUserRegistration.Columns["UserId"].Visible = false;
            this.dgUserRegistration.Columns["RoleId"].Visible = false;
        }

        private void dgUserRegistration_CellContentDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex < 0)
            {
                return;
            }
            txtBoxUserId.Text = dgUserRegistration.Rows[e.RowIndex].Cells[1].Value.ToString();
            txtBoxUserName.Text = dgUserRegistration.Rows[e.RowIndex].Cells[3].Value.ToString();
            txtBoxFullName.Text = dgUserRegistration.Rows[e.RowIndex].Cells[4].Value.ToString();

            txtBoxEmail.Text = dgUserRegistration.Rows[e.RowIndex].Cells[5].Value.ToString();
            txtBoxPhoneNumber.Text = dgUserRegistration.Rows[e.RowIndex].Cells[6].Value.ToString();

            txtBoxPassword.Text = dgUserRegistration.Rows[e.RowIndex].Cells[7].Value.ToString();
            txtBoxConfirmPassword.Text = dgUserRegistration.Rows[e.RowIndex].Cells[7].Value.ToString();

            //txtBoxUserId.Text=
            btnUserRegistration.Text = "Update";
            btnDeleteUser.Visible = true;
            dgUserRegistration.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
        }

        private void dgUserRegistration_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex < 0)
            {
                return;
            }
            txtBoxUserId.Text = dgUserRegistration.Rows[e.RowIndex].Cells[1].Value.ToString();
            txtBoxUserName.Text = dgUserRegistration.Rows[e.RowIndex].Cells[3].Value.ToString();
            txtBoxFullName.Text = dgUserRegistration.Rows[e.RowIndex].Cells[4].Value.ToString();

            txtBoxEmail.Text = dgUserRegistration.Rows[e.RowIndex].Cells[5].Value.ToString();
            txtBoxPhoneNumber.Text = dgUserRegistration.Rows[e.RowIndex].Cells[6].Value.ToString();

            txtBoxPassword.Text = dgUserRegistration.Rows[e.RowIndex].Cells[7].Value.ToString();
            txtBoxConfirmPassword.Text = dgUserRegistration.Rows[e.RowIndex].Cells[7].Value.ToString();

            btnUserRegistration.Text = "Update";
            btnDeleteUser.Visible = true;

            dgUserRegistration.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
        }

        private void btnDeleteUser_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Are you Confirm to delete this User?", "Delete", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
            if (result.Equals(DialogResult.OK))
            {
                cmd = new SqlCommand("tbl_User_DeleteUserByUserId", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserId", Convert.ToInt32(txtBoxUserId.Text));
                cmd.ExecuteNonQuery();
                GetAllUser();
                ClearAll();
            }

           
        }
    }
}
