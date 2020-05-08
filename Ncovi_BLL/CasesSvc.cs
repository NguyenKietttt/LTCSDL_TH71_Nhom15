using Ncovi_Common.BLL;
using Ncovi_Common.Req;
using Ncovi_Common.Rsp;
using Ncov_DAL;
using Ncov_DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.EntityFrameworkCore;
using Ncov_Common.Req;

namespace Ncov_BLL
{
    public class CasesSvc : GenericSvc<CasesRep, Cases>
    {
        #region Methods
        public SingleRsp AddCases()
        {
            var res = new SingleRsp();

            List<Cases> listCases = new List<Cases>();
            List<CaseReqByCountry> listCaseReqByCountries = CheckCases();

            listCaseReqByCountries.ForEach(p => listCases.Add(new Cases
            {
                Date = p.Date,
                Confirmed = p.TotalConfirmed,
                Deaths = p.TotalDeaths,
                Recovered = p.TotalRecovered,
                Active = p.TotalConfirmed - (p.TotalDeaths + p.TotalRecovered),
                CountryId = p.CountryCode
            }));

            res = _rep.AddCases(listCases);

            return res;
        }

        public object GetGlobalCases()
        {
            var listGlobalCases = _rep.GetGlobalCases();

            var res = listGlobalCases
                .GroupBy(x => true)
                .Select(x => new
                {
                    TotalConfirmed = Convert.ToInt32(x.Sum(y => y.Confirmed)),
                    TotalActive = Convert.ToInt32(x.Sum(y => y.Active)),
                    TotalDeaths = Convert.ToInt32(x.Sum(y => y.Deaths)),
                    TotalRecovered = Convert.ToInt32(x.Sum(y => y.Recovered))
                });

            return res;
        }

        public object GetCasePages(string keyWord, int page, int size)
        {
            var temp = _rep.GetAllCases_Have_CountryName().Where(p => p.CountryName.Contains(keyWord));

            var offSet = (page - 1) * size;
            var total = temp.Count();
            int totalPage = (total % size) == 0 ? (int)(total / size) : (int)((total / size) + 1);
            var data = temp.OrderByDescending(p => p.Confirmed).Skip(offSet).Take(size).ToList();

            var res = new
            {
                Data = data,
                totalRecord = total,
                totalPages = totalPage,
                Page = page,
                Size = size
            };

            return res;
        }

        private List<CaseReqByCountry> CheckCases()
        {
            CountrySvc countrySvc = new CountrySvc();

            var listCountryID = countrySvc.GetAllCountryID();

            List<CaseReqByCountry> listCountriesFromWeb = countrySvc.GetCase_ByCountry_FromWeb();

            var filteredList = listCountriesFromWeb.Where(p => listCountryID.Contains(p.CountryCode)).ToList();

            return filteredList;
        }
        #endregion
    }
}
