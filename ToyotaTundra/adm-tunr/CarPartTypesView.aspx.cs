using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class adm_tunr_CarPartTypesView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            FillCarPartsList();
        }
    }
    private void FillCarPartsList()
    {
        gvModels.DataSource = new CarPartsTypesManager().GetCarAllPartTypes();
        gvModels.DataBind();

    }
    protected void gvModels_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FillCarPartsList();
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        gvModels.DataSource = new CarPartsTypesManager().GetAllCarPartTypesWithSearch(txtName.Text);
        gvModels.DataBind();
    }
    protected void gvModels_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvModels.PageIndex = e.NewPageIndex;
        FillCarPartsList();
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
    #region "Save Methods"
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtNameEn.Text != String.Empty )
        {
            SaveModelInformation();
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert",
                       "<script>alert('Please enter fields required first, then press save.');</script>");
        }
    }
    private void DeleteItem(int _ID)
    {
        // Execute delete func.
        bool childIds = new CarPartsTypesManager().DeleteCarPartType(_ID);

        if (childIds) // deleted.
        {
            lblError.Text = Resources.AdminResources_en.SuccessDelete; // success deleted.
            
        }
        else
            lblError.Text = Resources.AdminResources_en.ErrorDelete;
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
    private void SaveModelInformation()
    {
        CarPartType ModelToSave = new CarPartType();

        try
        {
            if (hfID.Value != "") { ModelToSave.ID = Convert.ToInt32(hfID.Value); }

            ModelToSave.Name_En = txtNameEn.Text;
            ModelToSave.Name_Ar = txtNameAr.Text;
            // perform saving method.
            if (new CarPartsTypesManager().InsertNewCarPartType(ModelToSave))
            {
                lblError.Text = Resources.AdminResources_en.SuccessSave;
                ResetControls();
                FillCarPartsList();
            }
            else
            { lblError.Text = Resources.AdminResources_en.ErrorSave; }

        }
        catch { lblError.Text = Resources.AdminResources_en.ErrorSave; }

    }

    private void ShowModelInformation(int Id)
    {
        var result = new CarPartsTypesManager().GetCarPartTypeById(Id);

        if (result != null)
        {
            //hfID.Value = result.ModelID.ToString();            
            txtNameEn.Text = result.Name_En;
            txtNameAr.Text = result.Name_Ar;
        }


    }

    private void ResetControls()
    {
        hfID.Value = txtNameEn.Text = txtNameAr.Text = ""; // txtShortdesc.Text = ""; //txtName.Text = ""
        divAddEdit.Visible = false;
    }

    #endregion
}