using Assignment_4.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Assignment_4.Controllers
{
    public class ProductController : Controller
    {
        // GET: Product
        public ActionResult GetProductDetails()
        {
            List<Product> Productlist = new List<Product>()
            {
                new Product{ ProductId = 1, ProductName = "lol", ProductCategory = "lolCategory", ProductDescription = "lolDescription", ProductPrice = 7},
                new Product{ ProductId = 2, ProductName = "lmao", ProductCategory = "lmaoCategory", ProductDescription = "lmaoDescription", ProductPrice = 77},
                new Product{ ProductId = 3, ProductName = "rotfl", ProductCategory = "rotflCategory", ProductDescription = "rotflDescription", ProductPrice = 777}
            };
            return View(Productlist);
        }
    }
}