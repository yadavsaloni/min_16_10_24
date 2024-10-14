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
    public partial class AdminProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string adminusername = Session["adminusername"].ToString();

            }
            catch (Exception ex)
            {
                Response.Redirect("../AdminLogin.aspx");

            }
            string adminusername1 = Session["adminusername"].ToString();
            string query = "select*from admin where username='" + adminusername1 + "'";

            DBConnect dbc = new DBConnect();
            DataTable dt=new DataTable();
            dt = dbc.ExecuteSelect(query);

            username.Text = dt.Rows[0]["username"].ToString();
            lastlogin.Text = dt.Rows[0]["lastlogin"].ToString();
            lastlogout.Text = dt.Rows[0]["lastlogout"].ToString();

        }
    }
}