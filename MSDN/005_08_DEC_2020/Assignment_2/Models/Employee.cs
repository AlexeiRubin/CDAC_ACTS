﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Assignment_2.Models
{
    public class Employee
    {
        public int Id { get; set; }
        
        public string Name { get; set; }
        
        public string Gender { get; set; }
        
        public string Department { get; set; }
        
        public int AddressId { get; set; }
    }
}