using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Net.Mail;
using System.Net.Mime;
using System.Net.Configuration;
using System.Web.Configuration;
using System.Net;

/// <summary>
/// Summary description for Send Email class
/// </summary>
public class SendEmail
{
    #region "Private Declaration"

    private string host, Username, Password, from, CC, BCC;
    int port;

    #endregion

    #region "Public Methods"

    public SendEmail()
    {
        GetSMTPsettings();
    }
    public bool SendAnEmail(string MsgTo, string Subj, string Body) // , FileUpload FileMsg
    {
        bool IsSend = false;
        try
        {
            SmtpClient smtpClient = new SmtpClient(host);
            MailMessage message = new MailMessage();
            MailAddress fromAddress = new MailAddress(from, "tundramk.com");

            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Credentials = new System.Net.NetworkCredential(Username, Password);
            smtpClient.Port = port;
            //From address will be given as a MailAddress Object
            message.From = fromAddress;
            // To address collection of MailAddress
            message.To.Add(MsgTo);
            message.Subject = Subj;

            // CC and BCC optional
            //message.CC.Add(CC);
            // You can specify Address directly as string
            message.Bcc.Add(new MailAddress(BCC));
            //Body can be Html or text format
            //Specify true if it  is html message
            message.IsBodyHtml = true;

            // Bind attached file.
            //if (FileMsg.HasFile)
            //    message.Attachments.Add(AttachFiles(FileMsg));

            // Message body content            
            message.Body = Body;

            // Send SMTP mail

            smtpClient.Send(message);
            IsSend = true;
        }
        catch
        {
            IsSend = false;

        }
        return IsSend;
    }

    public bool SendAnEmail(string _from, string MsgTo, string Subj, string Body) // , FileUpload FileMsg
    {
        bool IsSend = false;
        try
        {
            var fromAddress = new MailAddress(_from, "www.tundramk.com visitor");
            var toAddress = new MailAddress(MsgTo, "www.tundramk.com");

            var smtp = new SmtpClient
            {
                Host = host,
                Port = port,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential(Username, Password)
            };
            using (var message = new MailMessage(fromAddress, toAddress)
            {
                Subject = Subj,
                IsBodyHtml = true,
                Body = Body
            })
            {
                smtp.Send(message);
                IsSend = true;
            }
        }
        catch
        {
            IsSend = false;

        }
        return IsSend;
    }

    #endregion

    #region "Private Methods"

    private void GetSMTPsettings()
    {
        host = "smtp.gmail.com";
        port = 587;
        Username = "m.salah@minutesuae.info";
        Password = "msaah856789!";
        from = "no-replay@tundramk.com";
        //BCC = "m.salah@minutesuae.info";

    }

    // Attache file
    private Attachment AttachFiles(FileUpload fileMsg)
    {
        // Specify the file to be attached and sent.
        // This example assumes that a file named Data.xls exists in the
        // current working directory.
        //string file = FileMsg.FileName;
        // Create a message and set up the recipients.
        string file = fileMsg.PostedFile.FileName;

        // Create  the file attachment for this e-mail message.
        Attachment data = new Attachment(file, MediaTypeNames.Application.Octet);
        // Add time stamp information for the file.
        ContentDisposition disposition = data.ContentDisposition;
        disposition.CreationDate = System.IO.File.GetCreationTime(file);
        disposition.ModificationDate = System.IO.File.GetLastWriteTime(file);
        disposition.ReadDate = System.IO.File.GetLastAccessTime(file);
        // Add the file attachment to this e-mail message.
        return data;

    }

    #endregion
}
