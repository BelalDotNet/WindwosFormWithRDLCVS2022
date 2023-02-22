namespace LabelPrint.ProductLabel
{
    partial class ProductHome
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.HomeSideBarPanel = new System.Windows.Forms.Panel();
            this.HomeTopBarPanel = new System.Windows.Forms.Panel();
            this.HomeFooterPanel = new System.Windows.Forms.Panel();
            this.lblUserName = new System.Windows.Forms.Label();
            this.btnLogout = new System.Windows.Forms.Button();
            this.btnReports = new System.Windows.Forms.Button();
            this.btnProductLabel = new System.Windows.Forms.Button();
            this.btnHome = new System.Windows.Forms.Button();
            this.HomeImagePanel = new System.Windows.Forms.Panel();
            this.btnCross = new System.Windows.Forms.Button();
            this.HomeSideBarPanel.SuspendLayout();
            this.HomeTopBarPanel.SuspendLayout();
            this.SuspendLayout();
            // 
            // HomeSideBarPanel
            // 
            this.HomeSideBarPanel.BackColor = System.Drawing.Color.DimGray;
            this.HomeSideBarPanel.Controls.Add(this.btnLogout);
            this.HomeSideBarPanel.Controls.Add(this.btnReports);
            this.HomeSideBarPanel.Controls.Add(this.btnProductLabel);
            this.HomeSideBarPanel.Controls.Add(this.btnHome);
            this.HomeSideBarPanel.Controls.Add(this.lblUserName);
            this.HomeSideBarPanel.Controls.Add(this.HomeImagePanel);
            this.HomeSideBarPanel.Dock = System.Windows.Forms.DockStyle.Left;
            this.HomeSideBarPanel.Location = new System.Drawing.Point(0, 0);
            this.HomeSideBarPanel.Name = "HomeSideBarPanel";
            this.HomeSideBarPanel.Size = new System.Drawing.Size(166, 561);
            this.HomeSideBarPanel.TabIndex = 0;
            // 
            // HomeTopBarPanel
            // 
            this.HomeTopBarPanel.BackColor = System.Drawing.Color.MediumTurquoise;
            this.HomeTopBarPanel.Controls.Add(this.btnCross);
            this.HomeTopBarPanel.Dock = System.Windows.Forms.DockStyle.Top;
            this.HomeTopBarPanel.Location = new System.Drawing.Point(166, 0);
            this.HomeTopBarPanel.Name = "HomeTopBarPanel";
            this.HomeTopBarPanel.Size = new System.Drawing.Size(867, 40);
            this.HomeTopBarPanel.TabIndex = 1;
            // 
            // HomeFooterPanel
            // 
            this.HomeFooterPanel.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.HomeFooterPanel.Location = new System.Drawing.Point(166, 56);
            this.HomeFooterPanel.Name = "HomeFooterPanel";
            this.HomeFooterPanel.Size = new System.Drawing.Size(867, 505);
            this.HomeFooterPanel.TabIndex = 2;
            // 
            // lblUserName
            // 
            this.lblUserName.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblUserName.Location = new System.Drawing.Point(23, 129);
            this.lblUserName.Name = "lblUserName";
            this.lblUserName.Size = new System.Drawing.Size(114, 23);
            this.lblUserName.TabIndex = 1;
            this.lblUserName.Text = "User Name";
            this.lblUserName.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // btnLogout
            // 
            this.btnLogout.BackColor = System.Drawing.Color.Silver;
            this.btnLogout.FlatAppearance.BorderColor = System.Drawing.Color.White;
            this.btnLogout.FlatAppearance.BorderSize = 0;
            this.btnLogout.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnLogout.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnLogout.Image = global::LabelPrint.Properties.Resources.Logout1;
            this.btnLogout.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnLogout.Location = new System.Drawing.Point(4, 343);
            this.btnLogout.Name = "btnLogout";
            this.btnLogout.Size = new System.Drawing.Size(157, 30);
            this.btnLogout.TabIndex = 5;
            this.btnLogout.Text = "Logout";
            this.btnLogout.UseVisualStyleBackColor = false;
            this.btnLogout.Click += new System.EventHandler(this.btnLogout_Click);
            // 
            // btnReports
            // 
            this.btnReports.BackColor = System.Drawing.Color.Silver;
            this.btnReports.FlatAppearance.BorderColor = System.Drawing.Color.White;
            this.btnReports.FlatAppearance.BorderSize = 0;
            this.btnReports.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnReports.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnReports.Image = global::LabelPrint.Properties.Resources.Report1;
            this.btnReports.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnReports.Location = new System.Drawing.Point(4, 294);
            this.btnReports.Name = "btnReports";
            this.btnReports.Size = new System.Drawing.Size(157, 30);
            this.btnReports.TabIndex = 4;
            this.btnReports.Text = "Reports";
            this.btnReports.UseVisualStyleBackColor = false;
            // 
            // btnProductLabel
            // 
            this.btnProductLabel.BackColor = System.Drawing.Color.Silver;
            this.btnProductLabel.FlatAppearance.BorderColor = System.Drawing.Color.White;
            this.btnProductLabel.FlatAppearance.BorderSize = 0;
            this.btnProductLabel.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnProductLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnProductLabel.Image = global::LabelPrint.Properties.Resources.Product_Icon;
            this.btnProductLabel.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnProductLabel.Location = new System.Drawing.Point(4, 246);
            this.btnProductLabel.Name = "btnProductLabel";
            this.btnProductLabel.Size = new System.Drawing.Size(157, 30);
            this.btnProductLabel.TabIndex = 3;
            this.btnProductLabel.Text = "Product Label";
            this.btnProductLabel.UseVisualStyleBackColor = false;
            this.btnProductLabel.Click += new System.EventHandler(this.btnProductLabel_Click);
            // 
            // btnHome
            // 
            this.btnHome.BackColor = System.Drawing.Color.Silver;
            this.btnHome.FlatAppearance.BorderColor = System.Drawing.Color.White;
            this.btnHome.FlatAppearance.BorderSize = 0;
            this.btnHome.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnHome.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnHome.Image = global::LabelPrint.Properties.Resources.Home1;
            this.btnHome.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnHome.Location = new System.Drawing.Point(4, 198);
            this.btnHome.Name = "btnHome";
            this.btnHome.Size = new System.Drawing.Size(157, 30);
            this.btnHome.TabIndex = 2;
            this.btnHome.Text = "Home";
            this.btnHome.UseVisualStyleBackColor = false;
            // 
            // HomeImagePanel
            // 
            this.HomeImagePanel.BackgroundImage = global::LabelPrint.Properties.Resources.User_Icon;
            this.HomeImagePanel.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.HomeImagePanel.Location = new System.Drawing.Point(23, 20);
            this.HomeImagePanel.Name = "HomeImagePanel";
            this.HomeImagePanel.Size = new System.Drawing.Size(114, 99);
            this.HomeImagePanel.TabIndex = 0;
            // 
            // btnCross
            // 
            this.btnCross.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnCross.BackColor = System.Drawing.Color.Crimson;
            this.btnCross.FlatAppearance.BorderSize = 0;
            this.btnCross.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnCross.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCross.ForeColor = System.Drawing.SystemColors.MenuText;
            this.btnCross.Location = new System.Drawing.Point(834, 7);
            this.btnCross.Name = "btnCross";
            this.btnCross.Size = new System.Drawing.Size(24, 23);
            this.btnCross.TabIndex = 0;
            this.btnCross.Text = "X";
            this.btnCross.UseVisualStyleBackColor = false;
            this.btnCross.Click += new System.EventHandler(this.btnCross_Click);
            // 
            // ProductLabelHome
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1033, 561);
            this.ControlBox = false;
            this.Controls.Add(this.HomeFooterPanel);
            this.Controls.Add(this.HomeTopBarPanel);
            this.Controls.Add(this.HomeSideBarPanel);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Name = "ProductLabelHome";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Load += new System.EventHandler(this.ProductLabelHome_Load);
            this.HomeSideBarPanel.ResumeLayout(false);
            this.HomeTopBarPanel.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel HomeSideBarPanel;
        private System.Windows.Forms.Panel HomeTopBarPanel;
        private System.Windows.Forms.Panel HomeFooterPanel;
        private System.Windows.Forms.Label lblUserName;
        private System.Windows.Forms.Panel HomeImagePanel;
        private System.Windows.Forms.Button btnHome;
        private System.Windows.Forms.Button btnLogout;
        private System.Windows.Forms.Button btnReports;
        private System.Windows.Forms.Button btnProductLabel;
        private System.Windows.Forms.Button btnCross;
    }
}