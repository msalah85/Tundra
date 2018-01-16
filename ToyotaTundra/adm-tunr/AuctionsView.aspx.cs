using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_AuctionsView : System.Web.UI.Page
{
    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            //FillLists.FillAuctionsNamesList(ddlParentAuctions);
            //FillLists.FillLanguagesList(ddlLanguage);

            FillAuctionsList();

        }
    }

    protected void gvAuctions_RowDataBound(object sender, GridViewRowEventArgs e)
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
    protected void gvAuctions_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvAuctions.PageIndex = e.NewPageIndex;
        FillAuctionsList();

    }
    protected void gvAuctions_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            // Get id to delete.
            DeleteItem(Convert.ToInt32(e.CommandArgument));
        }
        else if (e.CommandName == "EditItem")
        {
            hfID.Value = e.CommandArgument.ToString();
            ShowAuctionInformation(Convert.ToInt32(hfID.Value));
            divAddEdit.Visible = true; // show editing panel.
        }
    }
    protected void gvAuctions_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FillAuctionsList();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        FillAuctionsList();
    }


    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtNameS.Text != String.Empty) //&& txtEmail.Text != string.Empty)
        {
            SaveAuctionInformation();
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

    private void FillAuctionsList()
    {
        string paramStr = " ";

        if (rblActive.SelectedIndex > 0)
            paramStr += " AND Active = " + rblActive.SelectedValue;
        if (txtName.Text.Trim() != String.Empty)
            paramStr += " AND AuctionName Like N'%" + txtName.Text + "%' ";
        //if (ddlLanguage.SelectedIndex > 0)
        //    paramStr += " AND link.link_lang_id  = " + ddlLanguage.SelectedValue;


        gvAuctions.DataSource = new AuctionsManager().GetAuctions(paramStr);
        gvAuctions.DataBind();

    }

    #endregion

    #region "Save Methods"

    private void DeleteItem(int _ID)
    {
        // Execute delete func.
        var childIds = new AuctionsManager().DeleteAuction(_ID);

        if (childIds) // deleted.
            lblError.Text = Resources.AdminResources_en.SuccessDelete; // success deleted.
        else
            lblError.Text = Resources.AdminResources_en.ErrorDelete;
    }

    /// <summary>
    /// Add new Auction to db.
    /// </summary>
    private void SaveAuctionInformation()
    {
        Auction AuctionToSave = new Auction();

        try
        {
            if (hfID.Value != "") { AuctionToSave.AuctionID = Convert.ToInt32(hfID.Value); }
            AuctionToSave.AuctionEmail = txtEmail.Text;
            AuctionToSave.AuctionName = txtNameS.Text;
            AuctionToSave.AuctionPhone = txtPhone.Text;
            AuctionToSave.AuctionDesc = txtShortdesc.Text;
            AuctionToSave.Priority = Convert.ToInt32(txtPriority.Text);
            AuctionToSave.Active = cbActive.Checked;

            AuctionToSave.System_Add_Date = DateTime.Now;
            AuctionToSave.System_LastAction_IP = ClientSession.Current.IP;


            // perform saving method.
            if (new AuctionsManager().SaveAuction(AuctionToSave))
            {
                lblError.Text = Resources.AdminResources_en.SuccessSave;
                ResetControls();
                FillAuctionsList(); // refresh data.

            }
            else
            { lblError.Text = Resources.AdminResources_en.ErrorSave; }

        }
        catch { lblError.Text = Resources.AdminResources_en.ErrorSave; }

    }

    private void ShowAuctionInformation(int Id)
    {
        var result = new AuctionsManager().GetAuctionDetails(Id);

        if (result != null)
        {
            //hfID.Value = result.AuctionID.ToString();
            txtEmail.Text = result.AuctionEmail;
            txtNameS.Text = result.AuctionName;
            txtPhone.Text = result.AuctionPhone;
            txtPriority.Text = result.Priority.ToString();
            txtShortdesc.Text = result.AuctionDesc;

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