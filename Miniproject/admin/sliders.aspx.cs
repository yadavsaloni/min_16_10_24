using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Miniproject.App_Code;
using System.Data;

namespace Miniproject.admin
{
    public partial class sliders : System.Web.UI.Page
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
            string id=Request.QueryString["id"];

            if (!string.IsNullOrEmpty(id)) { 
            }
            string query1 = "delete from slider where id='" + id + "'";
            if (dbc.ExecuteIUD(query1)) {
                Response.Redirect("sliders.aspx");
            }


            string query = "select * from slider order by id desc";
            DataTable dt = new DataTable();
            dt = dbc.ExecuteSelect(query);
            repeater1.DataSource = dt;
            repeater1.DataBind();

        }

        protected void slideradd_Click(object sender, EventArgs e)
        {
            //  rename for file photo
            string old_filename = photoname.FileName;
            string new_filename = DateTime.Now.ToString("yyyyMMddhhmmss");
            Random random = new Random();
            int rand_number = random.Next(1000, 9999);
            string ext = old_filename.Substring(old_filename.LastIndexOf("."));
            ext = ext.ToLower();
            new_filename = new_filename + "_" + rand_number + ext;

            if (ext == ".png" || ext == ".jpg" || ext == ".jpeg") {
                int filesize = photoname.PostedFile.ContentLength;
                //covert kb
                filesize = filesize / 1024;
                if (filesize > 50 && filesize < 1024)
                {
                    string query = "insert into slider(photoname,status,datetime)values('" + new_filename + "','true','" + DateTime.Now.ToString() + "')";
                    DBConnect dbc = new DBConnect();
                    if (dbc.ExecuteIUD(query)) {
                        photoname.SaveAs(Server.MapPath("~/uploads/") + new_filename);
                        Response.Write("<script>alert('Slider Add slider added');window.location.href='sliders.aspx';</script>");

                    }
                    else
                    {
                        Response.Write("<script>alert('query error');</script>");
                    }
                }
                else {
                    Response.Write("<script>alert('file size not allowed');</script>");

                }

            }
            else
            {
                Response.Write("<script>alert('file extension not allowed');</script>");
            }

        }
    }
}