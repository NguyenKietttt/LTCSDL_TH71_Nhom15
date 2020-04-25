using Ncovi_Common.DAL;
using Ncovi_DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Ncovi_DAL
{
    public class CountryRep : GenericRep<NcoviContext, Countries>
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
