using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_PortShippingView : System.Web.UI.Page
{
    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            FillPortShipsList();

        }
    }

    protected void gvPortShips_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvPortShips.PageIndex = e.NewPageIndex;
        FillPortShipsList();

    }
    protected void gvPortShips_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            // Get id to delete.
            int _ID = Convert.ToInt32(e.CommandArgument);

            // Execute delete func.
            if (new PortShipsManager().DeletePortShip(_ID))
                lblError.Text = Resources.AdminResources_en.NotDeleted; //SuccessDelete;
            else
                lblError.Text = Resources.AdminResources_en.ErrorDelete;
        }
        else if (e.CommandName == "EditItem")
        {
            hfID.Value = e.CommandArgument.ToString();
            ShowPortShipInformation(Convert.ToInt32(hfID.Value));
            divAddEdit.Visible = true; // show editing panel.
        }
    }
    protected void gvPortShips_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FillPortShipsList();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        FillPortShipsList();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtNameEn.Text != String.Empty) //&& txtEmail.Text != string.Empty)
        {
            SavePortShipInformation();
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

    private void FillPortShipsList()
    {
        string paramStr = " ";

        if (rblActive.SelectedIndex > 0)
            paramStr += " AND Active = " + rblActive.SelectedValue;
        if (txtName.Text.Trim() != String.Empty)
            paramStr += " AND ((PortShipEn Like N'%" + txtName.Text + "%'  OR PortShipAr Like N'%" + txtName.Text + "%')) ";
        //if (ddlLanguage.SelectedIndex > 0)
        //    paramStr += " AND link.link_lang_id  = " + ddlLanguage.SelectedValue;


        gvPortShips.DataSource = new PortShipsManager().GetPortShips(paramStr);
        gvPortShips.DataBind();

    }

    #endregion

    #region "Save Methods"

    private void SavePortShipInformation()
    {
        PortShipping PortShipToSave = new PortShipping();

        try
        {
            if (hfID.Value != "") { PortShipToSave.PortShipID = Convert.ToInt32(hfID.Value); }

            PortShipToSave.PortShipAr = txtNameAr.Text;
            PortShipToSave.PortShipEn = txtNameEn.Text;
            //PortShipToSave.PortShipDescAr = txtShortdescAr.Text;
            //PortShipToSave.PortShipDescEn = txtShortDescEn.Text;
            PortShipToSave.Priority = Convert.ToInt32(txtPriority.Text);
            PortShipToSave.Active = cbActive.Checked;

            PortShipToSave.System_Add_Date = DateTime.Now;
            PortShipToSave.System_LastAction_IP = ClientSession.Current.IP;


            // perform saving method.
            if (new PortShipsManager().SavePortShip(PortShipToSave))
            {
                lblError.Text = Resources.AdminResources_en.SuccessSave;
                ResetControls();
                FillPortShipsList(); // refresh data.

            }
            else
            { lblError.Text = Resources.AdminResources_en.ErrorSave; }

        }
        catch { lblError.Text = Resources.AdminResources_en.ErrorSave; }

    }

    private void ShowPortShipInformation(int Id)
    {
        var result = new PortShipsManager().GetPortShipDetails(Id);

        if (result != null)
        {
            //hfID.Value = result.PortShipID.ToString();            
            txtNameAr.Text = result.PortShipAr;
            txtNameEn.Text = result.PortShipEn;
            //txtShortDescEn.Text = result.PortShipDescEn;
            //txtShortdescAr.Text = result.PortShipDescAr;
            cbActive.Checked = (bool)result.Active;

            txtPriority.Text = result.Priority.ToString();
        }

        
    }

    private void ResetControls()
    {
        hfID.Value = txtNameEn.Text = txtNameAr.Text = ""; // txtShortdesc.Text = ""; //txtName.Text = ""
        txtPriority.Text = "1";
        cbActive.Checked = true;

        divAddEdit.Visible = false;
    }

    #endregion

}