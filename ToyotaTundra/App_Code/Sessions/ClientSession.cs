using System;
using System.Collections.Generic;
using System.Web;

public class ClientSession
{
    // private constructor
    private ClientSession()
    {
        loginId = 0;
        IP = HttpContext.Current.Request.UserHostAddress;
    }

    // Gets the current session.
    public static ClientSession Current
    {
        get
        {
            ClientSession session =
              (ClientSession)HttpContext.Current.Session["__LoginSession__"];
            if (session == null)
            {
                session = new ClientSession();
                HttpContext.Current.Session["__LoginSession__"] = session;
            }
            return session;
        }
    }

    // **** add your session properties here, e.g like this:
    public long loginId { get; set; }
    public string loginName { get; set; }
    public string IP { get; set; }

    // Using session.
    //public string Property1 { get; set; }
    //public DateTime MyDate { get; set; }
    //public int LoginId { get; set; }
    //int loginId = ClientSession.Current.LoginId;
    //string property1 = ClientSession.Current.Property1;
    //ClientSession.Current.Property1 = newValue;
    //DateTime myDate = ClientSession.Current.MyDate;
    //ClientSession.Current.MyDate = DateTime.Now;
    //http://stackoverflow.com/questions/621549/how-to-access-session-variables-from-any-class-in-asp-net

}