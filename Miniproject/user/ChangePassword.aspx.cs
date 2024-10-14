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
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string adminusername = Session["username"].ToString();

            }
            catch (Exception ex)
            {
                Response.Redirect("../Login.aspx");

            }


        }

        protected void btn3_Click(object sender, EventArgs e)
        {
            string s1 = op.Text;
            string s2 = np.Text;
            string s3 = cnp.Text;

            if (s2 == s3) {
                string username = Session["username"].ToString();
                string query = "select * from registration where email='" + username + "' or mobile='"+username+"'";
                DataTable dt = new DataTable();
                DBConnect dbc = new DBConnect();
                dt = dbc.ExecuteSelect(query);
                string old = dt.Rows[0]["password"].ToString();
                if (old == s1) {
                    string query1 = "update registration set password='" + s2 + "' where email='" + username + "' or mobile='"+username+"'";
                    if (dbc.ExecuteIUD(query1))
                    {
                        Response.Write("<script>alert(' password change successfully'); window.location.href='user profile.aspx'</script>");

                    }
                    else {
                        Response.Write("<script>alert(' old password not matched');</script>");

                    }
                }

            }


        }
    }
}