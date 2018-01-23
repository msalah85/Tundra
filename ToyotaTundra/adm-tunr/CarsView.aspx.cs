using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;

public partial class admin_elaf_CarsView : Page
{
    #region "Event Handler"
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            FillCarsList(); // get available cars list.
        }
    }
    protected void CarsListView_OnItemCommand(object sender, ListViewCommandEventArgs e)
    {
        // Listview delete item.
        if (String.Equals(e.CommandName, "DeleteItem"))
        {
            //ObjectDataSource1.DeleteParameters.Clear();
            ObjectDataSource1.DeleteParameters["CarID"].DefaultValue = e.CommandArgument.ToString();
            ObjectDataSource1.DeleteMethod = "DeleteCar";
            ObjectDataSource1.Delete();
            
            // Get id to delete.
            long _ID = Convert.ToInt32(e.CommandArgument);
            DeleteThisCar(_ID);

            // delete item from listview.s
            if (e.Item.DataItemIndex >= 0)
                lvCarsList.DeleteItem(e.Item.DataItemIndex); //lvCarsList.SelectedIndex);
            ListViewDataItem dataItem = (ListViewDataItem)e.Item;
            if (dataItem != null)
                lvCarsList.Items.Remove(dataItem);

        }
    }
    
    private void DeleteThisCar(long _ID)
    {
        long adminID = ClientSession.Current.loginId;

        // Execute delete func.
        var expensesForThisCar = new CarsManager().DeleteCar(_ID, adminID, ClientSession.Current.IP);
        //if (expensesForThisCar != null && expensesForThisCar.CarExpensesCount > 0)
        //    lblError.Text = Resources.AdminResources_en.CarDeletionHasExpenses;
        //else
            lblError.Text = Resources.AdminResources_en.SuccessDelete;
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        FillCarsList();
    }

    #endregion

    #region "Private Methods"

    private void FillCarsList()
    {
        string paramStr = " ";

        if (rblActive.SelectedIndex > 0)
            paramStr += " AND Active = " + rblActive.SelectedValue;
        if (txtName.Text.Trim() != String.Empty)
            paramStr += " AND ((CAR_CODE Like N'%" + txtName.Text + "%') OR (AuctionName Like N'%" + txtName.Text + "%') OR (BuyerName Like N'%" + txtName.Text + "%') OR (MarkerNameEn Like N'%" + txtName.Text + "%') OR (TypeNameEn Like N'%" + txtName.Text + "%') OR (YearNameEn Like N'%" + txtName.Text + "%')) ";
        if (Page.RouteData.Values["WorkStatus"] != null)
            paramStr += " AND WorkingStatusNameEn LIKE '%" + Page.RouteData.Values["WorkStatus"].ToString() + "%' ";
        if (Page.RouteData.Values["SaleStatus"] != null)
            paramStr += " AND sold  = " + SoldSattus(Page.RouteData.Values["SaleStatus"].ToString());

        HttpContext.Current.Cache["CarsParam"] = paramStr;
    }

    int SoldSattus(string _status)
    {
        if (_status == "sold")
            return 1;
        else
            return 0;
    }

    int WorkingStatus(string _status)
    {
        if (_status == "used")
            return 1;
        else if (_status == "damaged")
            return 2;
        else
            return 3;
    }
    #endregion
}