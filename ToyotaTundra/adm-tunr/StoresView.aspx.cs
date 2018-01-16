using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_StoresView : System.Web.UI.Page
{
    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            FillStoresList();

        }
    }

    protected void gvStores_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvStores.PageIndex = e.NewPageIndex;
        FillStoresList();

    }
    protected void gvStores_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            // Get id to delete.
            int _ID = Convert.ToInt32(e.CommandArgument);

            // Execute delete func.
            if (new StoresManager().DeleteCompany(_ID))
                lblError.Text = Resources.AdminResources_en.NotDeleted; //SuccessDelete;
            else
                lblError.Text = Resources.AdminResources_en.ErrorDelete;
        }
        else if (e.CommandName == "EditItem")
        {
            hfID.Value = e.CommandArgument.ToString();
            ShowStoreInformation(Convert.ToInt32(hfID.Value));
            divAddEdit.Visible = true; // show editing panel.
        }
    }
    protected void gvStores_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FillStoresList();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        FillStoresList();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtNameS.Text != String.Empty) //&& txtEmail.Text != string.Empty)
        {
            SaveStoreInformation();
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

    private void FillStoresList()
    {
        string paramStr = " ";

        if (rblActive.SelectedIndex > 0)
            paramStr += " AND Active = " + rblActive.SelectedValue;
        if (txtName.Text.Trim() != String.Empty)
            paramStr += " AND StoreName Like N'%" + txtName.Text + "%' ";
        //if (ddlLanguage.SelectedIndex > 0)
        //    paramStr += " AND link.link_lang_id  = " + ddlLanguage.SelectedValue;


        gvStores.DataSource = new StoresManager().GetStores(paramStr);
        gvStores.DataBind();

    }

    #endregion

    #region "Save Methods"

    /// <summary>
    /// Add new Store to db.
    /// </summary>
    private void SaveStoreInformation()
    {
        Store StoreToSave = new Store();

        try
        {
            if (hfID.Value != "") { StoreToSave.StoreID = Convert.ToInt32(hfID.Value); }
            StoreToSave.StoreEmail = txtEmail.Text;
            StoreToSave.StoreName = txtNameS.Text;
            StoreToSave.StorePhone = txtPhone.Text;
            StoreToSave.StoreDesc = txtShortdesc.Text;
            StoreToSave.Priority = Convert.ToInt32(txtPriority.Text);
            StoreToSave.Active = cbActive.Checked;

            StoreToSave.System_Add_Date = DateTime.Now;
            StoreToSave.System_LastAction_IP = ClientSession.Current.IP;


            // perform saving method.
            if (new StoresManager().SaveCompany(StoreToSave))
            {
                lblError.Text = Resources.AdminResources_en.SuccessSave;
                ResetControls();
                FillStoresList(); // refresh data.

            }
            else
            { lblError.Text = Resources.AdminResources_en.ErrorSave; }

        }
        catch { lblError.Text = Resources.AdminResources_en.ErrorSave; }

    }

    private void ShowStoreInformation(int Id)
    {
        var result = new StoresManager().GetCompanyDetails(Id);

        if (result != null)
        {
            //hfID.Value = result.StoreID.ToString();
            txtEmail.Text = result.StoreEmail;
            txtNameS.Text = result.StoreName;
            txtPhone.Text = result.StorePhone;
            txtPriority.Text = result.Priority.ToString();
            txtShortdesc.Text = result.StoreDesc;

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