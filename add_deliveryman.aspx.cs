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
    public partial class add_deliveryman : System.Web.UI.Page
    {
        int id = 0;
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-DPSNLJV;Initial Catalog=dbproject;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            string get = Request["id"].ToString();
            id = Convert.ToInt32(get);

        }
        string message;

        public void alert()
        {
            Response.Write(message);
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

            SqlCommand com = new SqlCommand("add_deliveryman", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add("@deliveryman_name", SqlDbType.VarChar, 20).Value = username.Value;
            com.Parameters.Add("@password", SqlDbType.VarChar, 20).Value = pass.Value;
            com.Parameters.Add("@managerid", SqlDbType.Int).Value = id;
            com.Parameters.Add("@area", SqlDbType.VarChar, 30).Value = area.Value;
            com.Parameters.Add("@message", SqlDbType.VarChar, 50).Direction = ParameterDirection.Output;
            con.Open();
            com.ExecuteNonQuery();
            message = com.Parameters["@message"].Value.ToString();
            alert();
            if (message == "INSERTION SUCCESSFULL!")
            {
                string m1 = "Deliveryman Added successfully!!!", m2 = "manager.aspx?id=" + id + "";
                Response.Redirect("messagealert.aspx?message=" + m1 + "&link=" + m2 + "");
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("manager.aspx?id=" + id + "");
        }
    }
}