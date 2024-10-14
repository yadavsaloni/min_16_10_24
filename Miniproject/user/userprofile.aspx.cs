using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using Miniproject.App_Code;

namespace Miniproject.user
{
    public partial class user_profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string username = Session["username"].ToString();
                string query = "select * from registration where email='" + username + "' or mobile='" + username + "'";
                DataTable dt = new DataTable();
                DBConnect dbc = new DBConnect();
                dt = dbc.ExecuteSelect(query);
                cardrepeater.DataSource = dt;
                cardrepeater.DataBind();
            }
            catch (Exception ex)
            {
                Response.Redirect("../Login.aspx");
            }
            //logout code start
            string action = Request.QueryString["action"];

            if (!String.IsNullOrEmpty(action) && action == "logout")
            {
                Session.Abandon();
                Response.Redirect("../Login.aspx");
            }


            if ( !  String.IsNullOrEmpty(action) && action == "removepic")
            {
                string usersession = Session["username"].ToString();
                string sql1 = "update registration set photo='' where email='" + usersession + "' or mobile='" + usersession + "'";
                DBConnect dbc = new DBConnect();
                if (dbc.ExecuteIUD(sql1))
                {
                    Response.Redirect("userprofile.aspx");
                }

            }


        }

        protected void btnpicupload_Click(object sender, EventArgs e)
        {
            //pic upload
            string username = Session["username"].ToString();

            FileUpload profile = cardrepeater.Items[0].FindControl("profile") as FileUpload;

            if (profile.HasFile)
            {

                string old_filename = profile.FileName;
                string ext = old_filename.Substring(old_filename.LastIndexOf("."));
                ext = ext.ToLower();
                string new_filename = DateTime.Now.ToString("yyyyMMddhhmmss");
                Random random = new Random();
                int rand_number = random.Next(1000, 9999);
                new_filename = new_filename + "_" + rand_number + ext;

                string query = "update registration set photo='" + new_filename + "' where email='" + username + "' or mobile='" + username + "'";
                DBConnect dbc = new DBConnect();
                if (dbc.ExecuteIUD(query))
                {
                    profile.SaveAs(Server.MapPath("~/uploads") + new_filename);
                    Response.Redirect("userprofile.aspx");
                }
                else
                {
                    Response.Write("<script>alert('something went wrong');</script>");
                }


            }
        }
    }
}