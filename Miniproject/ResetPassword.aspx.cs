using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using Miniproject.App_Code;

namespace Miniproject
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string useremail = Session["useremail"].ToString();

            }
            catch (Exception ex) {
                Response.Redirect("Login.aspx");
            }

        }

        protected void btn8_Click(object sender, EventArgs e)
        {
            string newpassword = t1.Text;
            string confirmpassword = t2.Text;

            string useremail = Session["useremail"].ToString();
            
            DBConnect dbc = new DBConnect();
           // dt = dbc.ExecuteSelect(query);

            if (newpassword == confirmpassword) {
                string query1 = "update registration set password='" + newpassword + "' where email='" + useremail + "'";
                if (dbc.ExecuteIUD(query1))
                {
                    Session.Abandon();
                    Response.Write("<script>alert('password resent successfully');</script>");


                }
                else {
                    Response.Write("<script>alert('something went wrong');</script>");

                }
            }


        }
    }
}