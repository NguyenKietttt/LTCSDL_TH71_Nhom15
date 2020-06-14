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
using System.Collections.Immutable;
using Google.Apis.Util;

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
			
			//check paramater 
			var pas = request.QueryResult.Parameters;
			var askingName = pas.Fields.ContainsKey("name") && pas.Fields["name"].ToString().Replace('\"', ' ').Trim().Length > 0;
			var askingCountry = pas.Fields.ContainsKey("country");
			var askingCase = pas.Fields.ContainsKey("case");
			var askingAlive = pas.Fields.ContainsKey("alive");
			var askingDead = pas.Fields.ContainsKey("dead");
			var askingGlobal = pas.Fields.ContainsKey("global");

			//create response 
			var response = new WebhookResponse();
			
	
			
			string name = "Tai";
			StringBuilder sb = new StringBuilder();
			
	
			if (askingName) {
				sb.Append("The name of library is: "+name+"; ");
			}
			//get value from CasesSvc by country-code
			var countryAsking = pas.Fields["country"].StringValue;
			string nameCountry = countryAsking;
			var temp = _svc.GetCase_byCountry(nameCountry);

			if (temp == null)
			{
				sb.Append("I don't know which country do you want.Is it have another name.");
			}
			else {
				if (askingGlobal) {

					sb.Append("You can go back on our overview page to check this infromation. ");
				}

				if (askingCountry && askingCase && !askingAlive && !askingDead) {
						sb.Append("This country have " + temp.Active + " Active and about " + temp.Deaths + " people died and total " + temp.Confirmed + " people confirmed.");
		
				}
				if (askingCountry && askingAlive || (askingCountry && askingCase && askingAlive)) {

					sb.Append("The " + temp.CountryName + " have " + temp.Active + " alive people ");

				}
				if (askingCountry && askingDead || (askingCountry && askingCase && askingDead))
				{
					if (askingAlive)
					{
						sb.Append("and they" + " have " + temp.Deaths + " dead people ");
					}
					else
					{
						sb.Append("The " + temp.CountryName + " have " + temp.Deaths + " dead people ");
					}
				}
				if (askingCountry && !askingCase && !askingAlive && !askingDead)
				{
					
						sb.Append("Which information do you want from " + temp.CountryName + ". Ex: case, dead people, alive,... ");

					
				}
			}

			if (sb.Length == 0) {
				sb.Append("Greetings from our Webhook API!");
			}
	
			response.FulfillmentText = sb.ToString();

			return Json(response);
		}
    }
}