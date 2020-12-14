using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Assignment_2.Models
{
    public class Address
    {
        public int AddressId { get; set; }

        public string City { get; set; }

        public string State { get; set; }

        public int Pin { get; set; }

        public string Country { get; set; }
    }
}