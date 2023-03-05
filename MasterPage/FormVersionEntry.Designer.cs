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
            this.dgFormVersion = new System.Windows.Forms.DataGridView();
            this.txtBoxFormVersionID = new System.Windows.Forms.TextBox();
            this.lblFormVersionID = new System.Windows.Forms.Label();
            this.btnFormVersionClear = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgFormVersion)).BeginInit();
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
            this.btnFormVersionSave.Location = new System.Drawing.Point(187, 181);
            this.btnFormVersionSave.Name = "btnFormVersionSave";
            this.btnFormVersionSave.Size = new System.Drawing.Size(86, 30);
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
            // dgFormVersion
            // 
            this.dgFormVersion.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgFormVersion.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dgFormVersion.Location = new System.Drawing.Point(0, 217);
            this.dgFormVersion.Name = "dgFormVersion";
            this.dgFormVersion.Size = new System.Drawing.Size(495, 189);
            this.dgFormVersion.TabIndex = 20;
            this.dgFormVersion.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgFormVersion_CellContentClick);
            this.dgFormVersion.CellContentDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgFormVersion_CellContentDoubleClick);
            // 
            // txtBoxFormVersionID
            // 
            this.txtBoxFormVersionID.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtBoxFormVersionID.Location = new System.Drawing.Point(187, 37);
            this.txtBoxFormVersionID.Multiline = true;
            this.txtBoxFormVersionID.Name = "txtBoxFormVersionID";
            this.txtBoxFormVersionID.Size = new System.Drawing.Size(184, 20);
            this.txtBoxFormVersionID.TabIndex = 22;
            this.txtBoxFormVersionID.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.txtBoxFormVersionID.Visible = false;
            // 
            // lblFormVersionID
            // 
            this.lblFormVersionID.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblFormVersionID.Location = new System.Drawing.Point(19, 37);
            this.lblFormVersionID.Name = "lblFormVersionID";
            this.lblFormVersionID.Size = new System.Drawing.Size(144, 18);
            this.lblFormVersionID.TabIndex = 21;
            this.lblFormVersionID.Text = "Form Version ID";
            this.lblFormVersionID.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.lblFormVersionID.Visible = false;
            // 
            // btnFormVersionClear
            // 
            this.btnFormVersionClear.BackColor = System.Drawing.Color.Tomato;
            this.btnFormVersionClear.FlatAppearance.BorderSize = 0;
            this.btnFormVersionClear.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnFormVersionClear.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnFormVersionClear.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnFormVersionClear.Location = new System.Drawing.Point(279, 181);
            this.btnFormVersionClear.Name = "btnFormVersionClear";
            this.btnFormVersionClear.Size = new System.Drawing.Size(92, 30);
            this.btnFormVersionClear.TabIndex = 23;
            this.btnFormVersionClear.Text = "Clear";
            this.btnFormVersionClear.UseVisualStyleBackColor = false;
            this.btnFormVersionClear.Click += new System.EventHandler(this.btnFormVersionClear_Click);
            // 
            // FormVersionEntry
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Info;
            this.ClientSize = new System.Drawing.Size(495, 406);
            this.Controls.Add(this.btnFormVersionClear);
            this.Controls.Add(this.txtBoxFormVersionID);
            this.Controls.Add(this.lblFormVersionID);
            this.Controls.Add(this.dgFormVersion);
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
            ((System.ComponentModel.ISupportInitialize)(this.dgFormVersion)).EndInit();
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
        private System.Windows.Forms.DataGridView dgFormVersion;
        private System.Windows.Forms.TextBox txtBoxFormVersionID;
        private System.Windows.Forms.Label lblFormVersionID;
        private System.Windows.Forms.Button btnFormVersionClear;
    }
}