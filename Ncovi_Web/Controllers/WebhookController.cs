using System;
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
		public WebhookController()
		{
			_svc = new CasesSvc();
		}
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

			
			var response = new WebhookResponse();
			
	
			
			string name = "Tai";
			StringBuilder sb = new StringBuilder();
			
	
			if (askingName) {
				sb.Append("The name of library is: "+name+"; ");
			}

			if (askingCountryCase) {
				var countryAsking = pas.Fields["country"].StringValue;
				string nameCountry = countryAsking;
				var temp = _svc.GetCase_byCountry(nameCountry);
				sb.Append("This country have "+ temp.Active + " Active and about" + temp.Deaths + " people died.");

			}
			

			if (sb.Length == 0) {
				sb.Append("Greetings from our Webhook API!");
			}

			response.FulfillmentText = sb.ToString();

			return Json(response);
		}
    }
}