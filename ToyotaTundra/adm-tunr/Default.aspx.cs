using System;
using System.Linq;
using System.Web.UI;
using SystemManager.Business;

public partial class admin_elaf_Default : Page
{
    #region "Events"
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        { ResetSession(); CookiesManager.ResetCookie(); }
    }
    protected void btnRecover_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            if (txtRecPass.Text.Trim() != String.Empty)
                RecoverPassword(txtRecPass.Text);
            else
                lblpassError.Text = Resources.AdminResources_en.DataRequired;
        }
    }
    protected void bntLogin_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            if (txtEmail.Text.Trim() != String.Empty && txtPassword.Text.Trim() != String.Empty)
            {
                LoginUSers(txtEmail.Text, txtPassword.Text);
            }
            else
            {
                lblError.Text = Resources.AdminResources_en.DataRequired;
            }
        }
    }

    #endregion

    #region "Private Methods"

    void RecoverPassword(string p)
    {
        var adminInfo = new AdminManager().GetAdminByEmail(p);

        if (adminInfo != null)
        {
            SendEmail emailObj = new SendEmail();

            string body = "<b>Hello ";
            body += adminInfo.name + " </b><br />";
            body += "<p> Your account in Tundra Mk cars Admin System is :<br /> ";
            body += "Email: " + adminInfo.email + "<br />";
            body += "Password: " + adminInfo.user_password + " </p>";
            body += "<p> Login url: <a href='http://www.TundraMkcars.com/admin-tunr/'>http://www.TundraMkcars.com/admin-tunr/</a></p>";
            body += "---------------------------------------------------------- <br /><p> Best regards, <br /> TundraMkcars.com Technical Support.</p>";

            if (emailObj.SendAnEmail(adminInfo.email, "Tundra Mk cars Password Recovery", body))
            { lblpassError.Text = Resources.AdminResources_en.PasswordSent; }
            else
            { lblpassError.Text = Resources.AdminResources_en.UserNotExist; }

        }
        else
        { lblpassError.Text = Resources.AdminResources_en.UserNotExist; }

    }

    void LoginUSers(string _email, string _pass)
    {
        var emp = new AdminManager().AdminsLogin(_email, _pass);

        if (emp != null)
        {
            ClientSession.Current.loginId = emp.id;
            ClientSession.Current.loginName = emp.name;

            CookiesManager.SaveCoockie(); // save this data in cookie.

            // Redirect to the last opened page in admin. 
            // Redirect to the last opened page in the system.
            string[] operators = { "default.aspx", "adm-tunr/", "default" };
            // Redirect to the last opened page in the system.
            string rURL = Request.UrlReferrer.AbsoluteUri.ToLower();
            bool check = operators.Any(x => rURL.EndsWith(x));

            if (!check)
            { Response.RedirectPermanent(rURL); }
            else
            { Response.RedirectPermanent("home.aspx"); }
        }
        else
        { lblError.Text = Resources.AdminResources_en.ErrorLogin; }

    }

    void ResetSession()
    {
        Session.Abandon();
    }
    #endregion
}