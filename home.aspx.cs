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
    public partial class home : System.Web.UI.Page
    {
        DBConnection con = new DBConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select * from Cat_table";
                DataSet ds = con.fn_adapter(s);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            Session["cat_id"] = e.CommandArgument.ToString();
            Response.Redirect("Product.aspx");
        }
    }
}