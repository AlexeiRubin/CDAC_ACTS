using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Assignment_1.Controllers
{
    public class TempDataTwoActionController : Controller
    {
        // GET: TempDataTwoAction
        public ActionResult FirstAction()
        {
            TempData["lolKey"] = "lolValue";
            return RedirectToAction("TempDataTwoAction");
        }

        public ActionResult TempDataTwoAction()
        {
            string str = TempData["lolKey"].ToString();
            return View();
        }
    }
}