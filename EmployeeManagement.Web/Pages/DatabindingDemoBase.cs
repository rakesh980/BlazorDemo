using Microsoft.AspNetCore.Components;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EmployeeManagement.Web.Pages
{
    public class DatabindingDemoBase: ComponentBase
    {
        protected string Name { get; set; } = "Rakesh";
        public string Description { get; set; } = string.Empty;
    }
}
 