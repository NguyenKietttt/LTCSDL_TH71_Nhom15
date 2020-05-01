using Ncovi_Common.DAL;
using Ncov_DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Ncov_DAL
{
    public class CountryRep : GenericRep<NcovContext, Countries>
    {
        #region Methods
        public IQueryable<Countries> GetAllCountry()
        {
            var res = All;

            return res;
        }
        #endregion
    }
}
