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
        public List<Countries> GetAllCountry()
        {
            using (var context = new NcovContext())
            {
                var res = context.Countries.ToList();

                return res;
            }
        }

        public HashSet<string> GetAllCountryID()
        {
            using (var context = new NcovContext())
            {
                var res = context.Countries.Select(p => p.CountryId).ToHashSet();

                return res;
            }
        }
        #endregion
    }
}
