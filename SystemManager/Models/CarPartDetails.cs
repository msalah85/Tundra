using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SystemManager.Models
{
    public class CarPartDetails
    {
        public int CarPartId { get; set; }
        public string CarPartName { get; set; }
        public string CarPartType {get;set;}
        public string MarkerNameEn { get; set; }
        public string MarkerNameAr { get; set; }
        public string ModelNameEn { get; set; }
        public string ModelNameAr { get; set; }
        public string Year { get; set; }
        public string Price { get; set; }
        public string ImageUrl { get; set; }
    }
}
