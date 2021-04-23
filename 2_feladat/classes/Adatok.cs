using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2_feladat.classes
{
    class Adatok
    {
        private string Name;
        public string name { get; set; }
        private string Brand;
        public string brand { get; set; }
        private string Model;
        public string model { get; set; }


        public Adatok(string name, string brand, string model)
        {
            this.name = name;
            this.brand = brand;
            this.model = model;
        }
    }
}
