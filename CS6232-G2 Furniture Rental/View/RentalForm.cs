﻿using System;
using System.Windows.Forms;
using CS6232_G2_Furniture_Rental.Helpers;
using FurnitureRentalBusiness;
using FurnitureRentalDomain;

namespace CS6232_G2_Furniture_Rental.View
{
    public partial class RentalForm : Form
    {
        private static LoginBusiness _loginBusiness;
        private static Employee _employee;
        private static MemberBusiness _memberBusiness;

        public RentalForm()
        {
            _loginBusiness = new LoginBusiness();
            _memberBusiness = new MemberBusiness();
            InitializeComponent();
        }

        private void RentalForm_FormClosed(object sender, FormClosedEventArgs e)
        {
            this.HideThisAndShowForm<MainMenuForm>();
        }

        private void memberSearchButton_Click(object sender, System.EventArgs e)
        {
            var form = this.ParentForm.ShowFormAsDialog<MemberSearchForm>();
            Member result = form.Result;
            if (result != null)
            {
                this.memberBindingSource.DataSource = result;
                this.memberNameLabel.Text = result.FirstName + " " + result.LastName;
                this.cityStZipLabel.Text = result.City.Trim() + ", " + result.State.Trim() + " ";
                if (result.Zipcode.Length > 5)
                {
                    this.cityStZipLabel.Text += Convert.ToInt64(result.Zipcode).ToString("#####-####");
                }
                else
                {
                    this.cityStZipLabel.Text += Convert.ToInt64(result.Zipcode).ToString("#####");
                }
                if (result.Phone.Length == 7)
                {
                    this.phoneDataLabel.Text = Convert.ToInt64(result.Phone).ToString("###-####");
                }
                else
                {
                    this.phoneDataLabel.Text = Convert.ToInt64(result.Phone).ToString("(###) ###-####");
                }
            }
        }

        private void RentalForm_Load(object sender, EventArgs e)
        {

        }

        private void RentalForm_Activated(object sender, EventArgs e)
        {
            try
            {
                _employee = _loginBusiness.GetLoggedInUser();

                this.employeeIDLabel.Text = _employee.FirstName + " " + _employee.LastName + " (" + _employee.UserName + ")";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, ex.GetType().ToString());
            }
        }
    }
}
