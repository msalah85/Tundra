using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_ClearanceCompaniesView : System.Web.UI.Page
{

    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            //FillLists.FillClearanceCompaniesNamesList(ddlParentClearanceCompanies);
            //FillLists.FillLanguagesList(ddlLanguage);

            FillClearanceCompaniesList();

        }
    }

    protected void gvClearanceCompanies_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvClearanceCompanies.PageIndex = e.NewPageIndex;
        FillClearanceCompaniesList();

    }
    protected void gvClearanceCompanies_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            // Get id to delete.
            int linkID = Convert.ToInt32(e.CommandArgument);

            // Execute delete func.
            if (new ClearanceCompaniesManager().DeleteCompany(linkID))
                lblError.Text = Resources.AdminResources_en.NotDeleted; //.SuccessDelete;
            else
                lblError.Text = Resources.AdminResources_en.ErrorDelete;
        }
        else if (e.CommandName == "EditItem")
        {
            hfID.Value = e.CommandArgument.ToString();
            ShowClearanceInformation(Convert.ToInt32(hfID.Value));
            divAddEdit.Visible = true; // show editing panel.
        }

    }
    protected void gvClearanceCompanies_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FillClearanceCompaniesList();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        FillClearanceCompaniesList();
    }


    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtNameS.Text != String.Empty) // && txtEmail.Text != string.Empty)
        {
            SaveClearanceInformation();
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

    private void FillClearanceCompaniesList()
    {
        string paramStr = " ";

        if (rblActive.SelectedIndex > 0)
            paramStr += " AND Active = " + rblActive.SelectedValue;
        if (txtName.Text.Trim() != String.Empty)
            paramStr += " AND ClearanceName Like N'%" + txtName.Text + "%' ";
        //if (ddlLanguage.SelectedIndex > 0)
        //    paramStr += " AND link.link_lang_id  = " + ddlLanguage.SelectedValue;


        gvClearanceCompanies.DataSource = new ClearanceCompaniesManager().GetClearanceCompanies(paramStr);
        gvClearanceCompanies.DataBind();

    }

    #endregion

    #region "Save Methods"

    private void SaveClearanceInformation()
    {
        ClearanceCompany ClearanceToSave = new ClearanceCompany();

        try
        {
            if (hfID.Value != "") { ClearanceToSave.ClearanceID = Convert.ToInt32(hfID.Value); }

            ClearanceToSave.ClearanceEmail = txtEmail.Text;
            ClearanceToSave.ClearanceName = txtNameS.Text;
            ClearanceToSave.ClearancePhone = txtPhone.Text;
            ClearanceToSave.ClearanceDesc = txtShortdesc.Text;
            ClearanceToSave.Priority = Convert.ToInt32(txtPriority.Text);
            ClearanceToSave.OpeningBalance = Convert.ToDecimal(txtOpeningBalance.Text);
            ClearanceToSave.Active = cbActive.Checked;

            ClearanceToSave.System_Add_Date = DateTime.Now;
            ClearanceToSave.System_LastAction_IP = ClientSession.Current.IP;


            // perform saving method.
            if (new ClearanceCompaniesManager().SaveCompany(ClearanceToSave))
            {
                lblError.Text = Resources.AdminResources_en.SuccessSave;
                ResetControls();
                FillClearanceCompaniesList(); // refresh data.

            }
            else
            { lblError.Text = Resources.AdminResources_en.ErrorSave; }

        }
        catch { lblError.Text = Resources.AdminResources_en.ErrorSave; }

    }

    private void ShowClearanceInformation(int Id)
    {
        var result = new ClearanceCompaniesManager().GetCompanyDetails(Id);

        if (result != null)
        {
            //hfID.Value = result.ClearanceID.ToString();            
            txtEmail.Text = result.ClearanceEmail;
            txtNameS.Text = result.ClearanceName;
            txtPhone.Text = result.ClearancePhone;
            txtShortdesc.Text = result.ClearanceDesc;
            cbActive.Checked = (bool)result.Active;

            txtPriority.Text = result.Priority.ToString();
            txtOpeningBalance.Text = result.OpeningBalance.ToString();

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