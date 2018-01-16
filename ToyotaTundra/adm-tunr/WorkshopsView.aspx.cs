using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_WorkshopsView : System.Web.UI.Page
{
    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            FillWorkshopsList();
        }
    }

    protected void gvWorkshops_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvWorkshops.PageIndex = e.NewPageIndex;
        FillWorkshopsList();

    }
    protected void gvWorkshops_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            // Get id to delete.
            int _ID = Convert.ToInt32(e.CommandArgument);

            // Execute delete func.
            if (new WorkshopsManager().DeleteWorkshop(_ID))
                lblError.Text = Resources.AdminResources_en.NotDeleted; //SuccessDelete;
            else
                lblError.Text = Resources.AdminResources_en.ErrorDelete;
        }
        else if (e.CommandName == "EditItem")
        {
            hfID.Value = e.CommandArgument.ToString();
            ShowWorkshopInformation(Convert.ToInt32(hfID.Value));
            divAddEdit.Visible = true; // show editing panel.
        }

    }
    protected void gvWorkshops_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FillWorkshopsList();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        FillWorkshopsList();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtNameS.Text != String.Empty) // && txtEmail.Text != string.Empty)
        {
            SaveWorkshopInformation();
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert",
                       "<script>alert('Please enter fields required first, then press save.');</script>");
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        ResetControls();
    }
    protected void btnAddNew_Click(object sender, ImageClickEventArgs e)
    {
        ResetControls();
        divAddEdit.Visible = true;
    }


    #endregion

    #region "Private Methods"

    private void FillWorkshopsList()
    {
        string paramStr = " ";

        if (rblActive.SelectedIndex > 0)
            paramStr += " AND Active = " + rblActive.SelectedValue;
        if (txtName.Text.Trim() != String.Empty)
            paramStr += " AND WorkshopName Like N'%" + txtName.Text + "%' ";
        //if (ddlLanguage.SelectedIndex > 0)
        //    paramStr += " AND link.link_lang_id  = " + ddlLanguage.SelectedValue;


        gvWorkshops.DataSource = new WorkshopsManager().GetWorkshops(paramStr);
        gvWorkshops.DataBind();

    }

    #endregion

    #region "Save Methods"

    private void SaveWorkshopInformation()
    {
        Workshop WorkshopToSave = new Workshop();

        try
        {
            if (hfID.Value != "") { WorkshopToSave.WorkshopID = Convert.ToInt32(hfID.Value); }
            WorkshopToSave.WorkshopEmail = txtEmail.Text;
            WorkshopToSave.WorkshopName = txtNameS.Text;
            WorkshopToSave.WorkshopPhone = txtPhone.Text;
            WorkshopToSave.WorkshopDesc = txtShortdesc.Text;
            WorkshopToSave.Priority = Convert.ToInt32(txtPriority.Text);
            WorkshopToSave.OpeningBalance = Convert.ToDecimal(txtOpeningBalance.Text);
            WorkshopToSave.Active = cbActive.Checked;

            WorkshopToSave.System_Add_Date = DateTime.Now;
            WorkshopToSave.System_LastAction_IP = ClientSession.Current.IP;


            // perform saving method.
            if (new WorkshopsManager().SaveWorkshop(WorkshopToSave))
            {
                lblError.Text = Resources.AdminResources_en.SuccessSave;
                ResetControls();
                FillWorkshopsList(); // refresh data.

            }
            else
            { lblError.Text = Resources.AdminResources_en.ErrorSave; }

        }
        catch { lblError.Text = Resources.AdminResources_en.ErrorSave; }

    }

    private void ShowWorkshopInformation(int Id)
    {
        var result = new WorkshopsManager().GetWorkshopDetails(Id);

        if (result != null)
        {
            //hfID.Value = result.WorkshopID.ToString();
            txtEmail.Text = result.WorkshopEmail;
            txtNameS.Text = result.WorkshopName;
            txtPhone.Text = result.WorkshopPhone;
            txtPriority.Text = result.Priority.ToString();
            txtOpeningBalance.Text = result.OpeningBalance.ToString();
            txtShortdesc.Text = result.WorkshopDesc;

            cbActive.Checked = (bool)result.Active;
        }
        
    }

    private void ResetControls()
    {
        hfID.Value = txtEmail.Text = txtNameS.Text = txtPhone.Text = txtShortdesc.Text = ""; //txtName.Text = ""
        txtPriority.Text = "1";
        txtOpeningBalance.Text = "0.00";
        cbActive.Checked = true;

        divAddEdit.Visible = false;
    }

    #endregion

}