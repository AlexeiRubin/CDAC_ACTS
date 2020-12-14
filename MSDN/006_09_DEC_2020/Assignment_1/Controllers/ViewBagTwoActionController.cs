using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Assignment_1.Controllers
{
    public class ViewBagTwoActionController : Controller
    {
        // GET: ViewBagTwoAction

        public ActionResult FirstAction()
        {
            ViewBag.CurrentDateTime = DateTime.Now;
            return RedirectToAction("ViewBagTwoAction");
        }

        public ActionResult ViewBagTwoAction()
        {
            //ViewBag is for current request/action only therefore str = null here.
            //Exception is raised here.
            string str = ViewBag.CurrentDateTime;
            return View();
        }
    }
}