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
    public partial class Product : System.Web.UI.Page
    {
        DBConnection con = new DBConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select * from product_table where cat_id=" + Session["cat_id"];
                DataSet ds = con.fn_adapter(s);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }

        protected void imgProduct_Command(object sender, CommandEventArgs e)
        {
            Session["prod_id"] = e.CommandArgument.ToString();
            Response.Redirect("ProductDisplay.aspx");
        }
    }
}