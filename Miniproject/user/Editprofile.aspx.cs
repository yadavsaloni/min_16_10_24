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
    public partial class Edit_profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                string username = Session["username"].ToString();
                if (!IsPostBack)
                {
                    string query1 = "select * from registration where email='" + username + "' or mobile='" + username + "'";
                    DataTable dt = new DataTable();
                    DBConnect dbc = new DBConnect();
                    dt = dbc.ExecuteSelect(query1);

                    name.Text = dt.Rows[0]["name"].ToString();
                    email.Text = dt.Rows[0]["email"].ToString();
                    mob.Text = dt.Rows[0]["mobile"].ToString();

                    string dbgender = dt.Rows[0]["gender"].ToString();
                    foreach (ListItem li in gender.Items)
                    {
                        if (li.Text == dbgender)
                        {
                            li.Selected = true;
                        }
                    }

                    oldpic.ImageUrl = "../uploads/" + dt.Rows[0]["photo"].ToString();

                }
            }

            catch (Exception ex)
            {
                //Response.Write(ex.StackTrace);
                Response.Redirect("../Login.aspx");

            }
           


        }

        protected void btn4_Click(object sender, EventArgs e)
        {

            string s1 = name.Text;
            string s2 = email.Text;
            string s3 = mob.Text;
            string s4 = gender.SelectedItem.Text;

            string old_filename = "";
            string new_filename = "";
            string query="";
            string username = Session["username"].ToString();

            if (f2.HasFile)
            {
                old_filename = f2.FileName;
                string ext = old_filename.Substring(old_filename.LastIndexOf("."));
                new_filename = DateTime.Now.ToString("yyyyMMddhhmmss");
                Random random = new Random();
                int rand_number = random.Next(1000, 9999);
                ext = ext.ToLower();
                new_filename = new_filename + "_" + rand_number + ext;
                query = "update registration set name='" + s1 + "',email='" + s2 + "',mobile='" + s3 + "',gender='" + s4 + "' photo='" + new_filename + "' where email='" + username + "' or moblie='" + username + "'";

            }
            else {
                query = "update registration set name='" + s1 + "',email='" + s2 + "',mobile='" + s3 + "',gender='" + s4 + "'  where email='" + username + "' or moblie='" + username + "'";

            }
            string query1 = "select * from registration where email='" + s2 + "' or mobile='" + s3 + "'";
            DataTable dt = new DataTable();
            DBConnect dbc = new DBConnect();
            dt = dbc.ExecuteSelect(query1);

            if (dt.Rows.Count<=1)
            {
                if (dbc.ExecuteIUD(query)) { 
                    if(f2.HasFile){
                        f2.SaveAs(Server.MapPath("~/uploads/") + new_filename);
                    }
                    Session["username"] = s2;
                    Response.Write("<script>alert('profile Update'); window.loction.href='Editprofile.aspx';</script>");
                }
                else
                {
                       Response.Write("<script>alert('something went wrong');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('moblie number and email id already register');</script>");

            }

        }
    }
}