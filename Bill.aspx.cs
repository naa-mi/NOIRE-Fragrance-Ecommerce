using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Project1
{
    public partial class Bill : System.Web.UI.Page
    {
        DBConnection con = new DBConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["user_id"] != null && Session["lastid"] != null)
                {
                    string userid = Session["user_id"].ToString();
                    string orderid = Session["lastid"].ToString();

                    string s = "select order_id, order_date from order_table where order_id="
                        + orderid + " and user_id=" + userid;

                    SqlDataReader dr = con.fn_reader(s);

                    while (dr.Read())
                    {
                        Label23.Text = dr["order_id"].ToString();
                        Label24.Text = Convert.ToDateTime(dr["order_date"]).ToString("dd MMM yyyy");
                    }
                    dr.Close();

                    Label25.Text = Session["name"].ToString();
                    Label26.Text = Session["address"].ToString();
                    Label27.Text = Session["phone"].ToString();

                    string d = "select product_table.prod_name, order_details.quantity, " +
                        "order_details.price, order_details.subtotal " +
                        "from product_table inner join order_details " +
                        "on product_table.prod_id = order_details.prod_id " +
                        "where order_details.order_id=" + orderid;

                    DataSet ds = con.fn_adapter(d);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();

                   
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
          
            Response.Redirect("Payment.aspx");
        }
    }
}
