using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.Models;

public partial class CarParts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {   
        if (!Page.IsPostBack)
        {
            FillOptionsLists();
            ShowCarPartsContent();
        }

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        ShowCarPartsContentWithSearch();
    }
    private void ShowCarPartsContentWithSearch()
    {
        CarPartsSearch model = new CarPartsSearch();
        if (ddlMarkers.SelectedIndex > 0) { model.MakerId = Convert.ToInt32(ddlMarkers.SelectedValue); }
        if (ddlModels.SelectedIndex > 0) { model.ModelId = Convert.ToInt32(ddlModels.SelectedValue); }
        if (ddlcarPartType.SelectedIndex > 0) { model.CarPartTypeId = Convert.ToInt32(ddlcarPartType.SelectedValue); }
        if (fromPrice.Text != "") { model.StartPrice = fromPrice.Text; }
        if (endPrice.Text != "") { model.EndPrice = endPrice.Text; }
        if (ddlYears.SelectedIndex > 0) { model.FromYearId = Convert.ToInt32(ddlYears.SelectedItem.Text); }
        if (ddlYears.SelectedIndex > 0) { model.ToYearId = Convert.ToInt32(ddlToYears.SelectedItem.Text); }
        model.Search = txtName.Text.Trim();
        List<CarPartDetails> data = new List<CarPartDetails>();
        // get data.
            data = new CarPartsManager().GetAllCarParts(model).Take(10).ToList();
        parts = data;
        if (data != null)
        {
            foreach (var item in data)
            {
                var model0 = new CarPartsImagesManager().CarPartHasMainImage(item.CarPartId);
                if (model0.Count() == 0)
                    item.ImageUrl = "20_bQT1WmUM.jpg";
                else
                    item.ImageUrl = model0.Where(x => x.IsMain == true).FirstOrDefault().Url;
            }
        }
    }
    public List<CarPartDetails> parts
    {
        get
        {
            if (ViewState["StatisticsArray"] != null)
            {
                return (List<CarPartDetails>)ViewState["StatisticsArray"];
            }
            return new List<CarPartDetails>();
        }
        set { ViewState["StatisticsArray"] = value; }
    }

    private void ShowCarPartsContent()
    {

        // get data.
        List<CarPartDetails> data = new CarPartsManager().GetAllCarPartsForWebSite().Take(10).ToList();
        parts = data;
        if (data != null)
        {
            foreach (var item in data)
            {
                var model = new CarPartsImagesManager().CarPartHasMainImage(item.CarPartId);
                if (model.Count() == 0)
                    item.ImageUrl = "20_bQT1WmUM.jpg";
                else
                    item.ImageUrl = model.Where(x => x.IsMain == true).FirstOrDefault().Url;
            }
        }
    }
    private void FillOptionsLists()
    {
        #region "Fill Lists"
        FillLists.FillFromYearsList(ddlYears);
        FillLists.FillToYearsList(ddlToYears);
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