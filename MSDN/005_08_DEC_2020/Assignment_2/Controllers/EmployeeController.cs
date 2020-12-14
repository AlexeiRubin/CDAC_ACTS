using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Assignment_2.Models;
using Assignment_2.ViewModel;

namespace Assignment_2.Controllers
{
    public class EmployeeController : Controller
    {
        // GET: Employee
        public ActionResult GetEmployeeDetails()
        {
            Employee employee = new Employee()
            {
                Id = 007,
                Name = "lolName",
                Gender = "lolGender",
                Department = "lolDepartment",
                AddressId = 1
            };

            Address address = new Address();

            address.AddressId = 1;
            address.City = "lolCity";
            address.State = "lolState";
            address.Pin = 777;
            address.Country = "lolCountry";

            EmployeeDetails details = new EmployeeDetails()
            {
                Employee = employee,
                Address = address,
                PageTitle = "LOL ORGANIZATION",
                PageHeader = "Employee Details"
            };

            return View(details);
        }
    }
}