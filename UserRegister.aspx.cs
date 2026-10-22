using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1
{
    public partial class UserRegister : System.Web.UI.Page
    {
        DBConnection dbcon = new DBConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select max(reg_id) from login";
            string maxid = dbcon.fn_scalar(sel);
            int reg_id = 0;
            if (maxid == "")
            {
                reg_id = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(maxid);
                reg_id = newregid + 1;
            }
            string ins = "insert into User_reg values(" + reg_id + ",'" + tbname.Text + "'," + tbage.Text + ")";
            int i = dbcon.fn_nonquery(ins);
            if (i == 1)
            {
                string inse = "insert into login values("+reg_id+",'"+tbuser.Text+"','"+tbpass.Text+"','user','active')";
                int j = dbcon.fn_nonquery(inse);
                if (j == 1)
                {
                    Label5.Visible = true;
                    Label5.Text = "Registered Successfully";
                }
            }
        }

        protected void tbuser_TextChanged(object sender, EventArgs e)
        {
            string dup="select count(reg_id) from login  where username='"+tbuser.Text+"'";
            string d = dbcon.fn_scalar(dup);
            int id = Convert.ToInt32(d);
            if (id >= 1)
            {
                Label6.Visible = true;
                Label6.Text = "Username already exists";
                return;
            }
            else
            {
                Label6.Visible = false;
            }


        }
    }
}