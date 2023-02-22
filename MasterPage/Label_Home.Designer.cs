﻿namespace LabelPrint.MasterPage
{
    partial class Label_Home
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
            this.panelLeftSideBar = new System.Windows.Forms.Panel();
            this.panelTopHeader = new System.Windows.Forms.Panel();
            this.panelBottonFooter = new System.Windows.Forms.Panel();
            this.lblHomeUserName = new System.Windows.Forms.Label();
            this.btnCross = new System.Windows.Forms.Button();
            this.lblCompanyName = new System.Windows.Forms.Label();
            this.panelHomeLogo = new System.Windows.Forms.Panel();
            this.btnNavLogout = new System.Windows.Forms.Button();
            this.btnNavProductReport = new System.Windows.Forms.Button();
            this.btnNavProductLabel = new System.Windows.Forms.Button();
            this.btnHome = new System.Windows.Forms.Button();
            this.panelUserPicBox = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.panelLeftSideBar.SuspendLayout();
            this.panelTopHeader.SuspendLayout();
            this.panelBottonFooter.SuspendLayout();
            this.SuspendLayout();
            // 
            // panelLeftSideBar
            // 
            this.panelLeftSideBar.BackColor = System.Drawing.Color.DarkCyan;
            this.panelLeftSideBar.Controls.Add(this.label2);
            this.panelLeftSideBar.Controls.Add(this.label1);
            this.panelLeftSideBar.Controls.Add(this.btnNavLogout);
            this.panelLeftSideBar.Controls.Add(this.btnNavProductReport);
            this.panelLeftSideBar.Controls.Add(this.btnNavProductLabel);
            this.panelLeftSideBar.Controls.Add(this.btnHome);
            this.panelLeftSideBar.Controls.Add(this.lblHomeUserName);
            this.panelLeftSideBar.Controls.Add(this.panelUserPicBox);
            this.panelLeftSideBar.Dock = System.Windows.Forms.DockStyle.Left;
            this.panelLeftSideBar.Location = new System.Drawing.Point(0, 0);
            this.panelLeftSideBar.Name = "panelLeftSideBar";
            this.panelLeftSideBar.Size = new System.Drawing.Size(200, 546);
            this.panelLeftSideBar.TabIndex = 0;
            // 
            // panelTopHeader
            // 
            this.panelTopHeader.BackColor = System.Drawing.Color.DarkCyan;
            this.panelTopHeader.Controls.Add(this.lblCompanyName);
            this.panelTopHeader.Controls.Add(this.btnCross);
            this.panelTopHeader.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelTopHeader.Location = new System.Drawing.Point(200, 0);
            this.panelTopHeader.Name = "panelTopHeader";
            this.panelTopHeader.Size = new System.Drawing.Size(847, 43);
            this.panelTopHeader.TabIndex = 1;
            // 
            // panelBottonFooter
            // 
            this.panelBottonFooter.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panelBottonFooter.BackColor = System.Drawing.Color.Honeydew;
            this.panelBottonFooter.Controls.Add(this.panelHomeLogo);
            this.panelBottonFooter.Location = new System.Drawing.Point(200, 38);
            this.panelBottonFooter.Name = "panelBottonFooter";
            this.panelBottonFooter.Size = new System.Drawing.Size(847, 508);
            this.panelBottonFooter.TabIndex = 2;
            // 
            // lblHomeUserName
            // 
            this.lblHomeUserName.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblHomeUserName.Location = new System.Drawing.Point(2, 133);
            this.lblHomeUserName.Name = "lblHomeUserName";
            this.lblHomeUserName.Size = new System.Drawing.Size(185, 27);
            this.lblHomeUserName.TabIndex = 1;
            this.lblHomeUserName.Text = "User Name";
            this.lblHomeUserName.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // btnCross
            // 
            this.btnCross.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnCross.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.btnCross.FlatAppearance.BorderSize = 0;
            this.btnCross.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnCross.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCross.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnCross.Location = new System.Drawing.Point(817, 6);
            this.btnCross.Name = "btnCross";
            this.btnCross.Size = new System.Drawing.Size(25, 25);
            this.btnCross.TabIndex = 0;
            this.btnCross.Text = "X";
            this.btnCross.UseVisualStyleBackColor = false;
            this.btnCross.Click += new System.EventHandler(this.btnCross_Click);
            // 
            // lblCompanyName
            // 
            this.lblCompanyName.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCompanyName.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.lblCompanyName.Location = new System.Drawing.Point(81, 7);
            this.lblCompanyName.Name = "lblCompanyName";
            this.lblCompanyName.Size = new System.Drawing.Size(589, 28);
            this.lblCompanyName.TabIndex = 1;
            this.lblCompanyName.Text = "LABAID PHARMACEUTICALS LIMITED";
            this.lblCompanyName.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // panelHomeLogo
            // 
            this.panelHomeLogo.BackgroundImage = global::LabelPrint.Properties.Resources.LAlogo;
            this.panelHomeLogo.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.panelHomeLogo.Location = new System.Drawing.Point(311, 169);
            this.panelHomeLogo.Name = "panelHomeLogo";
            this.panelHomeLogo.Size = new System.Drawing.Size(200, 100);
            this.panelHomeLogo.TabIndex = 0;
            // 
            // btnNavLogout
            // 
            this.btnNavLogout.BackColor = System.Drawing.Color.DarkGray;
            this.btnNavLogout.FlatAppearance.BorderSize = 0;
            this.btnNavLogout.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnNavLogout.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnNavLogout.Image = global::LabelPrint.Properties.Resources.Logout;
            this.btnNavLogout.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnNavLogout.Location = new System.Drawing.Point(5, 340);
            this.btnNavLogout.Name = "btnNavLogout";
            this.btnNavLogout.Size = new System.Drawing.Size(191, 29);
            this.btnNavLogout.TabIndex = 5;
            this.btnNavLogout.Text = "Logout";
            this.btnNavLogout.UseVisualStyleBackColor = false;
            this.btnNavLogout.Click += new System.EventHandler(this.btnNavLogout_Click);
            // 
            // btnNavProductReport
            // 
            this.btnNavProductReport.BackColor = System.Drawing.Color.DarkGray;
            this.btnNavProductReport.FlatAppearance.BorderSize = 0;
            this.btnNavProductReport.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnNavProductReport.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnNavProductReport.Image = global::LabelPrint.Properties.Resources.Report;
            this.btnNavProductReport.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnNavProductReport.Location = new System.Drawing.Point(5, 295);
            this.btnNavProductReport.Name = "btnNavProductReport";
            this.btnNavProductReport.Size = new System.Drawing.Size(191, 29);
            this.btnNavProductReport.TabIndex = 4;
            this.btnNavProductReport.Text = "Report";
            this.btnNavProductReport.UseVisualStyleBackColor = false;
            this.btnNavProductReport.Click += new System.EventHandler(this.btnNavProductReport_Click);
            // 
            // btnNavProductLabel
            // 
            this.btnNavProductLabel.BackColor = System.Drawing.Color.DarkGray;
            this.btnNavProductLabel.FlatAppearance.BorderSize = 0;
            this.btnNavProductLabel.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnNavProductLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnNavProductLabel.Image = global::LabelPrint.Properties.Resources.Product_Icon;
            this.btnNavProductLabel.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnNavProductLabel.Location = new System.Drawing.Point(5, 250);
            this.btnNavProductLabel.Name = "btnNavProductLabel";
            this.btnNavProductLabel.Size = new System.Drawing.Size(191, 29);
            this.btnNavProductLabel.TabIndex = 3;
            this.btnNavProductLabel.Text = "Product Label";
            this.btnNavProductLabel.UseVisualStyleBackColor = false;
            this.btnNavProductLabel.Click += new System.EventHandler(this.btnNavProductLabel_Click);
            // 
            // btnHome
            // 
            this.btnHome.BackColor = System.Drawing.Color.DarkGray;
            this.btnHome.FlatAppearance.BorderSize = 0;
            this.btnHome.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnHome.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnHome.Image = global::LabelPrint.Properties.Resources.Home;
            this.btnHome.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnHome.Location = new System.Drawing.Point(4, 207);
            this.btnHome.Name = "btnHome";
            this.btnHome.Size = new System.Drawing.Size(191, 29);
            this.btnHome.TabIndex = 2;
            this.btnHome.Text = "Home";
            this.btnHome.UseVisualStyleBackColor = false;
            this.btnHome.Click += new System.EventHandler(this.btnHome_Click);
            // 
            // panelUserPicBox
            // 
            this.panelUserPicBox.BackgroundImage = global::LabelPrint.Properties.Resources.User_Icon;
            this.panelUserPicBox.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.panelUserPicBox.Location = new System.Drawing.Point(26, 12);
            this.panelUserPicBox.Name = "panelUserPicBox";
            this.panelUserPicBox.Size = new System.Drawing.Size(125, 119);
            this.panelUserPicBox.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(3, 504);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(109, 23);
            this.label1.TabIndex = 6;
            this.label1.Text = "Developed By : ";
            // 
            // label2
            // 
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label2.Location = new System.Drawing.Point(5, 521);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(182, 23);
            this.label2.TabIndex = 7;
            this.label2.Text = "Retail Technologies Ltd.";
            // 
            // Label_Home
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1047, 546);
            this.ControlBox = false;
            this.Controls.Add(this.panelBottonFooter);
            this.Controls.Add(this.panelTopHeader);
            this.Controls.Add(this.panelLeftSideBar);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Name = "Label_Home";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Load += new System.EventHandler(this.Label_Home_Load);
            this.panelLeftSideBar.ResumeLayout(false);
            this.panelTopHeader.ResumeLayout(false);
            this.panelBottonFooter.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panelLeftSideBar;
        private System.Windows.Forms.Panel panelTopHeader;
        private System.Windows.Forms.Panel panelBottonFooter;
        private System.Windows.Forms.Panel panelUserPicBox;
        private System.Windows.Forms.Label lblHomeUserName;
        private System.Windows.Forms.Button btnHome;
        private System.Windows.Forms.Button btnNavProductLabel;
        private System.Windows.Forms.Button btnNavProductReport;
        private System.Windows.Forms.Button btnNavLogout;
        private System.Windows.Forms.Button btnCross;
        private System.Windows.Forms.Label lblCompanyName;
        private System.Windows.Forms.Panel panelHomeLogo;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
    }
}