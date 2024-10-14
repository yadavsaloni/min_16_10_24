using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Miniproject.App_Code;
using System.Data;



namespace Miniproject
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            DBConnect dbc = new DBConnect();

            string name = T1.Text;
            string email = T2.Text;
            string mobile = T3.Text;
            string password = T5.Text;
            string gender = radio1.SelectedItem.Text;

            string old_filename = f1.FileName;
            string ext = old_filename.Substring(old_filename.LastIndexOf("."));

            ext = ext.ToLower();



            string new_filename = DateTime.Now.ToString("yyyyMMdddmmss");
            Random random = new Random();
            int rand_num = random.Next(1000, 9999);
            new_filename = new_filename + "_" + random + ext;
            if (ext == ".png" || ext == ".jpg" || ext == ".jpeg")
            {
                int filesize = f1.PostedFile.ContentLength;
                filesize = filesize / 1024;//covert into kb
                if (filesize > 50 && filesize < 1024)
                {
                    //otp 
                    string query1 = "select * from registration where email='" + email + "' or mobile='" + mobile + "' ";
                    DataTable dt = new DataTable();
                    dt = dbc.ExecuteSelect(query1);
                    if (dt.Rows.Count == 0)
                    {
                        int otp = random.Next(1000, 9999);

                        string query = "insert into registration(name,email ,password,mobile,gender,photo,status,datetime,otp) values('" + name + "','" + email + "','" + password + "','" + mobile + "','" + gender + "','" + new_filename + "','" + false + "','" + DateTime.Now.ToString() + "','"+otp+"')";
                        //  DBConnect dbc=new DBConnect();
                        if (dbc.ExecuteIUD(query))
                        {
                            f1.SaveAs(Server.MapPath("~/uploads/") + new_filename);
                            //send otp on email
                            string subject = "OTP For Registration in Miniproject Website";
                            string message="<h1>Dear User,</h2><b>Your OTP (One Time Password) </b>for registration in<u> Miniproject Website is "+ otp +"</u>.<br> Do not share with anyone.<br/><br/>Thanks!<br/><br/><img src=' https://picsum.photos/seed/picsum/200/300'/>";
                            MailSender mail = new MailSender();
                            mail.SendOTPMail(email, subject, message);
                            
                         
                           

                            Session["usermobile"] = mobile;
                            Response.Write("<script> alert('Registration Success OTp sent to email'); window.location.href='OTpVerification.aspx'</script>");
                        }
                        else
                        {
                            Response.Write("Registration  not Success");

                        }

                    }
                    else
                    {
                        Response.Write("email or mobile already Registration");
                    }

                }


                else
                {
                    Response.Write("<script> alert('file must be between 50 to 1024kb');</script>");
                }
            }
            else
            {
                Response.Write("file type not allowed");



            }


        }
    }
}