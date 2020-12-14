using Assignment_3.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Assignment_3.Controllers
{
    public class EmployeeController : Controller
    {
        // GET: Employee
        public ActionResult EmployeeDetails()
        {
            Employee employee = new Employee()
            {
                FirstName = "lol",
                LastName = "lolol",
                EmployeeId = 7
            };

            return View(employee);
        }
    }
}