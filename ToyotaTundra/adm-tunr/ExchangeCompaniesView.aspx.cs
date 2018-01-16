using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_ExchangeCompaniesView : System.Web.UI.Page
{
    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            //FillLists.FillExchangeCompaniesNamesList(ddlParentExchangeCompanies);
            //FillLists.FillLanguagesList(ddlLanguage);

            FillExchangeCompaniesList();

        }
    }

    protected void gvExchangeCompanies_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvExchangeCompanies.PageIndex = e.NewPageIndex;
        FillExchangeCompaniesList();

    }
    protected void gvExchangeCompanies_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            // Get id to delete.
            int _ID = Convert.ToInt32(e.CommandArgument);

            // Execute delete func.
            if (new ExchangeCompaniesManager().DeleteCompany(_ID))
                lblError.Text = Resources.AdminResources_en.NotDeleted; //SuccessDelete;
            else
                lblError.Text = Resources.AdminResources_en.ErrorDelete;
        }
        else if (e.CommandName == "EditItem")
        {
            hfID.Value = e.CommandArgument.ToString();
            ShowExchangeCompanyInformation(Convert.ToInt32(hfID.Value));
            divAddEdit.Visible = true; // show editing panel.
        }
    }
    protected void gvExchangeCompanies_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FillExchangeCompaniesList();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        FillExchangeCompaniesList();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtNameS.Text != String.Empty) //&& txtEmail.Text != string.Empty)
        {
            SaveExchangeCompanyInformation();
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

    private void FillExchangeCompaniesList()
    {
        string paramStr = " ";

        if (rblActive.SelectedIndex > 0)
            paramStr += " AND Active = " + rblActive.SelectedValue;
        if (txtName.Text.Trim() != String.Empty)
            paramStr += " AND ExchangeCompanyName Like N'%" + txtName.Text + "%' ";
        //if (ddlLanguage.SelectedIndex > 0)
        //    paramStr += " AND link.link_lang_id  = " + ddlLanguage.SelectedValue;


        gvExchangeCompanies.DataSource = new ExchangeCompaniesManager().GetExchangeCompanies(paramStr);
        gvExchangeCompanies.DataBind();

    }

    #endregion
    
    #region "Save Methods"

    /// <summary>
    /// Add new ExchangeCompany to db.
    /// </summary>
    private void SaveExchangeCompanyInformation()
    {
        ExchangeCompany ExchangeCompanyToSave = new ExchangeCompany();

        try
        {
            if (hfID.Value != "") { ExchangeCompanyToSave.ExchangeCompanyID = Convert.ToInt32(hfID.Value); }
            ExchangeCompanyToSave.ExchangeCompanyEmail = txtEmail.Text;
            ExchangeCompanyToSave.ExchangeCompanyName = txtNameS.Text;
            ExchangeCompanyToSave.ExchangeCompanyPhone = txtPhone.Text;
            ExchangeCompanyToSave.ExchangeCompanyDesc = txtShortdesc.Text;
            ExchangeCompanyToSave.Priority = Convert.ToInt32(txtPriority.Text);
            ExchangeCompanyToSave.Active = cbActive.Checked;

            ExchangeCompanyToSave.System_Add_Date = DateTime.Now;
            ExchangeCompanyToSave.System_LastAction_IP = ClientSession.Current.IP;


            // perform saving method.
            if (new ExchangeCompaniesManager().SaveCompany(ExchangeCompanyToSave))
            {
                lblError.Text = Resources.AdminResources_en.SuccessSave;
                ResetControls();
                FillExchangeCompaniesList(); // refresh data.

            }
            else
            { lblError.Text = Resources.AdminResources_en.ErrorSave; }

        }
        catch { lblError.Text = Resources.AdminResources_en.ErrorSave; }

    }

    private void ShowExchangeCompanyInformation(int Id)
    {
        var result = new ExchangeCompaniesManager().GetCompanyDetails(Id);

        if (result != null)
        {
            //hfID.Value = result.ExchangeCompanyID.ToString();
            txtEmail.Text = result.ExchangeCompanyEmail;
            txtNameS.Text = result.ExchangeCompanyName;
            txtPhone.Text = result.ExchangeCompanyPhone;
            txtPriority.Text = result.Priority.ToString();
            txtShortdesc.Text = result.ExchangeCompanyDesc;

            cbActive.Checked = (bool)result.Active;
        }

        

    }

    private void ResetControls()
    {
        hfID.Value = txtEmail.Text = txtNameS.Text = txtPhone.Text = txtShortdesc.Text = ""; //txtName.Text = ""
        txtPriority.Text = "1";
        cbActive.Checked = true;

        divAddEdit.Visible = false;
    }

    #endregion
   
}