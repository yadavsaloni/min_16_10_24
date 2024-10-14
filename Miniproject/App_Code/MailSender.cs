using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Net;
using System.Net.Mail;


namespace Miniproject.App_Code
{
    public class MailSender
    {
        public bool SendOTPMail(string to, string subject, string message) {
            string fromMail = "testing@himanshukashyap.com";
            string password = "94BOkYs59Kf*";
            string smtphost="mail.himanshukashyap.com";
             int port = 587;

             ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;//class for the system.net
             SmtpClient client = new SmtpClient(smtphost, port);//smtp full from=simple mail transfer protocal
             NetworkCredential credential = new NetworkCredential(fromMail, password);
             client.EnableSsl = true;//security for email & property of smtpclient(System.net.mail)
             client.UseDefaultCredentials = false;
             client.Credentials = credential;

             MailMessage mail = new MailMessage(fromMail,to);
             mail.Subject = subject;
             mail.Body = message;
             mail.IsBodyHtml = true;

             bool status = false;
             try
             {
                 client.Send(mail);
                 status = true;
             }
             catch(Exception ex) {
                 status = false;
             }



            return status;
        }
    }
}