using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_ModelView : System.Web.UI.Page
{

    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            FillModelsList();
            // fill Markers list.
            FillLists.FillMarkers(ddlMarkers);
        }
    }
    protected void gvModels_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvModels.PageIndex = e.NewPageIndex;
        FillModelsList();

    }
    protected void gvModels_RowCommand(object sender, GridViewCommandEventArgs e)
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
            ShowModelInformation(Convert.ToInt32(hfID.Value));
            divAddEdit.Visible = true; // show editing panel.
        }
    }
    protected void gvModels_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FillModelsList();
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        FillModelsList();
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtNameEn.Text != String.Empty && ddlMarkers.SelectedIndex > 0)
        {
            SaveModelInformation();
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
        bool childIds = new ModelManager().DeleteModel(_ID);

        if (childIds) // deleted.
            lblError.Text = Resources.AdminResources_en.SuccessDelete; // success deleted.
        else
            lblError.Text = Resources.AdminResources_en.ErrorDelete;
    }

    private void SaveModelInformation()
    {
        CarsModel ModelToSave = new CarsModel();

        try
        {
            if (hfID.Value != "") { ModelToSave.ModelID = Convert.ToInt32(hfID.Value); }
            ModelToSave.Marker_ID = Convert.ToInt32(ddlMarkers.SelectedValue);

            ModelToSave.TypeNameEn = txtNameEn.Text;
            ModelToSave.TypeNameAr = txtNameAr.Text;
            ModelToSave.Priority = Convert.ToInt32(txtPriority.Text);
            ModelToSave.Active = cbActive.Checked;

            ModelToSave.System_Add_Date = DateTime.Now;
            ModelToSave.System_LastAction_IP = ClientSession.Current.IP;


            // perform saving method.
            if (new ModelManager().SaveModel(ModelToSave))
            {
                lblError.Text = Resources.AdminResources_en.SuccessSave;
                ResetControls();
                FillModelsList(); // refresh data.

            }
            else
            { lblError.Text = Resources.AdminResources_en.ErrorSave; }

        }
        catch { lblError.Text = Resources.AdminResources_en.ErrorSave; }

    }

    private void ShowModelInformation(int Id)
    {
        var result = new ModelManager().GetModelDetails(Id);

        if (result != null)
        {
            //hfID.Value = result.ModelID.ToString();            
            txtNameEn.Text = result.TypeNameEn;
            txtNameAr.Text = result.TypeNameAr;
            cbActive.Checked = (bool)result.Active;

            ddlMarkers.SelectedValue = result.Marker_ID.ToString();
            txtPriority.Text = result.Priority.ToString();

        }


    }

    private void ResetControls()
    {
        hfID.Value = txtNameEn.Text = txtNameAr.Text = ""; // txtShortdesc.Text = ""; //txtName.Text = ""
        txtPriority.Text = "1";
        cbActive.Checked = true;
        ddlMarkers.SelectedIndex = 0;

        divAddEdit.Visible = false;
    }

    #endregion

    #region "Private Methods"

    private void FillModelsList()
    {
        string paramStr = " ";

        if (rblActive.SelectedIndex > 0)
            paramStr += " AND CarsModel.Active = " + rblActive.SelectedValue;
        if (txtName.Text.Trim() != String.Empty)
            paramStr += " AND ((CarsModel.TypeNameEn Like N'%" + txtName.Text + "%' ) OR (CarsModel.TypeNameAr Like N'%" + txtName.Text + "%' ))  ";
        //if (ddlLanguage.SelectedIndex > 0)
        //    paramStr += " AND link.link_lang_id  = " + ddlLanguage.SelectedValue;


        gvModels.DataSource = new ModelManager().GetModels(paramStr);
        gvModels.DataBind();

    }

    #endregion
}