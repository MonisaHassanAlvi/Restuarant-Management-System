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
    public partial class stafflogin : System.Web.UI.Page
    {
        int id = 0;
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-DPSNLJV;Initial Catalog=dbproject;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlCommand com = new SqlCommand("stafflogin", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@type", staff.SelectedItem.Text);   //for position
            com.Parameters.AddWithValue("@username", username.Value);   //for username 
            com.Parameters.AddWithValue("@password", password.Value);  //for password
            con.Open();
            id = (Int32)com.ExecuteScalar();// for taking single value
            if (id == 0)  // comparing users from table 
            {
                Response.Write("Invalid username or password!");  //for unsucsseful login
            }
            else if (staff.SelectedItem.Text == "MANAGER")
            {
                Response.Redirect("manager.aspx?id=" + id + "");
            }
            else if (staff.SelectedItem.Text == "CASHIER")
            {
                Response.Redirect("cashier.aspx?id=" + id + "");
            }
            else if (staff.SelectedItem.Text == "DELIVERYMAN")
            {
                Response.Redirect("deliveryman.aspx?id=" + id + "");
            }

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("home.html");
        }
    }
}