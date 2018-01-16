using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_ShipsView : System.Web.UI.Page
{
    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            FillShipsList();
        }
    }

    protected void gvShips_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvShips.PageIndex = e.NewPageIndex;
        FillShipsList();

    }
    protected void gvShips_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            // Get id to delete.
            int _ID = Convert.ToInt32(e.CommandArgument);

            // Execute delete func.
            if (new ShipsManager().DeleteShip(_ID))
                lblError.Text = Resources.AdminResources_en.NotDeleted; //SuccessDelete;
            else
                lblError.Text = Resources.AdminResources_en.ErrorDelete;
        }
        else if (e.CommandName == "EditItem")
        {
            hfID.Value = e.CommandArgument.ToString();
            ShowShipInformation(Convert.ToInt32(hfID.Value));
            divAddEdit.Visible = true; // show editing panel.
        }
    }
    protected void gvShips_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FillShipsList();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        FillShipsList();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtNameEn.Text != String.Empty) //&& txtEmail.Text != string.Empty)
        {
            SaveShipInformation();
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

    private void FillShipsList()
    {
        string paramStr = " ";

        if (rblActive.SelectedIndex > 0)
            paramStr += " AND Active = " + rblActive.SelectedValue;
        if (txtName.Text.Trim() != String.Empty)
            paramStr += " AND ((ShipEn Like N'%" + txtName.Text + "%'  OR ShipAr Like N'%" + txtName.Text + "%')) ";
        //if (ddlLanguage.SelectedIndex > 0)
        //    paramStr += " AND link.link_lang_id  = " + ddlLanguage.SelectedValue;


        gvShips.DataSource = new ShipsManager().GetShips(paramStr);
        gvShips.DataBind();

    }

    #endregion

    #region "Save Methods"

    private void SaveShipInformation()
    {
        Ship ShipToSave = new Ship();

        try
        {
            if (hfID.Value != "") { ShipToSave.ShipID = Convert.ToInt32(hfID.Value); }

            ShipToSave.ShipAr = txtNameAr.Text;
            ShipToSave.ShipEn = txtNameEn.Text;
            //ShipToSave.ShipDescAr = txtShortdescAr.Text;
            //ShipToSave.ShipDescEn = txtShortDescEn.Text;
            ShipToSave.Priority = Convert.ToInt32(txtPriority.Text);
            ShipToSave.Active = cbActive.Checked;

            ShipToSave.System_Add_Date = DateTime.Now;
            ShipToSave.System_LastAction_IP = ClientSession.Current.IP;


            // perform saving method.
            if (new ShipsManager().SaveShip(ShipToSave))
            {
                lblError.Text = Resources.AdminResources_en.SuccessSave;
                ResetControls();
                FillShipsList(); // refresh data.

            }
            else
            { lblError.Text = Resources.AdminResources_en.ErrorSave; }

        }
        catch { lblError.Text = Resources.AdminResources_en.ErrorSave; }

    }

    private void ShowShipInformation(int Id)
    {
        var result = new ShipsManager().GetShipDetails(Id);

        if (result != null)
        {
            //hfID.Value = result.ShipID.ToString();            
            txtNameAr.Text = result.ShipAr;
            txtNameEn.Text = result.ShipEn;
            //txtShortDescEn.Text = result.ShipDescEn;
            //txtShortdescAr.Text = result.ShipDescAr;
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