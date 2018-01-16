using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_BuyersView : System.Web.UI.Page
{

    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            FillBuyersList();

            // fill auctions list.
            FillLists.FillAuctionsList(ddlAuctions);
        }
    }
    protected void gvBuyers_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvBuyers.PageIndex = e.NewPageIndex;
        FillBuyersList();

    }
    protected void gvBuyers_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            // Get id to delete.
            int _ID = Convert.ToInt32(e.CommandArgument);
            DeleteBuyer(_ID);
        }
        else if (e.CommandName == "EditItem")
        {
            hfID.Value = e.CommandArgument.ToString();
            ShowBuyerInformation(Convert.ToInt32(hfID.Value));
            divAddEdit.Visible = true; // show editing panel.
        }
    }
    protected void gvBuyers_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FillBuyersList();
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        FillBuyersList();
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtNameS.Text != String.Empty) // && txtEmail.Text != string.Empty)
        {
            SaveBuyerInformation();
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

    private void FillBuyersList()
    {
        string paramStr = " ";

        if (rblActive.SelectedIndex > 0)
            paramStr += " AND Buyers.Active = " + rblActive.SelectedValue;
        if (txtName.Text.Trim() != String.Empty)
            paramStr += " AND Buyers.BuyerName Like N'%" + txtName.Text + "%' ";
        //if (ddlLanguage.SelectedIndex > 0)
        //    paramStr += " AND link.link_lang_id  = " + ddlLanguage.SelectedValue;


        gvBuyers.DataSource = new BuyersManager().GetBuyers(paramStr);
        gvBuyers.DataBind();

    }

    #endregion

    #region "Save Methods"

    private void DeleteBuyer(int _ID)
    {
        // Execute delete func.
        var childIds = new BuyersManager().DeleteBuyer(_ID);

        if (childIds) // deleted.
            lblError.Text = Resources.AdminResources_en.SuccessDelete; // success deleted.
        else
            lblError.Text = Resources.AdminResources_en.ErrorDelete;
    }

    private void SaveBuyerInformation()
    {
        Buyer BuyerToSave = new Buyer();

        try
        {
            if (hfID.Value != "") { BuyerToSave.BuyerID = Convert.ToInt32(hfID.Value); }
            BuyerToSave.Auction_ID = Convert.ToInt32(ddlAuctions.SelectedValue);

            BuyerToSave.BuyerEmail = txtEmail.Text;
            BuyerToSave.BuyerName = txtNameS.Text;
            BuyerToSave.BuyerPhone = txtPhone.Text;
            BuyerToSave.BuyerDesc = txtShortdesc.Text;
            BuyerToSave.Priority = Convert.ToInt32(txtPriority.Text);
            BuyerToSave.OpeningBalance = Convert.ToDecimal(txtOpeningBalance.Text);
            BuyerToSave.Active = cbActive.Checked;

            BuyerToSave.System_Add_Date = DateTime.Now;
            BuyerToSave.System_LastAction_IP = ClientSession.Current.IP;


            // perform saving method.
            if (new BuyersManager().SaveBuyer(BuyerToSave))
            {
                lblError.Text = Resources.AdminResources_en.SuccessSave;
                ResetControls();
                FillBuyersList(); // refresh data.

            }
            else
            { lblError.Text = Resources.AdminResources_en.ErrorSave; }

        }
        catch { lblError.Text = Resources.AdminResources_en.ErrorSave; }

    }

    private void ShowBuyerInformation(int Id)
    {
        var result = new BuyersManager().GetBuyerDetails(Id);

        if (result != null)
        {
            //hfID.Value = result.BuyerID.ToString();            
            txtEmail.Text = result.BuyerEmail;
            txtNameS.Text = result.BuyerName;
            txtPhone.Text = result.BuyerPhone;
            txtShortdesc.Text = result.BuyerDesc;
            cbActive.Checked = (bool)result.Active;

            ddlAuctions.SelectedValue = result.Auction_ID.ToString();
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
        ddlAuctions.SelectedIndex = 0;

        divAddEdit.Visible = false;
    }

    #endregion

}