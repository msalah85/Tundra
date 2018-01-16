using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_ClientsView : System.Web.UI.Page
{

    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            FillClientsList();

        }
    }

    protected void gvClients_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvClients.PageIndex = e.NewPageIndex;
        FillClientsList();

    }
    protected void gvClients_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            // Get id to delete.
            int _ID = Convert.ToInt32(e.CommandArgument);

            // Execute delete func.
            if (new ClientsManager().DeleteCompany(_ID))
                lblError.Text = Resources.AdminResources_en.NotDeleted; //SuccessDelete;
            else
                lblError.Text = Resources.AdminResources_en.ErrorDelete;
        }
        else if (e.CommandName == "EditItem")
        {
            hfID.Value = e.CommandArgument.ToString();
            ShowClientInformation(Convert.ToInt32(hfID.Value));
            divAddEdit.Visible = true; // show editing panel.
        }

    }
    protected void gvClients_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FillClientsList();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        FillClientsList();
    }


    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtNameS.Text != String.Empty) // && txtEmail.Text != string.Empty)
        {
            SaveClientInformation();
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

    private void FillClientsList()
    {
        string paramStr = " ";

        if (rblActive.SelectedIndex > 0)
            paramStr += " AND Active = " + rblActive.SelectedValue;
        if (txtName.Text.Trim() != String.Empty)
            paramStr += " AND ClientName Like N'%" + txtName.Text + "%' ";
        //if (ddlLanguage.SelectedIndex > 0)
        //    paramStr += " AND link.link_lang_id  = " + ddlLanguage.SelectedValue;


        gvClients.DataSource = new ClientsManager().GetClients(paramStr);
        gvClients.DataBind();

    }

    #endregion

    #region "Save Methods"

    private void SaveClientInformation()
    {
        Client ClientToSave = new Client();

        try
        {
            if (hfID.Value != "") { ClientToSave.ClientID = Convert.ToInt32(hfID.Value); }

            ClientToSave.ClientEmail = txtEmail.Text;
            ClientToSave.ClientName = txtNameS.Text;
            ClientToSave.ClientUsername = txtUsername.Text;
            ClientToSave.ClientPassword = txtPassword.Text;
            ClientToSave.ClientPhone = txtPhone.Text;
            ClientToSave.ClientFax = txtFax.Text;
            ClientToSave.ClientDesc = txtShortdesc.Text;
            ClientToSave.Priority = Convert.ToInt32(txtPriority.Text);
            ClientToSave.OpeningBalance = Convert.ToDecimal(txtOpeningBalance.Text);
            ClientToSave.Active = cbActive.Checked;
            ClientToSave.SMSActive = cbActiveSMS.Checked;

            ClientToSave.System_Add_Date = DateTime.Now;
            ClientToSave.System_LastAction_IP = ClientSession.Current.IP;


            // perform saving method.
            if (new ClientsManager().SaveCompany(ClientToSave))
            {
                lblError.Text = Resources.AdminResources_en.SuccessSave;
                ResetControls();
                FillClientsList(); // refresh data.

            }
            else
            { lblError.Text = Resources.AdminResources_en.ErrorSave; }

        }
        catch { lblError.Text = Resources.AdminResources_en.ErrorSave; }

    }

    private void ShowClientInformation(int Id)
    {
        var result = new ClientsManager().GetClientDetails(Id);

        if (result != null)
        {
            //hfID.Value = result.ClientID.ToString();            
            txtEmail.Text = result.ClientEmail;
            txtNameS.Text = result.ClientName;
            txtUsername.Text = result.ClientUsername;
            txtPassword.Text = result.ClientPassword;
            txtPhone.Text = result.ClientPhone;
            txtFax.Text = result.ClientFax;
            txtShortdesc.Text = result.ClientDesc;
            cbActive.Checked = (bool)result.Active;
            cbActiveSMS.Checked = result.SMSActive != null ? (bool)result.SMSActive : true;

            txtPriority.Text = result.Priority.ToString();
            txtOpeningBalance.Text = result.OpeningBalance.ToString();

        }

    }

    private void ResetControls()
    {
        hfID.Value = txtEmail.Text = txtNameS.Text = txtUsername.Text = txtPassword.Text = txtPhone.Text = txtFax.Text = txtShortdesc.Text = ""; //txtName.Text = ""
        txtPriority.Text = "1";
        txtOpeningBalance.Text = "0.00";

        cbActive.Checked = true;
        cbActiveSMS.Checked = false;

        divAddEdit.Visible = false;
    }

    #endregion
}