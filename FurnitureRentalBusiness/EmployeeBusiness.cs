﻿using FurnitureRentalData;
using FurnitureRentalDomain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FurnitureRentalBusiness
{
    public class EmployeeBusiness
    {
        private readonly EmployeeDal _dal;

        public EmployeeBusiness()
        {
            _dal = new EmployeeDal();
        }

        public int Add(Employee newEmployee)
        {
            if (newEmployee is null)
            {
                throw new ArgumentNullException("Employee cannot be null");
            }

            return this._dal.AddEmployee(newEmployee);
        }

        public List<Employee> GetEmployees()
        {
            List<Employee> employees = this._dal.GetEmployees();

            return employees;
        }
    }

}
