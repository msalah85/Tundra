using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_MarkerView : System.Web.UI.Page
{
    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            FillMarkersList();
        }
    }
    protected void gvMarkers_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvMarkers.PageIndex = e.NewPageIndex;
        FillMarkersList();

    }
    protected void gvMarkers_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            // Get id to delete.
            int _ID = Convert.ToInt32(e.CommandArgument);
            DeleteItem(_ID);
        }
        else if (e.CommandName == "EditItem")
        {
            hfID.Value = e.CommandArgument.ToString();
            ShowMarkerInformation(Convert.ToInt32(hfID.Value));
            divAddEdit.Visible = true; // show editing panel.
        }

    }
    protected void gvMarkers_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FillMarkersList();
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        FillMarkersList();
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtNameEn.Text != String.Empty) //&& txtEmail.Text != string.Empty)
        {
            SaveMarkerInformation();
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

    private void DeleteItem(int _ID)
    {
        // Execute delete func.
        bool childIds = new MarkerManager().DeleteCarsMarker(_ID, ClientSession.Current.IP);

        if (childIds) // deleted.
            lblError.Text = Resources.AdminResources_en.SuccessDelete; // success deleted.
        else
            lblError.Text = Resources.AdminResources_en.ErrorDelete;
    }

    private void FillMarkersList()
    {
        string paramStr = " ";

        if (rblActive.SelectedIndex > 0)
            paramStr += " AND Active = " + rblActive.SelectedValue;
        if (txtName.Text.Trim() != String.Empty)
            paramStr += " AND (MarkerNameEn Like N'%" + txtName.Text + "%' OR MarkerNameAr Like N'%" + txtName.Text + "%' )";
        //if (ddlLanguage.SelectedIndex > 0)
        //    paramStr += " AND link.link_lang_id  = " + ddlLanguage.SelectedValue;


        gvMarkers.DataSource = new MarkerManager().GetCarsMarker(paramStr);
        gvMarkers.DataBind();

    }

    #endregion


    #region "Save Methods"

    /// <summary>
    /// Add new Marker to db.
    /// </summary>
    private void SaveMarkerInformation()
    {
        CarsMarker MarkersToSave = new CarsMarker();

        try
        {
            if (hfID.Value != "") { MarkersToSave.MarkerID = Convert.ToInt32(hfID.Value); }
            MarkersToSave.MarkerNameAr = txtNameAr.Text;
            MarkersToSave.MarkerNameEn = txtNameEn.Text;

            MarkersToSave.Priority = Convert.ToInt32(txtPriority.Text);
            MarkersToSave.Active = cbActive.Checked;

            MarkersToSave.System_Add_Date = DateTime.Now;
            MarkersToSave.System_LastAction_IP = ClientSession.Current.IP;


            // perform saving method.
            if (new MarkerManager().SaveCarsMarker(MarkersToSave))
            {
                lblError.Text = Resources.AdminResources_en.SuccessSave;
                ResetControls();
                FillMarkersList(); // refresh data.

            }
            else
            { lblError.Text = Resources.AdminResources_en.ErrorSave; }

        }
        catch { lblError.Text = Resources.AdminResources_en.ErrorSave; }

    }
    private void ShowMarkerInformation(int Id)
    {
        var result = new MarkerManager().GetCarsMarkerDetails(Id);

        if (result != null)
        {
            //hfID.Value = result.MarkersID.ToString();
            txtNameAr.Text = result.MarkerNameAr;
            txtNameEn.Text = result.MarkerNameEn;
            txtPriority.Text = result.Priority.ToString();

            cbActive.Checked = (bool)result.Active;
        }

        //
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