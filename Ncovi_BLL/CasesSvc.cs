using Ncovi_Common.BLL;
using Ncovi_Common.Req;
using Ncovi_Common.Rsp;
using Ncovi_DAL;
using Ncovi_DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Ncovi_BLL
{
    public class CasesSvc : GenericSvc<CasesRep, Cases>
    {
        public SingleRsp AddCases()
        {
            var res = new SingleRsp();
            CountrySvc countrySvc = new CountrySvc();

            List<Countries> countries = countrySvc.All.ToList();
            List<CaseReqByCountry> countryByAPI = GetCase.Instance.GetCaseByCountry();

            var hashedIds = new HashSet<string>(countries.Select(p => p.CountryId));
            var filteredList = countryByAPI.Where(p => hashedIds.Contains(p.CountryCode)).ToList();

            res = _rep.AddCases(filteredList);

            return res;
        }
    }
}
