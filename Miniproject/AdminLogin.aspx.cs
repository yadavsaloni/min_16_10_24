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
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn12_Click(object sender, EventArgs e)
        {
            string s1 = txtotp1.Text;
            string s2 = txtotp2.Text;
             
            string query = "select * from admin where username='" + s1 + "' and password ='"+ s2 +"' ";
            DBConnect dbc = new DBConnect();
            DataTable dt = new DataTable();
            dt = dbc.ExecuteSelect(query);
            
            if (dt.Rows.Count > 0)
            {
                int id = int.Parse(dt.Rows[0]["id"].ToString());
                string query1 = "update admin set lastlogin='" + DateTime.Now.ToString() + "' where id='" + id + "' ";
                dbc.ExecuteIUD(query1);

                Session["adminusername"]=s1;
                    Response.Redirect("admin/Dashborad.aspx");

            }
            else {
                Response.Write("<script>alert(' password incorrect');</script>");
            }

        }
    }
}