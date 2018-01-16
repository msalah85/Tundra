using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_EmployeesEdit : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {            
            try
            {
                if (Page.RouteData.Values["empId"] != null)
                {
                    hfID.Value = Page.RouteData.Values["empId"].ToString();
                    FillLists.FillStoresList(ddlStore);

                    ShowEmployeeDetails(Convert.ToInt32(hfID.Value)); // show employee to edit.

                }
                else
                { Response.RedirectPermanent("../AdminView.aspx"); }

            }
            catch { Response.RedirectPermanent("../AdminView.aspx"); }
        }

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtPassword.Text != String.Empty && txtUserName.Text != String.Empty && txtEmail.Text != String.Empty && hfID.Value != String.Empty)
            SaveAnEmployee(hfID.Value);
        else
            lblError.Text = Resources.AdminResources_en.DataRequired;
    }



    private void ShowEmployeeDetails(int eId)
    {
        var emp = new AdminManager().GetAdmin(eId);

        if (emp != null)
        {

            txtEmployeeName.Text = emp.name;
            txtMobile.Text = emp.mobile;
            txtAddress.Text = emp.address;
            txtCity.Text = emp.city;
            txtFax.Text = emp.fax;
            txtEmail.Text = emp.email;
            txtPassword.Text = emp.user_password;
            txtUserName.Text = emp.user_name;
            txtTel.Text = emp.phone;

            rblPermission.SelectedValue = emp.user_level;
            if (emp.Store_ID != null) { ddlStore.SelectedValue = emp.Store_ID.ToString(); }
            rblPermission.Enabled = (emp.id > 1);

            Page.Title += " | " + emp.name + " ::. ";

        }
    }

    private void SaveAnEmployee(string iD)
    {
        try
        {

            tbl_admin_n _emp = new tbl_admin_n();

            _emp.id = Convert.ToInt32(iD);
            _emp.address = txtAddress.Text;
            _emp.city = txtCity.Text;
            _emp.fax = txtFax.Text;
            _emp.email = txtEmail.Text;
            _emp.name = txtEmployeeName.Text;
            _emp.mobile = txtMobile.Text;
            _emp.phone = txtTel.Text;
            _emp.user_password = txtPassword.Text;
            _emp.user_name = txtUserName.Text;

            _emp.user_level = rblPermission.SelectedValue;
            if (ddlStore.SelectedIndex > 0) { _emp.Store_ID = Convert.ToInt64(ddlStore.SelectedValue); }

            if (new AdminManager().UpdateAdministrator(_emp))
            { Response.RedirectPermanent("../AdminView.aspx"); }
            else
            { lblError.Text = Resources.AdminResources_en.ErrorSave; }

        }
        catch { lblError.Text = Resources.AdminResources_en.ErrorSave; }

    }
    
}