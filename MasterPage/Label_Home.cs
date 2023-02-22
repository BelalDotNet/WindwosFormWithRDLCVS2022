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
    }
}
