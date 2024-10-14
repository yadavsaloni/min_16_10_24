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
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn10_Click(object sender, EventArgs e)
        {
            string useremail = email.Text;
            string query="select * from registration where email='"+ useremail+ "' ";
            DataTable dt=new DataTable();
            DBConnect dbc=new DBConnect();
            dt=dbc.ExecuteSelect(query);

            if(dt.Rows.Count>0)
            {
                Random random=new Random();
                int otp =random.Next(1000,9999);
                string query1="update registration set fpotp='"+otp+"' where email='"+useremail+"' ";
                if (dbc.ExecuteIUD(query1))
                {
                    //send otp on email here
                    string subject = "Forgot password OTP form MiniProject";
                    string message = "Dear User, your otp from miniproject for forgot password is" + otp;
                    MailSender mail = new MailSender();
                    mail.SendOTPMail(useremail, subject, message);



                    Session["useremail"] = useremail;
                    Response.Write("<script>alert('OTP send on your registration Email Id'); window.location.href='ForgetpasswordOtp.aspx';</script>");


                }
                else {
                    Response.Write("<script>alert('something went wrong');</script>");


                }
            }
            else{
                Response.Write("<script>alert('Email incorrect');</script>");
            }

        }
    }
}