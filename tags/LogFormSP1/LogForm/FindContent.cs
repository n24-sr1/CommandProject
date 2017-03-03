using System;
using System.Configuration;
using System.Web.UI;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using System.Net;
using System.Threading;
using System.IO;
using System.Text.RegularExpressions;

namespace LogForm
{
    public class FindContent
    {
        private string text { get; set; }
        private List<string> regulars { get; set; }

        public FindContent(string text)
        {
            this.text = text;
            regulars = new List<string>();
            regulars.Add(@"<\w{8}>\d{4}-\d{2}-\d{2}\s\d{2}:\d{2}:\d{2}<\/\w{8}>");
            regulars.Add(@"<\w{8}>\d{3}.\d{2}<\/\w{8}>");
            regulars.Add(@"<\w{11}>..................");
            regulars.Add(@"<\w{8}>\d\d<\/\w{8}>");
            regulars.Add(@"<\w{10}>\d\d<\/\w{10}>");
            regulars.Add(@"<\w{9}>\d.\d\d<\/\w{9}>");
            regulars.Add(@"<\w{7}>............");
            regulars.Add(@"<\w{13}>\d.\d\d<\/\w{13}>");
        }

        public List<string> FindWeater()
        {
            List<string> ReturnedWeather = new List<string>();

            foreach (var el in regulars)
            {
                Regex rx = new Regex(el, RegexOptions.Compiled | RegexOptions.IgnoreCase);

                MatchCollection matches = rx.Matches(text);

                List<string> lst = new List<string>();
                foreach (Match match in matches)
                {
                    GroupCollection groups = match.Groups;
                    lst.Add((match.ToString()));
                    var ar = lst[lst.Count - 1].Split(">".ToCharArray());

                    var ar1 = ar[1].Split("<".ToCharArray());
                    ReturnedWeather.Add(ar1[0]);

                }
            }
            ReturnedWeather.RemoveAt(0);
            return ReturnedWeather;
        }
    }
}