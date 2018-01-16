using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.DataAccess;
using SystemManager.Business;


public partial class admin_elaf_EmployeeAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            FillLists.FillStoresList(ddlStore);
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtEmail.Text != String.Empty && txtUserName.Text != String.Empty && txtPassword.Text != String.Empty)
            SaveAnEmployee();
        else
            lblError.Text = Resources.AdminResources_en.DataRequired;
    }

    private void SaveAnEmployee()
    {
        tbl_admin_n _user = new tbl_admin_n();

        _user.address = txtAddress.Text;
        _user.city = txtCity.Text;
        _user.fax = txtFax.Text;
        _user.mobile = txtMobile.Text;
        _user.email = txtEmail.Text;
        _user.name = txtEmployeeName.Text;
        _user.LanguageID = 1;
        _user.phone = txtTel.Text;
        _user.user_password = txtPassword.Text;
        _user.user_name = txtUserName.Text;

        _user.user_level = rblPermission.SelectedValue;
        if (ddlStore.SelectedIndex > 0) { _user.Store_ID = Convert.ToInt64(ddlStore.SelectedValue); }

        if (new AdminManager().AddAdministrator(_user))
        {
            Response.RedirectPermanent("AdminView.aspx");
        }
        else
        {
            lblError.Text = Resources.AdminResources_en.ErrorSave;
        }

    }


}