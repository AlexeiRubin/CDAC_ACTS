using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Assignment_1.Controllers
{
    public class ViewDataTwoActionController : Controller
    {
        // GET: ViewDataTwoAction
        public ActionResult FirstAction()
        {
            ViewData["CurrentDateTime"] = DateTime.Now;
            return RedirectToAction("ViewDataTwoAction");
        }

        public ActionResult ViewDataTwoAction()
        {
            //ViewBag is for current request/action only therefore str = null here.
            //NO Exception is raised here.
            string str = ViewData["CurrentDateTime"].ToString();
            return View();
        }
    }
}