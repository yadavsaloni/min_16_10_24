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
    public partial class ForgetpasswordOtp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string useremail = Session["useremail"].ToString();

            }
            catch (Exception ex) {
                Response.Redirect("Login.aspx");
            }

        }

        protected void btn11_Click(object sender, EventArgs e)
        {
            string s1 = txtotp1.Text;
            string s2 = txtotp2.Text;
            string s3 = txtotp3.Text;
            string s4 = txtotp4.Text;

            string userotp = s1 + s2 + s3 + s4;
            string useremail = Session["useremail"].ToString();

            string query = "select * from registration where email='" + useremail + "'";
            DataTable dt = new DataTable();
            DBConnect dbc = new DBConnect();

            dt = dbc.ExecuteSelect(query);
            string otp = dt.Rows[0]["fpotp"].ToString();
            if (otp == userotp)
            {
                Session["useremail"] = useremail;
                Response.Write("<script>alert('OTP Verified Successfully');window.location.href='ResetPassword.aspx';</script>");

            }
            else {
                Response.Write("<script>alert('Invalid OTP Code');</script>");

            }

        }

        protected void resend1_Click(object sender, EventArgs e)
        {
            string useremail = Session["useremail"].ToString();
            Random random = new Random();
            int otp = random.Next(1000, 9999);

            string query = "update registration set fpotp='" + otp + "'where email='" + useremail + "'";
            DBConnect dbc = new DBConnect();
            if (dbc.ExecuteIUD(query))
            {
                //send  otp on email

                string subject = "Forgot password OTP form MiniProject";
                string message = "Dear User, your otp from miniproject for forgot password is" + otp;
                MailSender mail = new MailSender();
                mail.SendOTPMail(useremail, subject, message);



                Response.Write("<script>alert('OTP Resent on Email');</script>");

            }
            else {
                Response.Write("<script>alert('something went wrong');</script>");

            }


        }
    }
}