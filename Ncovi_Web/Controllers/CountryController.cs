using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Ncov_BLL;
using Ncovi_Common.Rsp;

namespace Ncovi_Web.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CountryController : ControllerBase
    {
        private readonly CountrySvc _svc;

        public CountryController()
        {
            _svc = new CountrySvc();
        }

        [HttpPost("Get-all")]
        [Produces("application/json")]
        public IActionResult GetAllCountry()
        {
            var res = new SingleRsp();

            res = _svc.GetAllCountry();

            return Ok(res);
        }
    }
}