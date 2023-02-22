using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LabelPrint.ProductLabel
{
    public partial class ProductHome : Form
    {
        public ProductHome()
        {
            InitializeComponent();
        }

        private void btnLogout_Click(object sender, EventArgs e)
        {
           LoginForm Lf= new LoginForm();
            this.Hide();
            Lf.Show();

        }

        private void btnCross_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void ProductLabelHome_Load(object sender, EventArgs e)
        {
            lblUserName.Text = DisplayUser.Display_Name;
        }

        private void btnProductLabel_Click(object sender, EventArgs e)
        {
            //ProductLabel plf = new ProductLabel();
            //plf.TopLevel = false;
            //HomeFooterPanel.Controls.Add(plf);
            //plf.BringToFront();
            //plf.Show();
            
        }
    }
}
