using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Ncov_BLL;
using Ncovi_Common.Rsp;

namespace Ncov_Web.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CityController : ControllerBase
    {
        private readonly CitySvc _svc;

        public CityController()
        {
            _svc = new CitySvc();
        }

        [HttpGet("Add-or-Update")]
        public IActionResult AddCases()
        {
            _svc.CheckCities();

            return Ok();
        }
    }
}