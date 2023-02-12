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

namespace LabelPrint
{
    public partial class LoginForm : Form
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataAdapter da;
        SqlDataReader dr;
        //public static string displayUser = string.Empty;

        private void LoginForm_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection(@"Data Source=DESKTOP-03VU7SV;Initial Catalog=LabelPrintDB; User ID=sa; Password=Belal@1234;");
            cn.Open();
        }

        public LoginForm()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {

            if (txtUserName.Text != string.Empty || txtPassword.Text != string.Empty)
            {

                cmd = new SqlCommand("sp_GetUserByUserNameAndPassword", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserName", txtUserName.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    DisplayUser.User_Name = dr["UserName"].ToString();
                    DisplayUser.Display_Name = dr["DisplayName"].ToString();
                    DisplayUser.User_Id =Convert.ToInt32(dr["UserId"]);

                    dr.Close();
                    this.Hide();
                    ProductLabel prodLabel = new ProductLabel();
                    //prodLabel.Show();
                   prodLabel.ShowDialog();
                }
                else
                {
                    dr.Close();
                    MessageBox.Show("No Account avilable with this username and password ", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }

            }
            else
            {
                MessageBox.Show("Please enter value in all field.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

    
        }

       
    }
}
