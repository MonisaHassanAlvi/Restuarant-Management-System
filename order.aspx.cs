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
    public partial class order : System.Web.UI.Page
    {
        int id;
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-DPSNLJV;Initial Catalog=dbproject;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            string get = Request["id"].ToString();
            id = Convert.ToInt32(get);
            if (!Page.IsPostBack)
            {
                filldrop();

            }
        }
        public DataTable getuserdata()
        {
            SqlCommand cmd = new SqlCommand("showdishes", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        private void filldrop()
        {
            DropDownList1.DataSource = getuserdata();
            DropDownList1.DataTextField = "item_name";
            DropDownList1.DataValueField = "item_name";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("---Select---", "0"));
        }
        protected void Click(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("addorder", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add("@otid", SqlDbType.VarChar, 20).Value = 3;
            com.Parameters.AddWithValue("@itemname", DropDownList1.SelectedItem.Value);
            com.Parameters.AddWithValue("@quantity", Int32.Parse(DropDownList5.SelectedItem.Value));
            com.Parameters.AddWithValue("@bill_id", id);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            alert.Text = "" + Int32.Parse(DropDownList5.SelectedItem.Value) + "  " + DropDownList1.SelectedItem.Value + " added to cart!";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("topping.aspx?id=" + id + "");
        }
        protected void Button1_Cart(object sender, EventArgs e)
        {
            Response.Redirect("cart.aspx?id=" + id + "");
        }
    }
}