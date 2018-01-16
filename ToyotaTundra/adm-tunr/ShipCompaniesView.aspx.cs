using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_ShipCompaniesView : System.Web.UI.Page
{

    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {

            //FillLists.FillShippingCompaniesNamesList(ddlParentShippingCompanies);
            //FillLists.FillLanguagesList(ddlLanguage);
            
            FillShippingCompaniesList();

        }
    }

    protected void gvShippingCompanies_RowDataBound(object sender, GridViewRowEventArgs e)
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
    protected void gvShippingCompanies_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvShippingCompanies.PageIndex = e.NewPageIndex;
        FillShippingCompaniesList();

    }
    protected void gvShippingCompanies_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            // Get id to delete.
            int linkID = Convert.ToInt32(e.CommandArgument);

            // Execute delete func.
            if (new ShippingCompaniesManager().DeleteCompany(linkID))
                lblError.Text = Resources.AdminResources_en.NotDeleted; //SuccessDelete;
            else
                lblError.Text = Resources.AdminResources_en.ErrorDelete;
        }
        else if (e.CommandName == "EditItem")
        {
            hfID.Value = e.CommandArgument.ToString();
            ShowShipCompanyInformation(Convert.ToInt32(hfID.Value));
            divAddEdit.Visible = true; // show editing panel.
        }

    }
    protected void gvShippingCompanies_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FillShippingCompaniesList();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        FillShippingCompaniesList();
    }


    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtNameS.Text != String.Empty) // && txtEmail.Text != string.Empty)
        {
            SaveShipCompanyInformation();
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

    private void FillShippingCompaniesList()
    {
        string paramStr = " ";

        if (rblActive.SelectedIndex > 0)
            paramStr += " AND Active = " + rblActive.SelectedValue;
        if (txtName.Text.Trim() != String.Empty)
            paramStr += " AND ShipCompanyName Like N'%" + txtName.Text + "%' ";
        //if (ddlLanguage.SelectedIndex > 0)
        //    paramStr += " AND link.link_lang_id  = " + ddlLanguage.SelectedValue;


        gvShippingCompanies.DataSource = new ShippingCompaniesManager().GetShipCompanies(paramStr);
        gvShippingCompanies.DataBind();

    }

    #endregion

    #region "Save Methods"

    private void SaveShipCompanyInformation()
    {
        ShippingCompany ShipCompanyToSave = new ShippingCompany();

        try
        {
            if (hfID.Value != "") { ShipCompanyToSave.ShipCompanyID = Convert.ToInt32(hfID.Value); }

            ShipCompanyToSave.ShipCompanyEmail = txtEmail.Text;
            ShipCompanyToSave.ShipCompanyName = txtNameS.Text;
            ShipCompanyToSave.ShipCompanyPhone = txtPhone.Text;
            ShipCompanyToSave.ShipCompanyDesc = txtShortdesc.Text;
            ShipCompanyToSave.Priority = Convert.ToInt32(txtPriority.Text);
            ShipCompanyToSave.OpeningBalance = Convert.ToDecimal(txtOpeningBalance.Text);
            ShipCompanyToSave.Active = cbActive.Checked;

            ShipCompanyToSave.System_Add_Date = DateTime.Now;
            ShipCompanyToSave.System_LastAction_IP = ClientSession.Current.IP;


            // perform saving method.
            if (new ShippingCompaniesManager().SaveCompany(ShipCompanyToSave))
            {
                lblError.Text = Resources.AdminResources_en.SuccessSave;
                ResetControls();
                FillShippingCompaniesList(); // refresh data.

            }
            else
            { lblError.Text = Resources.AdminResources_en.ErrorSave; }

        }
        catch { lblError.Text = Resources.AdminResources_en.ErrorSave; }

    }

    private void ShowShipCompanyInformation(int Id)
    {
        var result = new ShippingCompaniesManager().GetCompanyDetails(Id);

        if (result != null)
        {
            //hfID.Value = result.ShipCompanyID.ToString();            
            txtEmail.Text = result.ShipCompanyEmail;
            txtNameS.Text = result.ShipCompanyName;
            txtPhone.Text = result.ShipCompanyPhone;
            txtShortdesc.Text = result.ShipCompanyDesc;
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