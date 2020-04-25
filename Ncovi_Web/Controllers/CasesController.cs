using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Ncovi_BLL;
using Ncovi_Common.Rsp;

namespace Ncovi_Web.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CasesController : ControllerBase
    {
        private readonly CasesSvc _svc;

        public CasesController()
        {
            _svc = new CasesSvc();
        }

        [HttpPost("Add-cases")]
        public IActionResult AddCases()
        {
            var res = new SingleRsp();

            res = _svc.AddCases();

            return Ok(res);
        }
    }
}