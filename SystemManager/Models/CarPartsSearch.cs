using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SystemManager.Models
{
    public class CarPartsSearch
    {
        public int CarPartTypeId { get; set; }
        public int ModelId { get; set; }
        public int MakerId { get; set; }
        public int FromYearId { get; set; }
        public int ToYearId { get; set; }
        public string StartPrice { get; set; }
        public string EndPrice { get; set; }
        public string Search { get; set; }
    }
}
