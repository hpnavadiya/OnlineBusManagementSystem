﻿//1.Harsh Navadiya - 8869077
//2.Nihar kevadia - 8849917
//3.Shruti Devani - 8874405
//4.Aeni Patel - 8813744
//5.Karmveer kaur - 8845910
//6.Evin Thomas - 8825960

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusBookingProject.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(txtUserId.Text=="admin" && txtPassword.Text=="admin")
            {
                Session["UserName"] = "Admin";
                Response.Redirect("BusDetailsReport.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Username and password is incorrect please enter valid credentials')", true); 
            }
        }
    }
}