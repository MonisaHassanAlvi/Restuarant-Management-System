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
    public partial class takeaway : System.Web.UI.Page
    {
        int id = 0;
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-DPSNLJV;Initial Catalog=dbproject;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                filldrop4();
            }
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
        protected void Click(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("o_delivery", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add("@username", SqlDbType.VarChar, 20).Value = username.Value;
            com.Parameters.Add("@password", SqlDbType.VarChar, 20).Value = pass.Value;
            //com.Parameters.Add("@cashid", SqlDbType.Int).Value=id;
            com.Parameters.Add("@branch", SqlDbType.VarChar, 50).Value = branch.SelectedItem.Value;
            con.Open();
            id = (Int32)com.ExecuteScalar();
            con.Close();
            if (id == 0)
            {
                Response.Write("Invalid username or password");
            }
            else
            {
                Response.Redirect("dishes.aspx?id=" + id + "");
            }
        }
    }
}
