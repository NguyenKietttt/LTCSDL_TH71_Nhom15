using System;
using System.Collections.Generic;
using System.Text;

namespace Ncov_Common.Req
{
    public class CasesName
    {
        public string CountryName { get; set; }
        public int? Confirmed { get; set; }
        public int? Deaths { get; set; }
        public int? Recovered { get; set; }
        public int? Active { get; set; }
    }
}
