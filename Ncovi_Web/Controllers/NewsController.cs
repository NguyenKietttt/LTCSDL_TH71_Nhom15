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
    public class NewsController : ControllerBase
    {
        private readonly NewsSvc _svc;

        public NewsController()
        {
            _svc = new NewsSvc();
        }

        [HttpGet("Add")]
        public IActionResult GetAllCountry()
        {
            var res = new SingleRsp();

            res = _svc.AddNews();

            return Ok(res);
        }

        [HttpPost("Get-all")]
        public IActionResult GetAllNews()
        {
            var res = new SingleRsp();

            res = _svc.GetListNews();

            return Ok(res);
        }
    }
}