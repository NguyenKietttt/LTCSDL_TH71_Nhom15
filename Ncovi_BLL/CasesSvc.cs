using Ncovi_Common.BLL;
using Ncovi_Common.Req;
using Ncovi_Common.Rsp;
using Ncov_DAL;
using Ncov_DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Ncov_BLL
{
    public class CasesSvc : GenericSvc<CasesRep, Cases>
    {
        #region Methods
        public SingleRsp AddCases()
        {
            var res = new SingleRsp();
            CountrySvc countrySvc = new CountrySvc();

            List<Countries> listCountries = countrySvc.All.ToList();
            List<CaseReqByCountry> listCountriesFromWeb = countrySvc.GetCase_ByCountry_FromWeb();

            var hashedIds = new HashSet<string>(listCountries.Select(p => p.CountryId));
            var filteredList = listCountriesFromWeb.Where(p => hashedIds.Contains(p.CountryCode)).ToList();

            res = _rep.AddCases(filteredList);

            return res;
        }
        #endregion
    }
}
