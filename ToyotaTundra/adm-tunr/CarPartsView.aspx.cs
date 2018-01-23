using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
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
    protected void CarsListView_OnItemCommand(object sender, ListViewCommandEventArgs e)
    {
        // Listview delete item.
        if (String.Equals(e.CommandName, "DeleteItem"))
        {
            //ObjectDataSource1.DeleteParameters.Clear();
            // Get id to delete.
            int _ID = Convert.ToInt32(e.CommandArgument);
            DeleteThisCar(_ID);

            // delete item from listview.s
            if (e.Item.DataItemIndex >= 0)
                lvCarParts.DeleteItem(e.Item.DataItemIndex); //lvCarsList.SelectedIndex);
            ListViewDataItem dataItem = (ListViewDataItem)e.Item;
            if (dataItem != null)
                lvCarParts.Items.Remove(dataItem);

        }
    }

    private void DeleteThisCar(int _ID)
    {
        long adminID = ClientSession.Current.loginId;

        // Execute delete func.
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
            // show home news
            lvCarParts.DataSource = data;
            lvCarParts.DataBind();
        }
    }

    protected void lvCarParts_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {
        this.DataPagerCarParts.SetPageProperties(e.StartRowIndex,
            e.MaximumRows, false);
        ShowCarPartsContent();
    }
    private void FillOptionsLists()
    {
        #region "Fill Lists"
        FillLists.FillCarPartTypesList(ddlcarPartType);
        #endregion
    }

}