using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Assignment_2.Models;

namespace Assignment_2.ViewModel
{
    public class EmployeeDetails
    {
        public Employee Employee { get; set; }

        public Address Address { get; set; }

        public string PageTitle { get; set; }

        public string PageHeader { get; set; }
    }
}