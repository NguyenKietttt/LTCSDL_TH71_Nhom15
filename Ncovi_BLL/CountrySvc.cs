using Ncovi_Common.BLL;
using Ncovi_Common.Rsp;
using Ncov_DAL;
using Ncov_DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Ncovi_Common.Req;

namespace Ncov_BLL
{
    public class CountrySvc : GenericSvc<CountryRep, Countries>
    {
        #region Methods
        public SingleRsp GetAllCountry()
        {
            var res = new SingleRsp();

            var countries = _rep.GetAllCountry();
            res.Data = countries;

            return res;
        }

        public HashSet<string> GetAllCountryID()
        {
            var res = _rep.GetAllCountryID();

            return res;
        }
        #endregion
    }
}
