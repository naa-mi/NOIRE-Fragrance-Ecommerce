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
    public partial class AddtoCart : System.Web.UI.Page
    {
        DBConnection con = new DBConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindata();
            }
        }
        public void bindata()
        {
            string s = "select  cart.cart_id,product_table.prod_img,product_table.prod_name,cart.quantity, cart.price,cart.subtotal from product_table INNER JOIN cart ON product_table.prod_id=cart.prod_id where cart.user_id=" + Session["user_id"] + "";
            DataSet ds = con.fn_adapter(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            decimal total = 0;

            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                total = total + Convert.ToDecimal(GridView1.Rows[i].Cells[4].Text.Replace("₹ ", ""));
            }

            lblsubtotal.Text = "₹ " + total.ToString("0.00");
            lbltotal.Text = "₹ " + total.ToString("0.00");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "delete from cart where cart_id=" + getid + "";
            int j = con.fn_nonquery(del);
            bindata();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            bindata();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox textquant= (TextBox)GridView1.Rows[i].Cells[3].Controls[0];
            string up = "update cart set quantity='" + textquant.Text + "', subtotal=price*"+textquant.Text+" where cart_id="+getid+"";
            int j = con.fn_nonquery(up);
            GridView1.EditIndex = -1;
            bindata();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            bindata();
        }
    }
}