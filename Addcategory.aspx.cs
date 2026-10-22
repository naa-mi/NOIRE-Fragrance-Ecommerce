using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1
{
    public partial class Addcategory : System.Web.UI.Page
    {
        DBConnection db = new DBConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/Photos/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));

            string str = "insert into Cat_table values('"+TextBox1.Text+"','" +p+ "','"+TextBox2.Text+"')";
         

            int i = db.fn_nonquery(str);
            if (i == 1)
            {
                Label4.Visible = true;
                Label4.Text = "Category added successfully";
            }
        }
    }
}