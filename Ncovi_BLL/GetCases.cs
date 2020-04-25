using Ncovi_Common.Req;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;

namespace Ncovi_BLL
{
    public class GetCase
    {
        #region Singleton
        private static GetCase instance;

        public static GetCase Instance
        {
            get
            {
                if (instance == null)
                    instance = new GetCase();
                return instance;
            }
            private set => instance = value;
        }

        private GetCase() { }
        #endregion

        public CaseReqRoot GetAPIRoot()
        {
            WebRequest request = HttpWebRequest.Create("https://api.covid19api.com/summary");
            WebResponse response = request.GetResponse();
            StreamReader reader = new StreamReader(response.GetResponseStream());

            string joke_Json = reader.ReadToEnd();
            var myJoke = JsonConvert.DeserializeObject<CaseReqRoot>(joke_Json);

            return myJoke;
        }

        public List<CaseReqByCountry> GetCaseByCountry()
        {
            List<CaseReqByCountry> listCase = GetAPIRoot().Countries;

            return listCase.ToList();
        }
    }
}
