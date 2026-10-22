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
    public partial class ProductDisplay : System.Web.UI.Page
    {
        DBConnection db = new DBConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select * from product_table where prod_id=" + Session["prod_id"] + "";
                SqlDataReader dr = db.fn_reader(s);
                while (dr.Read())
                {
                    Image1.ImageUrl = dr["prod_img"].ToString();
                    Label1.Text = dr["prod_name"].ToString();
                    Label2.Text = dr["prod_description"].ToString();
                    Label3.Text = dr["prod_price"].ToString();

                   
                }
                int q = 1;
                TextBox1.Text = q.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["user_id"] == null)
            {
                Label4.Text = "Please login to add items to cart";
                return;
            }

            int tot = Convert.ToInt32(TextBox1.Text) * Convert.ToInt32(Label3.Text);
            string ins = "insert into cart values("+Session["prod_id"]+","+Session["user_id"]+","+TextBox1.Text+","+Label3.Text+","+tot+","+1+")";
            int n = db.fn_nonquery(ins);
            if (n == 1)
            {
                Label4.Text = "Item added to cart successfully!";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int q = Convert.ToInt32(TextBox1.Text);
            if (q > 1)
            {
                q--;
            }
            TextBox1.Text = q.ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int q = Convert.ToInt32(TextBox1.Text);
            q++;
            TextBox1.Text = q.ToString();
        }
    }
}