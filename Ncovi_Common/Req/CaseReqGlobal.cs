﻿using System;
using System.Collections.Generic;
using System.Text;

namespace Ncovi_Common.Req
{
    public class CaseReqGlobal
    {
        public int NewConfirmed { get; set; }
        public int TotalConfirmed { get; set; }
        public int NewDeaths { get; set; }
        public int TotalDeaths { get; set; }
        public int NewRecovered { get; set; }
        public int TotalRecovered { get; set; }
    }
}
