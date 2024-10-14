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
    public partial class News : System.Web.UI.Page
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
            string query1 = "delete from news where id='" + id + "'";
            if (dbc.ExecuteIUD(query1))
            {
                Response.Redirect("News.aspx");
            }


            string query = "select * from news order by id desc";
            DataTable dt = new DataTable();
            dt = dbc.ExecuteSelect(query);
            newsrepeater.DataSource = dt;
            newsrepeater.DataBind();


        }

        protected void newsadd1_Click(object sender, System.EventArgs e)
        {
            string desc = desc1.Text;
            string old_filename = photo.FileName;
            string new_filename =DateTime.Now.ToString("yyyyMMddhhmmss");
            Random random = new Random();
            int rand_number = random.Next(1000, 9999);
            string ext = old_filename.Substring(old_filename.LastIndexOf("."));
            ext = ext.ToLower();
            new_filename = new_filename + "_" + rand_number + ext;
            if (ext == ".jpg" || ext == ".png" || ext == ".jpeg")
            {
                int filesize = photo.PostedFile.ContentLength;
                filesize = filesize / 1024;//convert into kb
                if (filesize > 50 && filesize < 1000)
                {

                    string query = "insert into news (photo,description,status,datetime)values('" + new_filename + "','" + desc + "','true','" + DateTime.Now.ToString() + "')";
                    DBConnect dbc = new DBConnect();
                    if (dbc.ExecuteIUD(query))
                    {
                        photo.SaveAs(Server.MapPath("~/uploads/") + new_filename);
                        Response.Write("<script>alert('News added'); window.location.href='News.aspx';</script>");

                    }
                    else {
                        Response.Write("<script>alert('something went wrong!');</script>");

                    }
                }
                else
                {
                    Response.Write("<script>alert('Filesize is not allowed between 50-1000kb');</script>");
                }

            }
            else {
                Response.Write("<script>alert('Filetype not allowed');</script>");

            }

        
        }
    }
}