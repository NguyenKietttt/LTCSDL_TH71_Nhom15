using System;
using Ncov_BLL;

namespace Jobs
{
    class Program
    {
        static void Main(string[] args)
        {
            Add_Cases();
            Add_News();
            AddCases_By_Cities();
            AddPatients();
        }

        public static void Add_Cases()
        {
            CasesSvc casesSvc = new CasesSvc();

            casesSvc.AddCases();
        }

        public static void Add_News()
        {
            NewsSvc newsSvc = new NewsSvc();

            newsSvc.AddNews();
        }

        public static void AddCases_By_Cities()
        {
            CitySvc citySvc = new CitySvc();

            citySvc.CheckCities();
        }

        public static void AddPatients()
        {
            PatientSvc patientSvc = new PatientSvc();

            patientSvc.CheckPatients();
        }
    }
}
