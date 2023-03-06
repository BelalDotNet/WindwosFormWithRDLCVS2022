namespace LabelPrint
{
    partial class PrintedProductList
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
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.btnSearch = new System.Windows.Forms.Button();
            this.comboBoxUser = new System.Windows.Forms.ComboBox();
            this.txtFromDate = new System.Windows.Forms.DateTimePicker();
            this.txtToDate = new System.Windows.Forms.DateTimePicker();
            this.label1 = new System.Windows.Forms.Label();
            this.comBoxPH_FormTamplate = new System.Windows.Forms.ComboBox();
            this.lblPrintFormTemplate = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(0, 116);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(1003, 404);
            this.dataGridView1.TabIndex = 1;
            // 
            // btnSearch
            // 
            this.btnSearch.BackColor = System.Drawing.Color.LightSkyBlue;
            this.btnSearch.FlatAppearance.BorderSize = 0;
            this.btnSearch.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSearch.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSearch.Location = new System.Drawing.Point(743, 75);
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.Size = new System.Drawing.Size(119, 26);
            this.btnSearch.TabIndex = 4;
            this.btnSearch.Text = "Search";
            this.btnSearch.UseVisualStyleBackColor = false;
            this.btnSearch.Click += new System.EventHandler(this.btnSearch_Click);
            // 
            // comboBoxUser
            // 
            this.comboBoxUser.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.comboBoxUser.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.comboBoxUser.FormattingEnabled = true;
            this.comboBoxUser.Location = new System.Drawing.Point(242, 35);
            this.comboBoxUser.Name = "comboBoxUser";
            this.comboBoxUser.Size = new System.Drawing.Size(198, 24);
            this.comboBoxUser.TabIndex = 5;
            // 
            // txtFromDate
            // 
            this.txtFromDate.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtFromDate.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.txtFromDate.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.txtFromDate.Location = new System.Drawing.Point(447, 35);
            this.txtFromDate.Name = "txtFromDate";
            this.txtFromDate.Size = new System.Drawing.Size(212, 23);
            this.txtFromDate.TabIndex = 6;
            // 
            // txtToDate
            // 
            this.txtToDate.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtToDate.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.txtToDate.Location = new System.Drawing.Point(669, 35);
            this.txtToDate.Name = "txtToDate";
            this.txtToDate.Size = new System.Drawing.Size(193, 23);
            this.txtToDate.TabIndex = 7;
            // 
            // label1
            // 
            this.label1.Font = new System.Drawing.Font("Century Schoolbook", 14.25F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.ControlText;
            this.label1.Location = new System.Drawing.Point(359, -3);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(195, 35);
            this.label1.TabIndex = 8;
            this.label1.Text = "Print History";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // comBoxPH_FormTamplate
            // 
            this.comBoxPH_FormTamplate.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.comBoxPH_FormTamplate.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.comBoxPH_FormTamplate.FormattingEnabled = true;
            this.comBoxPH_FormTamplate.Location = new System.Drawing.Point(29, 34);
            this.comBoxPH_FormTamplate.Name = "comBoxPH_FormTamplate";
            this.comBoxPH_FormTamplate.Size = new System.Drawing.Size(207, 24);
            this.comBoxPH_FormTamplate.TabIndex = 9;
            // 
            // lblPrintFormTemplate
            // 
            this.lblPrintFormTemplate.BackColor = System.Drawing.Color.PowderBlue;
            this.lblPrintFormTemplate.Font = new System.Drawing.Font("Century Schoolbook", 14.25F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblPrintFormTemplate.ForeColor = System.Drawing.SystemColors.ControlText;
            this.lblPrintFormTemplate.Location = new System.Drawing.Point(25, 75);
            this.lblPrintFormTemplate.Name = "lblPrintFormTemplate";
            this.lblPrintFormTemplate.Size = new System.Drawing.Size(158, 26);
            this.lblPrintFormTemplate.TabIndex = 10;
            this.lblPrintFormTemplate.Text = "Product Label";
            this.lblPrintFormTemplate.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // PrintedProductList
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Honeydew;
            this.ClientSize = new System.Drawing.Size(1003, 520);
            this.Controls.Add(this.lblPrintFormTemplate);
            this.Controls.Add(this.comBoxPH_FormTamplate);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtToDate);
            this.Controls.Add(this.txtFromDate);
            this.Controls.Add(this.comboBoxUser);
            this.Controls.Add(this.btnSearch);
            this.Controls.Add(this.dataGridView1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "PrintedProductList";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.PrintedProductList_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.ComboBox comboBoxUser;
        private System.Windows.Forms.DateTimePicker txtFromDate;
        private System.Windows.Forms.DateTimePicker txtToDate;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox comBoxPH_FormTamplate;
        private System.Windows.Forms.Label lblPrintFormTemplate;
    }
}