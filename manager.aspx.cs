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
    public partial class manager : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            string get = Request["id"].ToString();
            id = Convert.ToInt32(get);

            SqlConnection con = new SqlConnection("Data Source=DESKTOP-DPSNLJV;Initial Catalog=dbproject;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("bill_info", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@mid", id);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //bills_data.DataSource = dt;
            //bills_data.DataBind();


            SqlCommand cmd1 = new SqlCommand("showdishes", con);
            cmd1.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            GridView1.DataSource = dt1;
            GridView1.DataBind();



            SqlCommand cmd2 = new SqlCommand("showdeals", con);
            cmd2.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);
            GridView2.DataSource = dt2;
            GridView2.DataBind();



            SqlCommand cmd3 = new SqlCommand("showdeserts", con);
            cmd3.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
            DataTable dt3 = new DataTable();
            da3.Fill(dt3);
            GridView3.DataSource = dt3;
            GridView3.DataBind();



            SqlCommand cmd4 = new SqlCommand("showtoppinges", con);
            cmd4.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da4 = new SqlDataAdapter(cmd4);
            DataTable dt4 = new DataTable();
            da4.Fill(dt4);
            GridView4.DataSource = dt4;
            GridView4.DataBind();


            SqlCommand cmd5 = new SqlCommand("showbeverages", con);
            cmd5.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da5 = new SqlDataAdapter(cmd5);
            DataTable dt5 = new DataTable();
            da5.Fill(dt5);
            GridView5.DataSource = dt5;
            GridView5.DataBind();


            SqlCommand cmd6 = new SqlCommand("show_cashiers", con);
            cmd6.CommandType = CommandType.StoredProcedure;
            cmd6.Parameters.AddWithValue("@mid", id);
            SqlDataAdapter da6 = new SqlDataAdapter(cmd6);
            DataTable dt6 = new DataTable();
            da6.Fill(dt6);
            GridView6.DataSource = dt6;
            GridView6.DataBind();


            SqlCommand cmd7 = new SqlCommand("show_deliveryman", con);
            cmd7.CommandType = CommandType.StoredProcedure;
            cmd7.Parameters.AddWithValue("@mid", id);
            SqlDataAdapter da7 = new SqlDataAdapter(cmd7);
            DataTable dt7 = new DataTable();
            da7.Fill(dt7);
            GridView7.DataSource = dt7;
            GridView7.DataBind();

            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("addcashier.aspx?id=" + id + "");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("add_deliveryman.aspx?id=" + id + "");
        }
    }
}