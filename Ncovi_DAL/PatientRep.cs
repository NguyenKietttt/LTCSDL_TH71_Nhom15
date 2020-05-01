using Ncov_DAL.Models;
using Ncovi_Common.DAL;
using Ncovi_Common.Rsp;
using System;
using System.Collections.Generic;
using System.Text;
namespace Ncov_DAL
{
    public class PatientRep : GenericRep<NcovContext, Patients>
    {
        #region Methods
        public SingleRsp AddPatients(List<Patients> listPatients)
        {
            var res = new SingleRsp();

            using (var context = new NcovContext())
            {
                using (var tran = context.Database.BeginTransaction())
                {
                    try
                    {
                        context.AddRange(listPatients);

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

        public SingleRsp UpdatePatients(List<Patients> listPatients)
        {
            var res = new SingleRsp();

            using (var context = new NcovContext())
            {
                using (var tran = context.Database.BeginTransaction())
                {
                    try
                    {
                        context.UpdateRange(listPatients);

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
        #endregion
    }
}
