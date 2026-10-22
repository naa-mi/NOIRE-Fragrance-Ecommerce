using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1
{
    public partial class Login : System.Web.UI.Page
    {
        DBConnection dbcon = new DBConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string log = "select count(reg_id) from login where username='" + tbuser.Text + "'and password='" + tbpass.Text + "'";
            string logid = dbcon.fn_scalar(log);
            int cid = Convert.ToInt32(logid);
            if (cid == 1)
            {
                string str1 = "select reg_id from login where username='" + tbuser.Text + "'and password='" + tbpass.Text + "'";
                string regid = dbcon.fn_scalar(str1);
                Session["user_id"] = regid;
                string str2= "select log_type from login where username='" + tbuser.Text + "'and password='" + tbpass.Text + "'";
                string logtype = dbcon.fn_scalar(str2);
                if (logtype == "admin"){
                    Response.Redirect("Admin_home.aspx");
                }
                else if (logtype == "user")
                {
                    Response.Redirect("home.aspx");
                }
            }
            else
            {
                Label3.Visible = true;
                LinkButton1.Visible = true;
                Label3.Text = "Not registered yet?" + " ";
            }

        }
    }
}