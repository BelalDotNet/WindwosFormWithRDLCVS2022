using LabelPrint.UserInfo;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LabelPrint.MasterPage
{
    public partial class Label_Home : Form
    {
        public Label_Home()
        {
            InitializeComponent();
        }

        private void btnCross_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnNavLogout_Click(object sender, EventArgs e)
        {
            this.Hide();
            LoginForm lf = new LoginForm();
            lf.ShowDialog();
        }

        private void Label_Home_Load(object sender, EventArgs e)
        {
            lblHomeUserName.Text = DisplayUser.Display_Name;
        }

        private void btnNavProductLabel_Click(object sender, EventArgs e)
        {
            ProductLabel plf = new ProductLabel();
            plf.TopLevel = false;
            panelBottonFooter.Controls.Add(plf);
            plf.BringToFront();
            plf.Show();
        }

        private void btnNavProductReport_Click(object sender, EventArgs e)
        {
            PrintedProductList ppl = new PrintedProductList();
            ppl.TopLevel = false;
            panelBottonFooter.Controls.Add(ppl);
            ppl.BringToFront();
            ppl.Show();
        }

        private void btnHome_Click(object sender, EventArgs e)
        {

            panelBottonFooter.Controls.Clear();
            panelBottonFooter.Controls.Add(panelHomeLogo);


        }

        private void panelLeftSideBar_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panelTopHeader_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void lblHomeUserName_Click(object sender, EventArgs e)
        {

        }

        private void panelUserPicBox_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panelBottonFooter_Paint(object sender, PaintEventArgs e)
        {

        }

        private void lblCompanyName_Click(object sender, EventArgs e)
        {

        }

        private void panelHomeLogo_Paint(object sender, PaintEventArgs e)
        {

        }

        private void btnAddUser_Click(object sender, EventArgs e)
        {
            UserRegistration uR = new UserRegistration();
            uR.TopLevel = false;
            panelBottonFooter.Controls.Add(uR);
            uR.BringToFront();
            uR.Show();
        }
    }
}
