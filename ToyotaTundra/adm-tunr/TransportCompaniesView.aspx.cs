using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_TransportCompaniesView : System.Web.UI.Page
{

    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            //FillLists.FillTransportCompaniesNamesList(ddlParentTransportCompanies);
            //FillLists.FillLanguagesList(ddlLanguage);

            FillTransportCompaniesList();

        }
    }

    protected void gvTransportCompanies_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvTransportCompanies.PageIndex = e.NewPageIndex;
        FillTransportCompaniesList();

    }
    protected void gvTransportCompanies_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            // Get id to delete.
            int _ID = Convert.ToInt32(e.CommandArgument);

            // Execute delete func.
            if (new TransportCompaniesManager().DeleteCompany(_ID))
                lblError.Text = Resources.AdminResources_en.NotDeleted; //SuccessDelete;
            else
                lblError.Text = Resources.AdminResources_en.ErrorDelete;
        }
        else if (e.CommandName == "EditItem")
        {
            hfID.Value = e.CommandArgument.ToString();
            ShowTransportInformation(Convert.ToInt32(hfID.Value));
            divAddEdit.Visible = true; // show editing panel.
        }

    }
    protected void gvTransportCompanies_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FillTransportCompaniesList();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        FillTransportCompaniesList();
    }


    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtNameS.Text != String.Empty) // && txtEmail.Text != string.Empty)
        {
            SaveTransportInformation();
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

    private void FillTransportCompaniesList()
    {
        string paramStr = " ";

        if (rblActive.SelectedIndex > 0)
            paramStr += " AND Active = " + rblActive.SelectedValue;
        if (txtName.Text.Trim() != String.Empty)
            paramStr += " AND TransportName Like N'%" + txtName.Text + "%' ";
        //if (ddlLanguage.SelectedIndex > 0)
        //    paramStr += " AND link.link_lang_id  = " + ddlLanguage.SelectedValue;


        gvTransportCompanies.DataSource = new TransportCompaniesManager().GetTransportCompanies(paramStr);
        gvTransportCompanies.DataBind();

    }

    #endregion

    #region "Save Methods"

    private void SaveTransportInformation()
    {
        TransportCompany TransportToSave = new TransportCompany();

        try
        {
            if (hfID.Value != "") { TransportToSave.TransportID = Convert.ToInt32(hfID.Value); }

            TransportToSave.TransportEmail = txtEmail.Text;
            TransportToSave.TransportName = txtNameS.Text;
            TransportToSave.TransportPhone = txtPhone.Text;
            TransportToSave.TransportDesc = txtShortdesc.Text;
            TransportToSave.Priority = Convert.ToInt32(txtPriority.Text);
            TransportToSave.OpeningBalance = Convert.ToDecimal(txtOpeningBalance.Text);
            TransportToSave.Active = cbActive.Checked;

            TransportToSave.System_Add_Date = DateTime.Now;
            TransportToSave.System_LastAction_IP = ClientSession.Current.IP;


            // perform saving method.
            if (new TransportCompaniesManager().SaveCompany(TransportToSave))
            {
                lblError.Text = Resources.AdminResources_en.SuccessSave;
                ResetControls();
                FillTransportCompaniesList(); // refresh data.

            }
            else
            { lblError.Text = Resources.AdminResources_en.ErrorSave; }

        }
        catch { lblError.Text = Resources.AdminResources_en.ErrorSave; }

    }

    private void ShowTransportInformation(int Id)
    {
        var result = new TransportCompaniesManager().GetCompanyDetails(Id);

        if (result != null)
        {
            //hfID.Value = result.TransportID.ToString();            
            txtEmail.Text = result.TransportEmail;
            txtNameS.Text = result.TransportName;
            txtPhone.Text = result.TransportPhone;
            txtShortdesc.Text = result.TransportDesc;
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