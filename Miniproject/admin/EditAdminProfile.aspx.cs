using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using Miniproject.App_Code;

namespace Miniproject.admin
{
    public partial class EditAdminProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string adminusername = Session["adminusername"].ToString();
                if(!IsPostBack){
                username.Text = adminusername;
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("../AdminLogin.aspx");

            }

        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            string s1 = username.Text;
            string adminusername = Session["adminusername"].ToString();
            string query = "update admin set username='" + s1 + "' where username='" + adminusername + "'";
            DBConnect dbc = new DBConnect();

            if (dbc.ExecuteIUD(query))
            {
                Session["adminusername"] = s1;
                Response.Write("<script>alert('profile update');window.location.href='Dashborad.aspx';</script>");
            }
            else {
                Response.Write("<script>alert('something went wrong');</script>");

            }

        }
    }
}