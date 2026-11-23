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
    public partial class Payment : System.Web.UI.Page
    {
        DBConnection con = new DBConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label18.Visible = false;

                string s1 = "select order_id,subtotal from order_table where order_id=" + Session["lastid"];
                SqlDataReader dr1 = con.fn_reader(s1);

                while (dr1.Read())
                {
                    Label8.Text = dr1["order_id"].ToString();
                    Label9.Text = dr1["subtotal"].ToString();
                    Label10.Text = "50";
                    Label12.Text = (Convert.ToInt32(dr1["subtotal"]) + 50).ToString();
                }

                string s = "select acnt_no,ifsc from account_table where user_id=" + Session["user_id"] + "";
                SqlDataReader dr = con.fn_reader(s);
                while (dr.Read())
                {
                    TextBox1.Text = dr["acnt_no"].ToString();
                    TextBox2.Text = dr["ifsc"].ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            PaymentService.ServiceClient bankobj = new PaymentService.ServiceClient();
            int b = bankobj.GetBalance(TextBox1.Text);
            int amount = Convert.ToInt32(Label12.Text);
            if (b >= amount)
            {
                bankobj.UpdateBalance(TextBox1.Text, amount);

                string g = "select order_details.prod_id from order_details INNER JOIN order_table ON order_details.order_id = order_table.order_id where order_table.user_id=" + Session["user_id"] + " and order_table.order_id=" + Session["lastid"] + " and order_table.order_status='ordered'";
                SqlDataReader dr = con.fn_reader(g);
                List<int> lt = new List<int>();
                while (dr.Read())
                {
                    lt.Add(Convert.ToInt32(dr["prod_id"]));
                }

                foreach (int pid in lt)
                {
                    string s = "select order_details.quantity from order_details INNER JOIN order_table ON order_details.order_id=order_table.order_id where order_table.order_id=" + Session["lastid"] + " and order_table.order_status='ordered' and order_details.prod_id=" + pid + "";
                    string qty = con.fn_scalar(s);

                    string p = "select prod_stock from product_table where prod_id=" + pid + "";
                    string stock = con.fn_scalar(p);

                    int balance;
                    balance = Convert.ToInt32(stock) - Convert.ToInt32(qty);

                    string up = "update product_table set prod_stock=" + balance + " where prod_id=" + pid + "";
                    int up1 = con.fn_nonquery(up);


                }
                string up2 = "update order_table set order_status='paid' where order_id=" + Session["lastid"] + " and user_id=" + Session["user_id"] + " and order_status='ordered'";
                int up3 = con.fn_nonquery(up2);

                Response.Redirect("paysuccess.aspx");
            }

            else
            {
                Label18.Visible = true;
                Label18.Text = "Insufficient Balance!";
            }


        }
    }
}
    
