using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Assignment_1.Controllers
{
    public class TempDataOneActionController : Controller
    {
        // GET: TempDataOneAction
        public ActionResult TempDataOneAction()
        {
            TempData["CurrentDateTime"] = DateTime.Now;
            return View();
        }
    }
}