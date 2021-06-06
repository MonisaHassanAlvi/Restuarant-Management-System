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

    public partial class register : System.Web.UI.Page
    {
        int id = 0;
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-DPSNLJV;Initial Catalog=dbproject;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (nametxt.Text != null && passtxt.Text != null && addresstxt.Text != null && phonetxt.Text != null)
            {
                string message = "";
                string ins = "execute Sign_Up @username='" + nametxt.Text + "',@password='" + passtxt.Text + "',@address='" + addresstxt.Text + "', @phone='" + phonetxt.Text + "', @message='" + message + "'";
                SqlCommand com = new SqlCommand(ins, con);
                con.Open();
                com.ExecuteNonQuery();
                Response.Write(message);
                if (message == "Successfully Registered!")
                {
                    Response.Redirect("deliveryinfo.html");
                }
                con.Close();
            }

        }
      }
    }