using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class messagealert : System.Web.UI.Page
    {
        string getMessage = null;
        string link = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            getMessage = Request["message"].ToString();
            link = Request["link"].ToString();
            lbmessage.Text = getMessage;

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect(link);
        }
    }
}