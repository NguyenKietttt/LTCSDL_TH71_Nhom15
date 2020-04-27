using Ncovi_Common.DAL;
using Ncovi_Common.Req;
using Ncovi_Common.Rsp;
using Ncovi_DAL.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace Ncovi_DAL
{
    public class CasesRep : GenericRep<NcoviContext, Cases>
    {
        public SingleRsp AddCases(List<CaseReqByCountry> listCases)
        {
            var res = new SingleRsp();

            using (var context = new NcoviContext())
            {
                using (var tran = context.Database.BeginTransaction())
                {
                    try
                    {
                        listCases.ForEach(p => context.Add(new Cases
                        {
                            Date = p.Date,
                            Confirmed = p.TotalConfirmed,
                            Deaths = p.TotalDeaths,
                            Recovered = p.TotalRecovered,
                            Active = p.TotalConfirmed - (p.TotalDeaths + p.TotalRecovered),
                            CountryId = p.CountryCode
                        }));

                        context.SaveChanges();
                        tran.Commit();
                    }
                    catch (Exception ex)
                    {
                        tran.Rollback();
                        res.SetError(ex.StackTrace);
                    }
                }
            }

            return res;
        }
    }
}
