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
    public partial class OTpVerification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string usermoblie = Session["usermobile"].ToString();
            }
            catch (Exception ex) {
                Response.Redirect("Registration.aspx");
            }

        }

        protected void btn4_Click(object sender, EventArgs e)
        {
            string s1 = Txtotp1.Text;
            string s2 = Txtotp2.Text;
            string s3 = Txtotp3.Text;
            string s4 = Txtotp4.Text;
            string userotp = s1 + s2 + s3 + s4;
            string usermobile = Session["usermobile"].ToString();
            string query = "select * from registration where(mobile='"+usermobile+"')";
            DataTable dt= new DataTable();
            DBConnect dbc=new DBConnect();
            dt = dbc.ExecuteSelect(query);

            string otp=dt.Rows[0]["otp"].ToString();
            if (otp==userotp){
                string query1 = "update registration set status='true' where mobile='" + usermobile + "'";
                if (dbc.ExecuteIUD(query1))
                {
                    Response.Write("<script>alert('otp verified successfully'); window.location.href='Login.aspx';</script>");

                }
                else {
                    Response.Write("<script>alert('something went wrong');</script>");
                }
            }
            else{
                Response.Write("<script>alert('you entered invalid otp'};</script>");
            }


        }

        protected void btn5_Click(object sender, EventArgs e)
        {
            string usermobile = Session["usermobile"].ToString();
            string query = "select * from registration where(mobile='" + usermobile + "')";
                DataTable dt=new DataTable();
            DBConnect dbc=new DBConnect();
            dt=dbc.ExecuteSelect(query);
            string otp = dt.Rows[0]["otp"].ToString();
            string email = dt.Rows[0]["email"].ToString();
            //send otp here
            MailSender mail = new MailSender();
            string subject = "OTP code from MiniProject";
            string message = "your OTP for Registration is" + otp;
            mail.SendOTPMail(email,subject,message);

            Response.Write("<script>alert('OTP Resend Your Mail')</script>");
        }
    }
}