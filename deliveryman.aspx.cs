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
    public partial class delivery : System.Web.UI.Page
    {
        int id;
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-DPSNLJV;Initial Catalog=dbproject;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            string get = Request["id"].ToString();
            id = Convert.ToInt32(get);
            SqlCommand cmd7 = new SqlCommand("delivery_detail", con);
            cmd7.CommandType = CommandType.StoredProcedure;
            cmd7.Parameters.Add("@id", SqlDbType.Int).Value = id;
            con.Open();
            SqlDataAdapter da7 = new SqlDataAdapter(cmd7);
            DataTable dt7 = new DataTable();
            da7.Fill(dt7);
            GridView7.DataSource = dt7;
            GridView7.DataBind();
        }
        public void alert()
        {
            Response.Redirect("deliveryman.aspx?id=" + id + "");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            SqlCommand com = new SqlCommand("mark_paid", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add("@id", SqlDbType.Int).Value = id;
            com.ExecuteNonQuery();
            alert();
            con.Close();
        }
    }
}