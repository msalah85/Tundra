using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SystemManager.Models
{
    [Serializable]
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
        public decimal Price { get; set; }
        public string Description { get; set; }
        public string ImageUrl { get; set; }
        public bool IsActive { get; set; }
        public List<string> ImagesUrl { get; set; }
    }
}
