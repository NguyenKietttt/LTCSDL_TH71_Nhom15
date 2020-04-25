using Ncovi_Common.BLL;
using Ncovi_Common.Rsp;
using Ncovi_DAL;
using Ncovi_DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Ncovi_BLL
{
    public class CountrySvc : GenericSvc<CountryRep, Countries>
    {
        public SingleRsp GetAllCountry()
        {
            var res = new SingleRsp();

            var m = _rep.GetAllCountry();
            res.Data = m;

            return res;
        }
    }
}
