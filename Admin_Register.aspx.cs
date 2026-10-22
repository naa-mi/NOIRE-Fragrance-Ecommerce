using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1
{
    public partial class Admin_Register : System.Web.UI.Page
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
            string ins = "insert into Admin_reg values(" + reg_id + ",'" + tbname.Text + "','" + tbemail.Text + "')";
            int i = dbcon.fn_nonquery(ins);
            if (i == 1)
            {
                string inse = "insert into login values(" + reg_id + ",'" + tbuser.Text + "','" + tbpass.Text + "','admin','active')";
                int j = dbcon.fn_nonquery(inse);
                if (j == 1)
                {
                    Label5.Visible = true;
                    Label5.Text = "Registered Successfully";
                }
            }
        }
    }
}