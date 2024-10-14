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
    public partial class users : System.Web.UI.Page
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
            DBConnect dbc = new DBConnect();

            string id = Request.QueryString["id"];

            if (!string.IsNullOrEmpty(id))
            {
            }
            string query1 = "delete from registration where id='" + id + "'";
            if (dbc.ExecuteIUD(query1))
            {
                Response.Redirect("users.aspx");
            }

            string query = "select* from registration order by id desc";
            DataTable dt = new DataTable();
            dt = dbc.ExecuteSelect(query);
            usersrepeater.DataSource = dt;
            usersrepeater.DataBind();


        }

        protected void statuschange_Click(object sender, EventArgs e)
        {
            string id = (sender as LinkButton).CommandArgument.ToString();
           // Response.Write(id);
            string query1 = "select*from registration where id='" + id + "'";
            DataTable dt1 = new DataTable();
            DBConnect dbc = new DBConnect();
            dt1 = dbc.ExecuteSelect(query1);

            string oldstatus = dt1.Rows[0]["status"].ToString();
            string newstatus = "";
            if (oldstatus == "true")
                
                
            { 
              newstatus="false";
            }
            else{
                newstatus="true";
            }
            string query2 ="update registration set status='" + newstatus +"' where id='"+id+"'";

                if(dbc.ExecuteIUD(query2)){
                    Response.Redirect("Users.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Something went wrong')</script>");
                }

        }
    }
}