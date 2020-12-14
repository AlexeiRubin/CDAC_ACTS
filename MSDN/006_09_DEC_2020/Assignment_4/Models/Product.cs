using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Assignment_4.Models
{
    public class Product
    {
        public int ProductId { get; set; }

        public string ProductName { get; set; }

        public string ProductCategory { get; set; }

        public string ProductDescription { get; set; }

        public decimal ProductPrice { get; set; }
    }
}