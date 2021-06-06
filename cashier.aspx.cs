using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace project
{
    public partial class cashier : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            string get = Request["id"].ToString();
            id = Convert.ToInt32(get);

            SqlConnection con = new SqlConnection("Data Source=DESKTOP-DPSNLJV;Initial Catalog=dbproject;Integrated Security=True");
            con.Open();


            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("takeaway.aspx?id=" + id + "");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("orderreservation.aspx?id=" + id + "");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("deliveryinfo.aspx?id=" + id + "");
        }
    }
}