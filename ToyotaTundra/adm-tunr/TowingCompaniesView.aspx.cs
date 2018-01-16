using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_TowingCompaniesView : System.Web.UI.Page
{

    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            //FillLists.FillTowingCompaniesNamesList(ddlParentTowingCompanies);
            //FillLists.FillLanguagesList(ddlLanguage);

            FillTowingCompaniesList();

        }
    }

    protected void gvTowingCompanies_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            ImageButton l = (ImageButton)e.Row.FindControl("LinkButton1");
            //l.Attributes.Add("onclick", "javascript:return " +
            //"confirm('Are you sure you want to delete this record " +
            //DataBinder.Eval(e.Row.DataItem, "id") + "')");

            //l.Visible = (Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "id")) > 40) ? true : false;

        }
    }
    protected void gvTowingCompanies_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvTowingCompanies.PageIndex = e.NewPageIndex;
        FillTowingCompaniesList();

    }
    protected void gvTowingCompanies_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            // Get id to delete.
            int linkID = Convert.ToInt32(e.CommandArgument);

            // Execute delete func.
            if (new TowingCompaniesManager().DeleteCompany(linkID))
                lblError.Text = Resources.AdminResources_en.NotDeleted; //SuccessDelete;
            else
                lblError.Text = Resources.AdminResources_en.ErrorDelete;
        }
        else if (e.CommandName == "EditItem")
        {
            hfID.Value = e.CommandArgument.ToString();
            ShowTowingCompanyInformation(Convert.ToInt32(hfID.Value));
            divAddEdit.Visible = true; // show editing panel.
        }
    }
    protected void gvTowingCompanies_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FillTowingCompaniesList();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        FillTowingCompaniesList();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtNameS.Text != String.Empty) // && txtEmail.Text != string.Empty)
        {
            SaveTowingCompanyInformation();
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

    #region "Save Methods"

    private void SaveTowingCompanyInformation()
    {
        TowingCompany TowingCompanyToSave = new TowingCompany();

        try
        {
            if (hfID.Value != "") { TowingCompanyToSave.TowingCompanyID = Convert.ToInt32(hfID.Value); }

            TowingCompanyToSave.TowingCompanyEmail = txtEmail.Text;
            TowingCompanyToSave.TowingCompanyName = txtNameS.Text;
            TowingCompanyToSave.TowingCompanyPhone = txtPhone.Text;
            TowingCompanyToSave.TowingCompanyDesc = txtShortdesc.Text;
            TowingCompanyToSave.Priority = Convert.ToInt32(txtPriority.Text);
            TowingCompanyToSave.OpeningBalance = Convert.ToDecimal(txtOpeningBalance.Text);
            TowingCompanyToSave.Active = cbActive.Checked;

            TowingCompanyToSave.System_Add_Date = DateTime.Now;
            TowingCompanyToSave.System_LastAction_IP = ClientSession.Current.IP;


            // perform saving method.
            if (new TowingCompaniesManager().SaveCompany(TowingCompanyToSave))
            {
                lblError.Text = Resources.AdminResources_en.SuccessSave;
                ResetControls();
                FillTowingCompaniesList(); // refresh data.

            }
            else
            { lblError.Text = Resources.AdminResources_en.ErrorSave; }

        }
        catch { lblError.Text = Resources.AdminResources_en.ErrorSave; }

    }

    private void ShowTowingCompanyInformation(int Id)
    {
        var result = new TowingCompaniesManager().GetCompanyDetails(Id);

        if (result != null)
        {
            //hfID.Value = result.TowingCompanyID.ToString();            
            txtEmail.Text = result.TowingCompanyEmail;
            txtNameS.Text = result.TowingCompanyName;
            txtPhone.Text = result.TowingCompanyPhone;
            txtShortdesc.Text = result.TowingCompanyDesc;
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

    #region "Private Methods"

    private void FillTowingCompaniesList()
    {
        string paramStr = " ";

        if (rblActive.SelectedIndex > 0)
            paramStr += " AND Active = " + rblActive.SelectedValue;
        if (txtName.Text.Trim() != String.Empty)
            paramStr += " AND TowingCompanyName Like N'%" + txtName.Text + "%' ";
        //if (ddlLanguage.SelectedIndex > 0)
        //    paramStr += " AND link.link_lang_id  = " + ddlLanguage.SelectedValue;


        gvTowingCompanies.DataSource = new TowingCompaniesManager().GetTowingCompanies(paramStr);
        gvTowingCompanies.DataBind();

    }

    #endregion
}