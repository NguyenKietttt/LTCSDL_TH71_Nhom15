using System;
using System.Collections.Generic;

namespace Ncovi_DAL.Models
{
    public partial class Countries
    {
        public Countries()
        {
            Cases = new HashSet<Cases>();
        }

        public string CountryId { get; set; }
        public string Name { get; set; }
        public double? Latitude { get; set; }
        public double? Longitude { get; set; }

        public virtual ICollection<Cases> Cases { get; set; }
    }
}
