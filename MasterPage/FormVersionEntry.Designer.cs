namespace LabelPrint.MasterPage
{
    partial class FormVersionEntry
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
            this.comBoxFormTemplate = new System.Windows.Forms.ComboBox();
            this.lblTemplate = new System.Windows.Forms.Label();
            this.txtBoxFormNo = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.btnFormVersionSave = new System.Windows.Forms.Button();
            this.txtBoxVersionNo = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // comBoxFormTemplate
            // 
            this.comBoxFormTemplate.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.comBoxFormTemplate.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.comBoxFormTemplate.FormattingEnabled = true;
            this.comBoxFormTemplate.Location = new System.Drawing.Point(187, 63);
            this.comBoxFormTemplate.Name = "comBoxFormTemplate";
            this.comBoxFormTemplate.Size = new System.Drawing.Size(184, 24);
            this.comBoxFormTemplate.TabIndex = 15;
            // 
            // lblTemplate
            // 
            this.lblTemplate.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTemplate.Location = new System.Drawing.Point(19, 61);
            this.lblTemplate.Name = "lblTemplate";
            this.lblTemplate.Size = new System.Drawing.Size(144, 23);
            this.lblTemplate.TabIndex = 14;
            this.lblTemplate.Text = "Form Template";
            this.lblTemplate.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // txtBoxFormNo
            // 
            this.txtBoxFormNo.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtBoxFormNo.Location = new System.Drawing.Point(187, 104);
            this.txtBoxFormNo.Multiline = true;
            this.txtBoxFormNo.Name = "txtBoxFormNo";
            this.txtBoxFormNo.Size = new System.Drawing.Size(184, 25);
            this.txtBoxFormNo.TabIndex = 13;
            this.txtBoxFormNo.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // label2
            // 
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(19, 104);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(144, 23);
            this.label2.TabIndex = 12;
            this.label2.Text = "Form No";
            this.label2.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // btnFormVersionSave
            // 
            this.btnFormVersionSave.BackColor = System.Drawing.Color.ForestGreen;
            this.btnFormVersionSave.FlatAppearance.BorderSize = 0;
            this.btnFormVersionSave.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnFormVersionSave.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnFormVersionSave.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnFormVersionSave.Location = new System.Drawing.Point(187, 192);
            this.btnFormVersionSave.Name = "btnFormVersionSave";
            this.btnFormVersionSave.Size = new System.Drawing.Size(121, 33);
            this.btnFormVersionSave.TabIndex = 16;
            this.btnFormVersionSave.Text = "Save";
            this.btnFormVersionSave.UseVisualStyleBackColor = false;
            this.btnFormVersionSave.Click += new System.EventHandler(this.btnFormVersionSave_Click);
            // 
            // txtBoxVersionNo
            // 
            this.txtBoxVersionNo.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtBoxVersionNo.Location = new System.Drawing.Point(187, 146);
            this.txtBoxVersionNo.Multiline = true;
            this.txtBoxVersionNo.Name = "txtBoxVersionNo";
            this.txtBoxVersionNo.Size = new System.Drawing.Size(184, 25);
            this.txtBoxVersionNo.TabIndex = 18;
            this.txtBoxVersionNo.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // label1
            // 
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(19, 146);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(144, 23);
            this.label1.TabIndex = 17;
            this.label1.Text = "Version No";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // label3
            // 
            this.label3.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(128, 9);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(204, 23);
            this.label3.TabIndex = 19;
            this.label3.Text = "Form Version Entry";
            this.label3.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // FormVersionEntry
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Info;
            this.ClientSize = new System.Drawing.Size(475, 296);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txtBoxVersionNo);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnFormVersionSave);
            this.Controls.Add(this.comBoxFormTemplate);
            this.Controls.Add(this.lblTemplate);
            this.Controls.Add(this.txtBoxFormNo);
            this.Controls.Add(this.label2);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "FormVersionEntry";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Load += new System.EventHandler(this.FormVersionEntry_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox comBoxFormTemplate;
        private System.Windows.Forms.Label lblTemplate;
        private System.Windows.Forms.TextBox txtBoxFormNo;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnFormVersionSave;
        private System.Windows.Forms.TextBox txtBoxVersionNo;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label3;
    }
}