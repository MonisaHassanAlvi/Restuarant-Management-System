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
    public partial class orderreservation : System.Web.UI.Page
    {
        int id = 0, seats = 0;
        string message;
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-DPSNLJV;Initial Catalog=dbproject;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            filldrop4();
        }

        public DataTable getuserdata4()
        {
            SqlCommand cmd = new SqlCommand("get_branch", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);
            return dt;
        }
        private void filldrop4()
        {
            branch.DataSource = getuserdata4();
            branch.DataTextField = "address";
            branch.DataBind();
        }

        protected void submit_Click(object sender, EventArgs e)
        {

            if (seat.SelectedItem.Text == "2") { seats = 2; }
            else if (seat.SelectedItem.Text == "4") { seats = 4; }
            else if (seat.SelectedItem.Text == "6") { seats = 6; }
            SqlCommand com = new SqlCommand("order_reservation", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add("@username", SqlDbType.VarChar, 20).Value = username.Value;
            com.Parameters.Add("@password", SqlDbType.VarChar, 20).Value = pass.Value;
            com.Parameters.Add("@branch", SqlDbType.VarChar, 50).Value = branch.SelectedItem.Text;
            com.Parameters.Add("@ordertype", SqlDbType.VarChar, 20).Value = "Dine in";
            com.Parameters.Add("@seats", SqlDbType.Int).Value = seats;
            com.Parameters.Add("@tid", SqlDbType.Int).Direction = ParameterDirection.Output;
            com.Parameters.Add("@message", SqlDbType.VarChar, 50).Direction = ParameterDirection.Output;
            con.Open();
            com.ExecuteNonQuery();
            message = com.Parameters["@message"].Value.ToString();
            alert();

        }
        public void alert()
        {


            Response.Write(message);

        }
    }

}