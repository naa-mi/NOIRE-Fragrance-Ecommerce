using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Project1
{
    public partial class Addproduct : System.Web.UI.Page
    {
        DBConnection db = new DBConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select cat_id,cat_name from Cat_table";
                DataSet ds = db.fn_adapter(s);
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "cat_name";
                DropDownList1.DataValueField = "cat_id";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "--SELECT--");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/Photos/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));

            string cat_id = DropDownList1.SelectedValue;

            string str = "insert into product_table values(" +cat_id+ ",'" +TextBox1.Text+ "','"+p+"','" + TextBox2.Text + "',"+TextBox3.Text+ "," + TextBox4.Text + ")";


            int i = db.fn_nonquery(str);
            if (i == 1)
            {
                Label6.Visible = true;
                Label6.Text = "Product added successfully";
            }
        }
    }
}