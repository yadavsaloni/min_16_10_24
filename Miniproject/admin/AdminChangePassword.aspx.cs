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
    public partial class AdminChangePassword : System.Web.UI.Page
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
        }

        protected void changepass_Click(object sender, EventArgs e)
        {
            string s1 = op1.Text;
            string s2 = np1.Text;
            string s3 = cp1.Text;

            if (s2 == s3) {
                string adminusername = Session["adminusername"].ToString();
                string query = "select * from admin where username='" + adminusername + "'";
                DBConnect dbc = new DBConnect();
                DataTable dt = new DataTable();
                dt = dbc.ExecuteSelect(query);
                string old_password = dt.Rows[0]["password"].ToString();
                if (s1 == old_password)
                {
                    string query1=" update admin set password='"+ s2 +"' where username='"+ adminusername +"'" ;
                    if(dbc.ExecuteIUD(query1))
                    {
                    Response.Write("<script>alert(' password change successfully');</script>");
                    }
                    else{
                            Response.Write("<script>alert('something went wrong');</script>");
                    }
                }
                else { 
                    Response.Write("<script>alert('old password incoorrect');</script>");
                     }

                }
            else{
                   Response.Write("<script>alert('new and confirm password not match');</script>");

                }
            }
        }
    }
