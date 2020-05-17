﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Google.Cloud.Dialogflow.V2;
using Google.Protobuf;
using System.IO;
using System.Text;
using Ncov_BLL;
using Ncovi_Common.Rsp;
using Ncov_Common.Req;

namespace Ncov_Web.Controllers
{
    [Route("webhook")]
	[ApiController]
    public class WebhookController : Controller
    {
        private static readonly JsonParser jsonParser = new JsonParser(JsonParser.Settings.Default.WithIgnoreUnknownFields(true));
        private readonly CasesSvc _svc;
		[HttpPost]
		public async Task<JsonResult> GetWebhookResponse()
		{
			WebhookRequest request;
			using (var reader = new StreamReader(Request.Body))
			{
				string requestAsString;
				// (...)
				requestAsString = await reader.ReadToEndAsync();
				request = jsonParser.Parse<WebhookRequest>(requestAsString);
			}
			

			var pas = request.QueryResult.Parameters;
			var askingName = pas.Fields.ContainsKey("name") && pas.Fields["name"].ToString().Replace('\"', ' ').Trim().Length > 0;
			var askingCountryCase = pas.Fields.ContainsKey("country");
			var countryAsking = pas.Fields["country"].StringValue;
			var response = new WebhookResponse();
			
			var temp = _svc.GetCase_byCountry(countryAsking);
			var res = new SingleRsp();
			res.Data = temp;	
			
			string name = "Tai";
			StringBuilder sb = new StringBuilder();
			
	
			if (askingName) {
				sb.Append("The name of library is: "+name+"; ");
			}

			if (askingCountryCase) {
				sb.Append("This country have"+ temp[1].Active +"Active ");
			}
			

			if (sb.Length == 0) {
				sb.Append("Greetings from our Webhook API!");
			}

			response.FulfillmentText = sb.ToString();

			return Json(response);
		}
    }
}