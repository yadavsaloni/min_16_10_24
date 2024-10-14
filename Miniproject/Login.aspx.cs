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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btn7_Click(object sender, EventArgs e)
        {
            string username = txt_email.Text;
            string password = Txt_password.Text;

            string query = "select*from registration where(email='" + username + "' or mobile='" + username + "')and password='" + password + "'";
            DataTable dt = new DataTable();
            DBConnect dbc = new DBConnect();
            dt = dbc.ExecuteSelect(query);
            if (dt.Rows.Count > 0)
            {
                if(dt.Rows[0]["status"].ToString()=="true")
                {
                    Session["username"] = username;
                    Response.Write("<script>alert('Login Sucess'); window.location.href='user/userprofile.aspx';</script>");
                }
                else
                {
                    Response.Write("<script>alert('Your account is not active');</script>");
                }
              
            }
            else {
                Response.Write("<script> alert('email and password incorrect please check email and password');</script>");
            }

        }
    }
}