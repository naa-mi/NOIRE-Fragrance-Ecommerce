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
    public partial class Editproducts : System.Web.UI.Page
    {
        DBConnection dbcon = new DBConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindata();
            }

        }
        public void bindata()
        {
            string data = "select * from product_table";
            DataSet ds = dbcon.fn_adapter(data);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "delete from product_table where prod_id=" + getid + "";
            int j = dbcon.fn_nonquery(del);
            bindata();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            bindata();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox txtname = (TextBox)GridView1.Rows[i].Cells[3].Controls[0];
            TextBox txtdescription = (TextBox)GridView1.Rows[i].Cells[5].Controls[0];
            TextBox txtprice = (TextBox)GridView1.Rows[i].Cells[6].Controls[0];
            TextBox txtstock = (TextBox)GridView1.Rows[i].Cells[7].Controls[0];

            FileUpload fu = (FileUpload)GridView1.Rows[i].FindControl("FileUpload1");
            string photo = GridView1.DataKeys[i].Values["prod_img"].ToString();
            if (fu.HasFile)
            {
                string filename = fu.FileName;
                fu.SaveAs(Server.MapPath("~/Photos/" + filename));
                photo = "~/Photos/" + filename;

            }

            string up = "update product_table set prod_name='" + txtname.Text + "',prod_img='" + photo + "',prod_description='" + txtdescription.Text + "',prod_price="+txtprice.Text+",prod_stock="+txtstock.Text+" where prod_id=" + getid + "";
            int j = dbcon.fn_nonquery(up);
            GridView1.EditIndex = -1;
            bindata();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            bindata();
        }
    }
}