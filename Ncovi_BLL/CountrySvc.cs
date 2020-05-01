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

            var m = _rep.GetAllCountry();
            res.Data = m;

            return res;
        }

        public List<CaseReqByCountry> GetCase_ByCountry_FromWeb()
        {
            string url = "https://api.covid19api.com/summary";

            List<CaseReqByCountry> listCase = GetData.Instance.ConvertJson_ToClass<CaseReqRoot>(url).Countries;

            return listCase.ToList();
        }
        #endregion
    }
}
