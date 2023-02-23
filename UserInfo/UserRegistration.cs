﻿using System;
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
        //public static string displayUser = string.Empty;
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
        }

        private void btnToLoginRender_Click(object sender, EventArgs e)
        {
            this.Hide();
            LoginForm lf=new LoginForm();
            lf.ShowDialog();
        }

        private void btnUserRegistration_Click(object sender, EventArgs e)
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
                        cmd = new SqlCommand("tbl_User_Registration_Create", cn);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@UserName", txtBoxUserName.Text);
                        cmd.Parameters.AddWithValue("@DisplayName", txtBoxFullName.Text);
                        cmd.Parameters.AddWithValue("@Password", txtBoxPassword.Text);
                        cmd.Parameters.AddWithValue("@Email", txtBoxEmail.Text);
                        cmd.Parameters.AddWithValue("@Phone", txtBoxPhoneNumber.Text);
                        cmd.ExecuteNonQuery();

                        DialogResult result = MessageBox.Show("Do You Want to Login Now?", "Login", MessageBoxButtons.OKCancel, MessageBoxIcon.Information);
                        if (result.Equals(DialogResult.OK))
                        {
                            this.Hide();
                            LoginForm lf=new LoginForm();
                            lf.ShowDialog();
                        }
                        else
                        {
                            MessageBox.Show("Your Account is created. You can login now.", "Done", MessageBoxButtons.OK, MessageBoxIcon.Information);

                        }

                        txtBoxUserName.Text = "";
                        txtBoxFullName.Text = "";
                        txtBoxEmail.Text = "";
                        txtBoxPhoneNumber.Text = "";
                        txtBoxPhoneNumber.Text = "";
                        txtBoxConfirmPassword.Text = "";

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
                //txtBoxConfirmPassword.Focus();
                // TextBox Will Not Cleared If I Use SuppressKeyPress
                e.SuppressKeyPress = true;
            }
        }
    }
}
