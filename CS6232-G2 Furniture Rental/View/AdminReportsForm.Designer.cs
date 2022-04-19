﻿
namespace CS6232_G2_Furniture_Rental.View
{
    partial class AdminReportsForm
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
            this.employeeIDLabel = new System.Windows.Forms.Label();
            this.employeeLabel = new System.Windows.Forms.Label();
            this.adminReportsTabControl = new System.Windows.Forms.TabControl();
            this.PopularFurniture = new System.Windows.Forms.TabPage();
            this.popularFurnitureReportUserControl = new CS6232_G2_Furniture_Rental.User_Controls.PopularFurnitureReportUserControl();
            this.adminReportsTabControl.SuspendLayout();
            this.PopularFurniture.SuspendLayout();
            this.SuspendLayout();
            // 
            // employeeIDLabel
            // 
            this.employeeIDLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.employeeIDLabel.Location = new System.Drawing.Point(532, 22);
            this.employeeIDLabel.Name = "employeeIDLabel";
            this.employeeIDLabel.Size = new System.Drawing.Size(240, 23);
            this.employeeIDLabel.TabIndex = 4;
            // 
            // employeeLabel
            // 
            this.employeeLabel.AutoSize = true;
            this.employeeLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.employeeLabel.Location = new System.Drawing.Point(475, 22);
            this.employeeLabel.Name = "employeeLabel";
            this.employeeLabel.Size = new System.Drawing.Size(51, 17);
            this.employeeLabel.TabIndex = 3;
            this.employeeLabel.Text = "Admin:";
            // 
            // adminReportsTabControl
            // 
            this.adminReportsTabControl.Controls.Add(this.PopularFurniture);
            this.adminReportsTabControl.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.adminReportsTabControl.Location = new System.Drawing.Point(0, 64);
            this.adminReportsTabControl.Name = "adminReportsTabControl";
            this.adminReportsTabControl.SelectedIndex = 0;
            this.adminReportsTabControl.Size = new System.Drawing.Size(800, 386);
            this.adminReportsTabControl.TabIndex = 5;
            // 
            // PopularFurniture
            // 
            this.PopularFurniture.Controls.Add(this.popularFurnitureReportUserControl);
            this.PopularFurniture.Location = new System.Drawing.Point(4, 22);
            this.PopularFurniture.Name = "PopularFurniture";
            this.PopularFurniture.Padding = new System.Windows.Forms.Padding(3);
            this.PopularFurniture.Size = new System.Drawing.Size(792, 360);
            this.PopularFurniture.TabIndex = 0;
            this.PopularFurniture.Text = "Popular Furniture";
            this.PopularFurniture.UseVisualStyleBackColor = true;
            // 
            // popularFurnitureReportUserControl
            // 
            this.popularFurnitureReportUserControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.popularFurnitureReportUserControl.Location = new System.Drawing.Point(3, 3);
            this.popularFurnitureReportUserControl.Name = "popularFurnitureReportUserControl";
            this.popularFurnitureReportUserControl.Size = new System.Drawing.Size(786, 354);
            this.popularFurnitureReportUserControl.TabIndex = 0;
            // 
            // AdminReportsForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.adminReportsTabControl);
            this.Controls.Add(this.employeeIDLabel);
            this.Controls.Add(this.employeeLabel);
            this.Name = "AdminReportsForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Admin Reports";
            this.adminReportsTabControl.ResumeLayout(false);
            this.PopularFurniture.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label employeeIDLabel;
        private System.Windows.Forms.Label employeeLabel;
        private System.Windows.Forms.TabControl adminReportsTabControl;
        private System.Windows.Forms.TabPage PopularFurniture;
        private User_Controls.PopularFurnitureReportUserControl popularFurnitureReportUserControl;
    }
}