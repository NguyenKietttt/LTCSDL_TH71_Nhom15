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
            List<CaseReqByCountry> addList = new List<CaseReqByCountry>();

            List<Countries> countries = countrySvc.All.ToList();
            List<CaseReqByCountry> country2s = GetCase.Instance.GetCaseByCountry();

            foreach (var i in countries)
            {
                foreach (var j in country2s)
                {
                    if (i.CountryId == j.CountryCode)
                    {
                        addList.Add(j);
                        country2s.Remove(j);
                        break;
                    }
                }
            }

            res = _rep.AddCases(addList);

            return res;
        }
    }
}
