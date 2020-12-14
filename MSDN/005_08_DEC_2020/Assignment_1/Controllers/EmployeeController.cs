using Assignment_1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Assignment_1.Controllers
{
    public class EmployeeController : Controller
    {
        // GET: Employee
        [HttpGet]
        public ActionResult CreateEmployee()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CreateEmployee(Employee emp)
        {
            Response.Write("Employee ID : " + emp.EmpId + ", Employee Name : " + emp.EmpName + ", Employee Gender : " + emp.EmpGender);
            return View();
        }
    }
}