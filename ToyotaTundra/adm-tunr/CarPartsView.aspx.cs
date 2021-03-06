﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;
using SystemManager.Models;
public partial class adm_tunr_CarPartsView : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            FillOptionsLists();
            ShowCarPartsContent();
        }

    }
    protected void gvModels_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            // Get id to delete.
            int _ID = Convert.ToInt32(e.CommandArgument);
            DeletePartCar(_ID);
        }
        else if (e.CommandName == "EditItem")
        {
            hfID.Value = e.CommandArgument.ToString();
            Response.Redirect("CarPartAdd.aspx?id=" + hfID.Value);
        }
    }
    protected void gvModels_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        lvCarParts.PageIndex = e.NewPageIndex;
        ShowCarPartsContent();
    }
    protected void gvModels_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        ShowCarPartsContent();
    }
    private void DeletePartCar(int _ID)
    {
        new CarPartsManager().DeleteCarPart(_ID);
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        ShowCarPartsContentWithSearch();
    }

    private void ShowCarPartsContent()
    {

        // get data.
        var data = new CarPartsManager().GetAllCarParts();
        if (data != null)
        {
            foreach (var item in data)
            {
                var model = new CarPartsImagesManager().CarPartHasMainImage(item.CarPartId);
                if (model.Count() == 0)
                    item.ImageUrl = "20_bQT1WmUM.jpg";
                else
                {
                    var model0 = model.Where(x => x.IsMain == true).ToList();
                    if (model0.Count() == 0)
                        item.ImageUrl = "20_bQT1WmUM.jpg";
                    else
                        item.ImageUrl = model0.FirstOrDefault().Url;
                }
            }
            // show home news
            lvCarParts.DataSource = data;
            lvCarParts.DataBind();
        }
        FillLists.FillCarPartTypesList(ddlcarPartType);
    }

    private void ShowCarPartsContentWithSearch()
    {
        var data = new List<CarPartDetails>();
        // get data.
        int selectedindex = Convert.ToInt32(ddlcarPartType.SelectedIndex);
        if (selectedindex > 0)
        {
            data = new CarPartsManager().GetAllCarPartsBycarPartType(txtName.Text.Trim(), selectedindex);
        }
        else
        {
            data = new CarPartsManager().GetAllCarParts(txtName.Text.Trim());
        }
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
            // show home news
            lvCarParts.DataSource = data;
            lvCarParts.DataBind();
        }
        FillLists.FillCarPartTypesList(ddlcarPartType);
        if(selectedindex>0)
          ddlcarPartType.SelectedValue = selectedindex.ToString();
    }
    private void ShowCarPartsContentWithSearchAndCarPartType(int id)
    {
        // get data.

        var data = new CarPartsManager().GetAllCarPartsBycarPartType(txtName.Text.Trim(), id);
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
            // show home news
            lvCarParts.DataSource = data;
            lvCarParts.DataBind();
        }
    }

    protected void lvCarParts_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {
        //this.DataPagerCarParts.SetPageProperties(e.StartRowIndex,
        //    e.MaximumRows, false);
        ShowCarPartsContent();
    }
    private void FillOptionsLists()
    {
        #region "Fill Lists"
        FillLists.FillCarPartTypesList(ddlcarPartType);
        #endregion
    }


  
}