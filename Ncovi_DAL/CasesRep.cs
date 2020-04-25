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
                        foreach (var item in listCases)
                        {
                            var t = context.Add(new Cases
                            {
                                Date = item.Date,
                                Confirmed = item.TotalConfirmed,
                                Deaths = item.TotalDeaths,
                                Recovered = item.TotalRecovered,
                                Active = item.TotalConfirmed - (item.TotalDeaths + item.TotalRecovered),
                                CountryId = item.CountryCode
                            });
                        }

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
