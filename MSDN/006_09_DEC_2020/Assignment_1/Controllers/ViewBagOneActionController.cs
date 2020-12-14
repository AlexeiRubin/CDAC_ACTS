using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Assignment_1.Controllers
{
    public class ViewBagOneActionController : Controller
    {
        // GET: ViewBagOneAction
        public ActionResult ViewBagOneAction()
        {
            ViewBag.CurrentDateTime = DateTime.Now;
            return View();
        }
    }
}