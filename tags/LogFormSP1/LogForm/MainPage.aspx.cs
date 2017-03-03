using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LogForm
{
    public partial class MainPage : System.Web.UI.Page
    {
        List<string> weather;
        protected void Page_Load(object sender, EventArgs e)
        {
            GetCodeOfPage get = new GetCodeOfPage();

            FindContent content = new FindContent(get.getResponse(@"http://www.eurometeo.ru/ukraina/lvyvska-oblast/lviv/export/xml/data/"));
            weather=content.FindWeater();
            foreach (var el in weather)
                Textbox1.Text += el+Environment.NewLine;
            do_something();
        }
        public void do_something()
        {

            for (int i = 0; i < 8; i++)
            {
                Textbox2.Text += Environment.NewLine;

                for (int j = 0; j < 12; j++)
                {
                    Textbox2.Text += weather[j * 8 + i];
                    Textbox2.Text += Environment.NewLine;
                }
            }
        }
    }
}