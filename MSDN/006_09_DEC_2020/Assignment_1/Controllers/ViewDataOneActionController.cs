using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Assignment_1.Controllers
{
    public class ViewDataOneActionController : Controller
    {
        // GET: ViewDataOneAction
        public ActionResult ViewDataOneACtion()
        {
            ViewData["CurrentDateTime"] = DateTime.Now;
            return View();
        }
    }
}