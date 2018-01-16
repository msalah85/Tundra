using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_ViewEmployees : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            try
            {
                FillEmployeesList();
            }
            catch { }
        }

    }
    protected void gvEmployees_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            // supper admin lable.
            Label adminFlag = (Label)e.Row.FindControl("SupperAdmin");
            // Delete button.
            ImageButton l = (ImageButton)e.Row.FindControl("LinkButton1");


            l.Visible = (Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "id")) != 1);


            // Show supper admin sign.
            if (!l.Visible)
                adminFlag.Text = "Supper";


        }
    }
    protected void gvEmployees_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FillEmployeesList();
    }
    protected void gvEmployees_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvEmployees.PageIndex = e.NewPageIndex;
        FillEmployeesList();

    }
    protected void gvEmployees_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            // get the userID of the clicked row
            long userID = Convert.ToInt32(e.CommandArgument);
            int deleteChk = new AdminManager().DeleteAdministrator(userID);
            // Delete the record 
            if (deleteChk <= 0)
            { /*  success message */ lblError.Text = Resources.AdminResources_en.SuccessDelete; }
            else
            { /*  fail message */ lblError.Text = Resources.AdminResources_en.NotDeleted; }

        }
    }


    private void FillEmployeesList()
    {
        gvEmployees.DataSource = new AdminManager().GetAllAdminUsers(" Order By a.id desc ");
        gvEmployees.DataBind();

    }

}