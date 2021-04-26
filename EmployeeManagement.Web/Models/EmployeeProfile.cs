using AutoMapper;
using EmployeeManagementModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EmployeeManagement.Web.Models
{
    public class EmployeeProfile:Profile
    {
        public EmployeeProfile()
        {
            CreateMap<Employee, EditEmployeeModel>();   
            CreateMap<EditEmployeeModel, Employee>();
        }
    }
}
