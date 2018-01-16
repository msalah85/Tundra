using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_RegionsView : System.Web.UI.Page
{
    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            FillRegionsList();
            FillLists.FillAuctionsList(ddlAuctions);
        }
    }
    protected void gvRegions_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvRegions.PageIndex = e.NewPageIndex;
        FillRegionsList();
    }
    protected void gvRegions_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            // Get id to delete.
            DeleteItem(Convert.ToInt32(e.CommandArgument));
        }
        else if (e.CommandName == "EditItem")
        {
            hfID.Value = e.CommandArgument.ToString();
            ShowRegionInformation(Convert.ToInt32(hfID.Value));
            divAddEdit.Visible = true; // show editing panel.
        }
    }
    protected void gvRegions_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FillRegionsList();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        FillRegionsList();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtNameEn.Text != String.Empty && ddlAuctions.SelectedIndex > 0)
        {
            SaveRegionInformation();
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

    private void DeleteItem(int _ID)
    {
        // Execute delete func.
        var childIds = new RegionsManager().DeleteRegion(_ID);

        if (childIds) // deleted.
            lblError.Text = Resources.AdminResources_en.SuccessDelete; // success deleted.
        else
            lblError.Text = Resources.AdminResources_en.ErrorDelete;
    }

    private void SaveRegionInformation()
    {
        Region RegionToSave = new Region();

        try
        {
            if (hfID.Value != "") { RegionToSave.RegionID = Convert.ToInt32(hfID.Value); }
            RegionToSave.Auction_ID = Convert.ToInt32(ddlAuctions.SelectedValue);

            RegionToSave.RegionEn = txtNameEn.Text;
            RegionToSave.RegionAr = txtNameAr.Text;
            RegionToSave.Priority = Convert.ToInt32(txtPriority.Text);
            RegionToSave.CostforRegion = Convert.ToDecimal(txtYardCost.Text);
            RegionToSave.Active = cbActive.Checked;

            RegionToSave.System_Add_Date = DateTime.Now;
            RegionToSave.System_LastAction_IP = ClientSession.Current.IP;


            // perform saving method.
            if (new RegionsManager().SaveRegion(RegionToSave))
            {
                lblError.Text = Resources.AdminResources_en.SuccessSave;
                ResetControls();
                FillRegionsList(); // refresh data.

            }
            else
            { lblError.Text = Resources.AdminResources_en.ErrorSave; }

        }
        catch { lblError.Text = Resources.AdminResources_en.ErrorSave; }

    }

    private void ShowRegionInformation(int Id)
    {
        var result = new RegionsManager().GetRegionDetails(Id);

        if (result != null)
        {
            //hfID.Value = result.RegionID.ToString();            
            txtNameEn.Text = result.RegionEn;
            txtNameAr.Text = result.RegionAr;
            cbActive.Checked = (bool)result.Active;

            ddlAuctions.SelectedValue = result.Auction_ID.ToString();
            txtPriority.Text = result.Priority.ToString();

        }

    }

    private void ResetControls()
    {
        hfID.Value = txtNameEn.Text = txtNameAr.Text = ""; // txtShortdesc.Text = ""; //txtName.Text = ""
        txtPriority.Text = "1";
        cbActive.Checked = true;
        ddlAuctions.SelectedIndex = 0;

        divAddEdit.Visible = false;
    }

    #endregion

    #region "Private Methods"

    private void FillRegionsList()
    {
        string paramStr = " ";

        if (rblActive.SelectedIndex > 0)
            paramStr += " AND Regions.Active = " + rblActive.SelectedValue;
        if (txtName.Text.Trim() != String.Empty)
            paramStr += " AND ((Regions.RegionEn Like N'%" + txtName.Text + "%' ) OR (Regions.RegionAr Like N'%" + txtName.Text + "%' ))  ";
        //if (ddlLanguage.SelectedIndex > 0)
        //    paramStr += " AND link.link_lang_id  = " + ddlLanguage.SelectedValue;


        gvRegions.DataSource = new RegionsManager().GetRegions(paramStr);
        gvRegions.DataBind();

    }

    #endregion
}