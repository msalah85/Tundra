using System;
using System.Web.UI;
public partial class admin_TundraMk_Admin : MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (ClientSession.Current.loginId > 0)
                lblAdminName.Text = ClientSession.Current.loginName;
            else
            {
                Server.Transfer("/adm-tunr/default.aspx");
            }
        }
    }
}