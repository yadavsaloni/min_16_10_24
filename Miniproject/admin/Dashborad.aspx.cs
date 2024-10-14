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
    public partial class Dashborad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string adminusername = Session["adminusername"].ToString();
                string query1 = "select count(*) from slider";
                DataTable dt1 = new DataTable();
                DBConnect dbc = new DBConnect();
                dt1 = dbc.ExecuteSelect(query1);
                slidercount.Text = dt1.Rows[0][0].ToString();


                string query2 = "select count(*) from registration";
                DataTable dt2 = new DataTable();
                dt2 = dbc.ExecuteSelect(query2);
                userscount.Text = dt2.Rows[0][0].ToString();

                string query3 = "select count(*) from news";
                DataTable dt3 = new DataTable();
                dt3 = dbc.ExecuteSelect(query3);
                newscount.Text = dt3.Rows[0][0].ToString();
            }
            catch(Exception ex) 
            {
                Response.Redirect("../AdminLogin.aspx");

            }
            //logout code start
            string action = Request.QueryString["action"];
            if(!string.IsNullOrEmpty(action) && action=="logout"){

                string username = Session["adminusername"].ToString();
                string query = "update admin set lastlogout='" + DateTime.Now.ToString() + "' where username='" + username + "' ";
                DBConnect dbc = new DBConnect();
                dbc.ExecuteIUD(query);
                Session.Abandon();
                Response.Redirect("../AdminLogin.aspx");
            }
            //logout code end
        }
    }
}