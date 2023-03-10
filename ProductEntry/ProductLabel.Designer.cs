namespace LabelPrint
{
    partial class ProductLabel
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ProductLabel));
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.txtProductName = new System.Windows.Forms.TextBox();
            this.txtBatchNo = new System.Windows.Forms.TextBox();
            this.txtPackQuantity = new System.Windows.Forms.TextBox();
            this.txtSrNo = new System.Windows.Forms.TextBox();
            this.txtStorageCondition = new System.Windows.Forms.TextBox();
            this.mfxDateTime = new System.Windows.Forms.DateTimePicker();
            this.expDateTime = new System.Windows.Forms.DateTimePicker();
            this.btnProductLabelSave = new System.Windows.Forms.Button();
            this.dgProductLabel = new System.Windows.Forms.DataGridView();
            this.btnPrintProductLabel = new System.Windows.Forms.Button();
            this.lblProductID = new System.Windows.Forms.Label();
            this.txtProductID = new System.Windows.Forms.TextBox();
            this.btnClear = new System.Windows.Forms.Button();
            this.lblFormVersion = new System.Windows.Forms.Label();
            this.comBoxFormVersion = new System.Windows.Forms.ComboBox();
            this.btnNewFormVersionPopup = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.btnProductLabelDirectPrint = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgProductLabel)).BeginInit();
            this.SuspendLayout();
            // 
            // label2
            // 
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(37, 81);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(144, 23);
            this.label2.TabIndex = 0;
            this.label2.Text = "Product Name";
            this.label2.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // label3
            // 
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(37, 122);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(135, 23);
            this.label3.TabIndex = 0;
            this.label3.Text = "BatchNo";
            this.label3.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // label4
            // 
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(38, 157);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(138, 23);
            this.label4.TabIndex = 0;
            this.label4.Text = "Mfg. Date";
            this.label4.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // label5
            // 
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(377, 159);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(88, 23);
            this.label5.TabIndex = 0;
            this.label5.Text = "Exp. Date";
            this.label5.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // label6
            // 
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(39, 188);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(141, 23);
            this.label6.TabIndex = 0;
            this.label6.Text = "Pack Quantity";
            this.label6.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // label7
            // 
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(34, 267);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(163, 23);
            this.label7.TabIndex = 0;
            this.label7.Text = "Storage Condition";
            this.label7.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // label8
            // 
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(38, 225);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(144, 23);
            this.label8.TabIndex = 0;
            this.label8.Text = "Sr. No.";
            this.label8.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // txtProductName
            // 
            this.txtProductName.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtProductName.Location = new System.Drawing.Point(220, 79);
            this.txtProductName.Multiline = true;
            this.txtProductName.Name = "txtProductName";
            this.txtProductName.Size = new System.Drawing.Size(385, 32);
            this.txtProductName.TabIndex = 1;
            this.txtProductName.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // txtBatchNo
            // 
            this.txtBatchNo.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtBatchNo.Location = new System.Drawing.Point(220, 119);
            this.txtBatchNo.Multiline = true;
            this.txtBatchNo.Name = "txtBatchNo";
            this.txtBatchNo.Size = new System.Drawing.Size(385, 32);
            this.txtBatchNo.TabIndex = 2;
            this.txtBatchNo.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // txtPackQuantity
            // 
            this.txtPackQuantity.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtPackQuantity.Location = new System.Drawing.Point(220, 188);
            this.txtPackQuantity.Multiline = true;
            this.txtPackQuantity.Name = "txtPackQuantity";
            this.txtPackQuantity.Size = new System.Drawing.Size(385, 30);
            this.txtPackQuantity.TabIndex = 5;
            this.txtPackQuantity.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // txtSrNo
            // 
            this.txtSrNo.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtSrNo.Location = new System.Drawing.Point(220, 224);
            this.txtSrNo.Multiline = true;
            this.txtSrNo.Name = "txtSrNo";
            this.txtSrNo.Size = new System.Drawing.Size(385, 31);
            this.txtSrNo.TabIndex = 6;
            this.txtSrNo.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // txtStorageCondition
            // 
            this.txtStorageCondition.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtStorageCondition.Location = new System.Drawing.Point(220, 261);
            this.txtStorageCondition.Multiline = true;
            this.txtStorageCondition.Name = "txtStorageCondition";
            this.txtStorageCondition.Size = new System.Drawing.Size(385, 29);
            this.txtStorageCondition.TabIndex = 7;
            this.txtStorageCondition.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // mfxDateTime
            // 
            this.mfxDateTime.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.mfxDateTime.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.mfxDateTime.Location = new System.Drawing.Point(220, 159);
            this.mfxDateTime.Name = "mfxDateTime";
            this.mfxDateTime.Size = new System.Drawing.Size(121, 23);
            this.mfxDateTime.TabIndex = 3;
            // 
            // expDateTime
            // 
            this.expDateTime.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.expDateTime.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.expDateTime.Location = new System.Drawing.Point(476, 159);
            this.expDateTime.Name = "expDateTime";
            this.expDateTime.Size = new System.Drawing.Size(129, 23);
            this.expDateTime.TabIndex = 4;
            // 
            // btnProductLabelSave
            // 
            this.btnProductLabelSave.BackColor = System.Drawing.Color.ForestGreen;
            this.btnProductLabelSave.FlatAppearance.BorderSize = 0;
            this.btnProductLabelSave.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnProductLabelSave.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnProductLabelSave.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnProductLabelSave.Location = new System.Drawing.Point(220, 301);
            this.btnProductLabelSave.Name = "btnProductLabelSave";
            this.btnProductLabelSave.Size = new System.Drawing.Size(121, 33);
            this.btnProductLabelSave.TabIndex = 3;
            this.btnProductLabelSave.Text = "Save";
            this.btnProductLabelSave.UseVisualStyleBackColor = false;
            this.btnProductLabelSave.Click += new System.EventHandler(this.btnProductLabelSave_Click);
            // 
            // dgProductLabel
            // 
            this.dgProductLabel.BackgroundColor = System.Drawing.SystemColors.ActiveCaption;
            this.dgProductLabel.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgProductLabel.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dgProductLabel.Location = new System.Drawing.Point(0, 340);
            this.dgProductLabel.Name = "dgProductLabel";
            this.dgProductLabel.Size = new System.Drawing.Size(918, 205);
            this.dgProductLabel.TabIndex = 4;
            this.dgProductLabel.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgProductLabel_CellContentClick);
            this.dgProductLabel.CellContentDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgProductLabel_CellContentDoubleClick);
            // 
            // btnPrintProductLabel
            // 
            this.btnPrintProductLabel.BackColor = System.Drawing.Color.Orange;
            this.btnPrintProductLabel.FlatAppearance.BorderSize = 0;
            this.btnPrintProductLabel.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnPrintProductLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnPrintProductLabel.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnPrintProductLabel.Location = new System.Drawing.Point(476, 301);
            this.btnPrintProductLabel.Name = "btnPrintProductLabel";
            this.btnPrintProductLabel.Size = new System.Drawing.Size(129, 33);
            this.btnPrintProductLabel.TabIndex = 5;
            this.btnPrintProductLabel.Text = "Print Preview";
            this.btnPrintProductLabel.UseVisualStyleBackColor = false;
            this.btnPrintProductLabel.Click += new System.EventHandler(this.btnPrintProductLabel_Click);
            // 
            // lblProductID
            // 
            this.lblProductID.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblProductID.Location = new System.Drawing.Point(39, -10);
            this.lblProductID.Name = "lblProductID";
            this.lblProductID.Size = new System.Drawing.Size(157, 23);
            this.lblProductID.TabIndex = 8;
            this.lblProductID.Text = "Product ID";
            this.lblProductID.UseMnemonic = false;
            this.lblProductID.Visible = false;
            // 
            // txtProductID
            // 
            this.txtProductID.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.txtProductID.Location = new System.Drawing.Point(220, -10);
            this.txtProductID.Multiline = true;
            this.txtProductID.Name = "txtProductID";
            this.txtProductID.ReadOnly = true;
            this.txtProductID.Size = new System.Drawing.Size(385, 32);
            this.txtProductID.TabIndex = 9;
            this.txtProductID.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.txtProductID.Visible = false;
            // 
            // btnClear
            // 
            this.btnClear.BackColor = System.Drawing.Color.Tomato;
            this.btnClear.FlatAppearance.BorderSize = 0;
            this.btnClear.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnClear.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnClear.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnClear.Location = new System.Drawing.Point(347, 301);
            this.btnClear.Name = "btnClear";
            this.btnClear.Size = new System.Drawing.Size(123, 33);
            this.btnClear.TabIndex = 0;
            this.btnClear.Text = "Clear Record";
            this.btnClear.UseVisualStyleBackColor = false;
            this.btnClear.Click += new System.EventHandler(this.btnClear_Click);
            // 
            // lblFormVersion
            // 
            this.lblFormVersion.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblFormVersion.Location = new System.Drawing.Point(37, 38);
            this.lblFormVersion.Name = "lblFormVersion";
            this.lblFormVersion.Size = new System.Drawing.Size(144, 23);
            this.lblFormVersion.TabIndex = 10;
            this.lblFormVersion.Text = "Form Version";
            this.lblFormVersion.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // comBoxFormVersion
            // 
            this.comBoxFormVersion.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.comBoxFormVersion.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.comBoxFormVersion.FormattingEnabled = true;
            this.comBoxFormVersion.Location = new System.Drawing.Point(220, 38);
            this.comBoxFormVersion.Name = "comBoxFormVersion";
            this.comBoxFormVersion.Size = new System.Drawing.Size(385, 24);
            this.comBoxFormVersion.TabIndex = 11;
            // 
            // btnNewFormVersionPopup
            // 
            this.btnNewFormVersionPopup.BackColor = System.Drawing.Color.CornflowerBlue;
            this.btnNewFormVersionPopup.FlatAppearance.BorderSize = 0;
            this.btnNewFormVersionPopup.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnNewFormVersionPopup.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnNewFormVersionPopup.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnNewFormVersionPopup.Location = new System.Drawing.Point(611, 38);
            this.btnNewFormVersionPopup.Name = "btnNewFormVersionPopup";
            this.btnNewFormVersionPopup.Size = new System.Drawing.Size(66, 24);
            this.btnNewFormVersionPopup.TabIndex = 12;
            this.btnNewFormVersionPopup.Text = "New";
            this.btnNewFormVersionPopup.UseVisualStyleBackColor = false;
            this.btnNewFormVersionPopup.Click += new System.EventHandler(this.btnNewFormVersionPopup_Click);
            // 
            // label1
            // 
            this.label1.Font = new System.Drawing.Font("Century Schoolbook", 14.25F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.ControlText;
            this.label1.Location = new System.Drawing.Point(237, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(247, 35);
            this.label1.TabIndex = 13;
            this.label1.Text = "Product Label Entry";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // btnProductLabelDirectPrint
            // 
            this.btnProductLabelDirectPrint.BackColor = System.Drawing.Color.DodgerBlue;
            this.btnProductLabelDirectPrint.FlatAppearance.BorderSize = 0;
            this.btnProductLabelDirectPrint.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnProductLabelDirectPrint.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnProductLabelDirectPrint.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnProductLabelDirectPrint.Location = new System.Drawing.Point(610, 301);
            this.btnProductLabelDirectPrint.Name = "btnProductLabelDirectPrint";
            this.btnProductLabelDirectPrint.Size = new System.Drawing.Size(129, 33);
            this.btnProductLabelDirectPrint.TabIndex = 14;
            this.btnProductLabelDirectPrint.Text = "Print";
            this.btnProductLabelDirectPrint.UseVisualStyleBackColor = false;
            this.btnProductLabelDirectPrint.Click += new System.EventHandler(this.btnProductLabelDirectPrint_Click);
            // 
            // ProductLabel
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Honeydew;
            this.ClientSize = new System.Drawing.Size(918, 545);
            this.ControlBox = false;
            this.Controls.Add(this.btnProductLabelDirectPrint);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnNewFormVersionPopup);
            this.Controls.Add(this.comBoxFormVersion);
            this.Controls.Add(this.lblFormVersion);
            this.Controls.Add(this.btnClear);
            this.Controls.Add(this.txtProductID);
            this.Controls.Add(this.lblProductID);
            this.Controls.Add(this.btnPrintProductLabel);
            this.Controls.Add(this.dgProductLabel);
            this.Controls.Add(this.btnProductLabelSave);
            this.Controls.Add(this.expDateTime);
            this.Controls.Add(this.mfxDateTime);
            this.Controls.Add(this.txtStorageCondition);
            this.Controls.Add(this.txtSrNo);
            this.Controls.Add(this.txtPackQuantity);
            this.Controls.Add(this.txtBatchNo);
            this.Controls.Add(this.txtProductName);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label2);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "ProductLabel";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.ProductLabel_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgProductLabel)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtProductName;
        private System.Windows.Forms.TextBox txtBatchNo;
        private System.Windows.Forms.TextBox txtPackQuantity;
        private System.Windows.Forms.TextBox txtSrNo;
        private System.Windows.Forms.TextBox txtStorageCondition;
        private System.Windows.Forms.DateTimePicker mfxDateTime;
        private System.Windows.Forms.DateTimePicker expDateTime;
        private System.Windows.Forms.Button btnProductLabelSave;
        private System.Windows.Forms.DataGridView dgProductLabel;
        private System.Windows.Forms.Button btnPrintProductLabel;
        private System.Windows.Forms.Label lblProductID;
        private System.Windows.Forms.TextBox txtProductID;
        private System.Windows.Forms.Button btnClear;
        private System.Windows.Forms.Label lblFormVersion;
        private System.Windows.Forms.ComboBox comBoxFormVersion;
        private System.Windows.Forms.Button btnNewFormVersionPopup;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnProductLabelDirectPrint;
    }
}