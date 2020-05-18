using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;

namespace Ncov_Common.Req
{
    public class NewsReq
    {
        public static int iD = 0;

        public int NewId { get; set; }

        public DateTime? Date { get; set; }

        public string Picture { get; set; }

        public string Link { get; set; }

        public string Title { get; set; }

        public string Description { get; set; }

        public NewsReq()
        {
            NewId = Interlocked.Increment(ref iD);
        }
    }
}
