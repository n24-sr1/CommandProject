using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using LogForm;

namespace LogForm
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private WorkWithDataBase db { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
           db = new WorkWithDataBase();
        }
        protected void ConfirmCredentials(object sender, EventArgs e)
        {

            if (db.CheckUser(usr.Value, pwd.Value) == true)
            {
                Response.Redirect("MainPage.aspx");
            }
            else
            {
                Response.Redirect("404.aspx");
            }
        }

    }

   
 
}