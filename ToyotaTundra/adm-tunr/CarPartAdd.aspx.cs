using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class adm_tunr_CarPartAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            try
            {
                FillOptionsLists();
                hfID.Value = Request.QueryString["id"]; 
                ShowCarPartInformation(Convert.ToInt32(hfID.Value));
            }
            catch (Exception ex) {} // for new car.

        }

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
            SaveCarInformation();
    }
    private void SaveCarInformation()
    {
        CarPart CarToSave = new CarPart();

        try
        {
            if (hfID.Value != "") { CarToSave.Id = Convert.ToInt32(hfID.Value); }
            CarToSave.IsActive = cbActive.Checked;
            //CarToSave.main_picture
            if (ddlMarkers.SelectedIndex > 0) { CarToSave.MakerId = Convert.ToInt32(ddlMarkers.SelectedValue); }
            if (ddlModels.SelectedIndex > 0) { CarToSave.ModelId = Convert.ToInt32(ddlModels.SelectedValue); }
            if (ddlcarPartType.SelectedIndex > 0) { CarToSave.TypeId = Convert.ToInt32(ddlcarPartType.SelectedValue); }
            if (txtSalePrice.Text != "") { CarToSave.Price = Convert.ToDecimal(txtSalePrice.Text); }
            //if (txtPriority.Text != "") { CarToSave.Periority = Convert.ToInt32(txtPriority.Text); }
            if (txtDesc.Text != "") { CarToSave.Description = txtDesc.Text; }
            if (ddlYears.SelectedIndex > 0) { CarToSave.YearId = Convert.ToInt32(ddlYears.SelectedValue); }
            var result = new CarPartsManager().SaveCarPart(CarToSave);
            if (result != null)
            {
                //    //go to Cars images list.
                string url = ResolveClientUrl("CarPartsImages.aspx?categoryType=cars&masterId=") + result; //"CarsView.aspx";
                Response.Redirect(url);

        }
            else
            { lblError.Text = Resources.AdminResources_en.ErrorSave; }

    }
        catch { lblError.Text = Resources.AdminResources_en.ErrorSave; }

    }
    private void ShowCarPartInformation(int Id)
    {
        var result = new CarPartsManager().GetCarPartById(Id);

        if (result != null)
        {
            cbActive.Checked = (bool)result.IsActive;

            if (result.MakerId != null) { ddlMarkers.SelectedValue = result.ModelId.ToString(); }
            ddlMarkers_SelectedIndexChanged(ddlMarkers, new EventArgs());
            if (result.ModelId != null) { ddlModels.SelectedValue = result.ModelId.ToString(); }

            if (result.Year != null) { ddlYears.SelectedValue = result.YearId.ToString(); }
            if (result.CarPartType != null) { ddlcarPartType.SelectedValue = result.TypeId.ToString(); }
            if (result.Price != null) { txtSalePrice.Text = result.Price.ToString(); }
            //if (result.Periority != null) { txtPriority.Text = result.Periority.ToString(); }
            if (result.Description != null) { txtDesc.Text = result.Description.ToString(); }
        }
    }


    private void FillOptionsLists()
    {
        #region "Fill Lists"
        FillLists.FillYearsList(ddlYears);
        FillLists.FillMarkers(ddlMarkers);
        FillLists.FillCarPartTypesList(ddlcarPartType);
        #endregion
    }
    protected void ddlMarkers_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlMarkers.SelectedIndex > 0)
            FillLists.FillModelsList(ddlModels, Convert.ToInt32(ddlMarkers.SelectedValue));
        else
            ddlModels.Items.Clear();
    }
}
    