﻿using EmployeeManagement.Web.Services;
using EmployeeManagementModel;
using Microsoft.AspNetCore.Components;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EmployeeManagement.Web.Pages
{
    public class EmployeeListBase : ComponentBase
    {
        [Inject]
        public IEmployeeService EmployeeService { get; set; }

        public IEnumerable<Employee> Employees { get; set; }
        public bool ShowFooter { get; set; } = true;

        protected int SelectedEmployeeCount { get; set; } = 0;  

        protected override async Task OnInitializedAsync()
        {
            Employees = (await EmployeeService.GetEmployees()).ToList();
        }
        protected void EmployeeSelectionChanged(bool isSelected)
        {
            if(isSelected)
            {
                SelectedEmployeeCount++;
            }
            else
            {
                SelectedEmployeeCount--;
            }

        }

    }

}
