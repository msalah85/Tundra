using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;
using System.Web.Services;

public partial class admin_elaf_CarsAddEdit : Page
{

    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            try
            {
                FillOptionsLists();

                hfID.Value = Page.RouteData.Values["Id"].ToString();
                ShowCarInformation(Convert.ToInt32(hfID.Value));
            }
            catch(Exception ex) { ShowCarCode(); } // for new car.

        }
    }

    private void ShowCarCode()
    {
        var result = new CarsManager().GetCarCode();

        if (result != null)
        {
            txtCode.Text = result.NEWCODE.ToString();
        }

        // defaults
        txtPurchaseDate.Text = DateTime.Now.ToShortDateString();
        ddlCar_engine.SelectedValue = "7";
        ddlCar_drive.SelectedValue = "2";
        ddlcar_transmission.SelectedValue = "2";
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtCode.Text != String.Empty && txtchassis_no.Text != string.Empty && ddlMarkers.SelectedIndex > 0 && ddlModels.SelectedIndex > 0)
        {
            SaveCarInformation();
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert",
                       "<script>alert('Please enter fields required first, then press save.');</script>");
        }
    }

    #endregion

    #region "Private Methods"

    private void FillOptionsLists()
    {
        #region "Fill Lists"
        FillLists.FillYearsList(ddlYears);
        FillLists.FillWorkingStatusList(ddlWorkingStatus_ID);

        //FillLists.FillAuctionsList(ddlAuctions);
        FillLists.FillMarkers(ddlMarkers);
        //FillLists.FillStatesList(ddlState_ID);
        FillLists.FillTowingCompaniesList(ddlTowingCo);
        FillLists.FillColorsList(ddlexterior_color, ddlinterior_color);
        FillLists.FillStylesList(ddlbody_style);
        FillLists.FillDrivesList(ddlCar_drive);
        FillLists.GetEnginesNames(ddlCar_engine);
        FillLists.GetCapacitiesNames(ddlcar_capacity);
        FillLists.FillTransmissionsList(ddlcar_transmission);
        FillLists.FillShipCompaniesList(ddlShippingCompany_ID);
        FillLists.FillShipsList(ddlShip_ID);
        FillLists.FillWorkshopsList(ddlWorkshop_ID);
        FillLists.FillCurrenciesList(ddlCurrency);
        FillLists.FillPortShippingList(ddlPortShipping_ID);

        //FillLists.FillTransportList(ddlTransferes);
        FillLists.FillStoresList(ddlStores);
        #endregion
    }

    /// <summary>
    /// Add new Car to db.
    /// </summary>
    private void SaveCarInformation()
    {
        CarsData CarToSave = new CarsData();

        try
        {
            if (hfID.Value != "") { CarToSave.CarID = Convert.ToInt32(hfID.Value); }
            CarToSave.TransferStatus_ID = ((hfTransferStatus.Value.Length > 0) ? (Convert.ToInt32(hfTransferStatus.Value)) : (1)); // 'new' status ==> 'in Checkout status'.
            CarToSave.container_no = txtcontainer_no.Text;
            CarToSave.container_code = txtContainerCode.Text;
            CarToSave.poly_fielding = txtPolyFielding.Text;
            CarToSave.booking_no = txtBookingNo.Text;

            if (txtcontainer_no.Text != "") { CarToSave.TransferStatus_ID = 2; } // shipping status
            if (txtShippingDate.Text != "") { CarToSave.Shipping_date = Convert.ToDateTime(txtShippingDate.Text); } // CarToSave.TransferStatus_ID = 2; } // 'shipping status'

            if (txtArrivael_Date.Text != "") { CarToSave.arrive_date = Convert.ToDateTime(txtArrivael_Date.Text); CarToSave.TransferStatus_ID = 3; } // 'In UAE' status.
            if (txtSaleDate.Text != "") { CarToSave.sale_date = Convert.ToDateTime(txtSaleDate.Text); } // CarToSave.TransferStatus_ID = 3; } // 'In UAE' status.

            if (txtDubiaArrivalDate.Text != "") { CarToSave.dubia_arrive_date = Convert.ToDateTime(txtDubiaArrivalDate.Text); }
            if (txtSharjahArrivalDate.Text != "") { CarToSave.sharjah_arrive_date = Convert.ToDateTime(txtSharjahArrivalDate.Text); }
            if (txtExpectedArrivalDate.Text != "") { CarToSave.expected_arrive_date = Convert.ToDateTime(txtExpectedArrivalDate.Text); }


            CarToSave.active = cbActive.Checked;
            //if (ddlAuctions.SelectedIndex > 0) { CarToSave.Auction_ID = Convert.ToInt32(ddlAuctions.SelectedValue); }
            if (ddlbody_style.SelectedIndex > 0) { CarToSave.body_style = Convert.ToInt32(ddlbody_style.SelectedValue); }
            //if (ddlBuyers.SelectedIndex > 0) { CarToSave.Buyer_ID = Convert.ToInt32(ddlBuyers.SelectedValue); }
            if (ddlcar_capacity.SelectedIndex > 0) { CarToSave.car_capacity = Convert.ToInt32(ddlcar_capacity.SelectedValue); }
            if (txtCode.Text != "") { CarToSave.car_code = Convert.ToInt32(txtCode.Text); }
            if (ddlCar_drive.SelectedIndex > 0) { CarToSave.car_drive = Convert.ToInt32(ddlCar_drive.SelectedValue); }
            if (ddlCar_engine.SelectedIndex > 0) { CarToSave.car_engine = Convert.ToInt32(ddlCar_engine.SelectedValue); }
            CarToSave.car_options = GetOptionStr();
            CarToSave.car_remarks = txtRemarks.Text;
            if (ddlcar_transmission.SelectedIndex > 0) { CarToSave.car_transmission = Convert.ToInt32(ddlcar_transmission.SelectedValue); }
            CarToSave.chassis_no = txtchassis_no.Text;

            if (txtCost.Text != "") { CarToSave.cost = Convert.ToDecimal(txtCost.Text); }
            if (ddlCurrency.SelectedIndex > 0) { CarToSave.CurrencyExchange_ID = Convert.ToInt32(ddlCurrency.SelectedValue); }
            CarToSave.engine_no = txtEngine_no.Text;
            if (ddlexterior_color.SelectedIndex > 0) { CarToSave.exterior_color = Convert.ToInt32(ddlexterior_color.SelectedValue); }
            if (ddlinterior_color.SelectedIndex > 0) { CarToSave.interior_color = Convert.ToInt32(ddlinterior_color.SelectedValue); }
            CarToSave.lot_no = txtLot_no.Text;
            //CarToSave.main_picture
            if (ddlMarkers.SelectedIndex > 0) { CarToSave.Marker_ID = Convert.ToInt32(ddlMarkers.SelectedValue); }
            CarToSave.mileage = txtMileage.Text;
            if (ddlModels.SelectedIndex > 0) { CarToSave.Model_ID = Convert.ToInt32(ddlModels.SelectedValue); }
            CarToSave.payement_to_who = txtSaleTo.Text;
            if (ddlPortShipping_ID.SelectedIndex > 0) { CarToSave.PortShipping_ID = Convert.ToInt32(ddlPortShipping_ID.SelectedValue); }
            //CarToSave.price_currency
            if (txtreal_price.Text != "") { CarToSave.real_price = Convert.ToDecimal(txtreal_price.Text); }
            //if (ddlRegion_ID.SelectedIndex > 0) { CarToSave.Region_ID = Convert.ToInt32(ddlRegion_ID.SelectedValue); }

            CarToSave.Store_ID = 1;
            if (ddlStores.SelectedIndex > 0) { CarToSave.Store_ID = Convert.ToInt32(ddlStores.SelectedValue); }// <--
            //if (ddlTransferes.SelectedIndex > 0) { CarToSave.Transport_ID = Convert.ToInt32(ddlTransferes.SelectedValue); }

            if (txtSalePrice.Text != "") { CarToSave.sale_price = Convert.ToDecimal(txtSalePrice.Text); }
            CarToSave.sale_to = txtSaleTo.Text;
            if (ddlShip_ID.SelectedIndex > 0) { CarToSave.Ship_ID = Convert.ToInt32(ddlShip_ID.SelectedValue); }
            if (ddlShippingCompany_ID.SelectedIndex > 0) { CarToSave.ShippingCompany_ID = Convert.ToInt32(ddlShippingCompany_ID.SelectedValue); }
            //if (ddlState_ID.SelectedIndex > 0) { CarToSave.State_ID = Convert.ToInt32(ddlState_ID.SelectedValue); }
            CarToSave.featured_car = Convert.ToBoolean(rblFeatures.SelectedValue);

            CarToSave.Customs_No = txtCustomsNo.Text;
            if (txtCheckoutDate.Text != "") { CarToSave.checkout_date = Convert.ToDateTime(txtCheckoutDate.Text); }
            if (txtWorkshopEntryDate.Text != "") { CarToSave.WorkshopEntryDate = Convert.ToDateTime(txtWorkshopEntryDate.Text); }
            if (txtWorkshopExitDate.Text != "") { CarToSave.WorkshopExitDate = Convert.ToDateTime(txtWorkshopExitDate.Text); }

            if (ddlWorkshop_ID.SelectedIndex > 0) { CarToSave.Workshop_ID = Convert.ToInt32(ddlWorkshop_ID.SelectedValue); }
            if (ddlYears.SelectedIndex > 0) { CarToSave.Year_ID = Convert.ToInt32(ddlYears.SelectedValue); }
            CarToSave.visitors = Convert.ToInt64(hfVisitors.Value);

            CarToSave.sold = false;// (txtSaleDate.Text != "" ? true : false); // change sold status where sale date was set.
            CarToSave.WorkingStatus_ID = Convert.ToInt32(ddlWorkingStatus_ID.SelectedValue);
            if (!string.IsNullOrEmpty(txtPurchaseDate.Text)) { CarToSave.purchase_date = Convert.ToDateTime(txtPurchaseDate.Text); }

            if (hfMain_Picture.Value != "") { CarToSave.main_picture = hfMain_Picture.Value; }

            CarToSave.System_Add_Date = DateTime.Now;
            CarToSave.System_Who_Add = ClientSession.Current.loginId;
            CarToSave.System_LastAction_IP = ClientSession.Current.IP;

            // perform saving method.
            var result = new CarsManager().SaveCar(CarToSave);
            if (result != null)
            {
                // go to Cars images list.
                string url = ResolveClientUrl("Images.aspx?categoryType=cars&masterId=") + result.CarID; //"CarsView.aspx";
                Response.Redirect(url);

            }
            else
            { lblError.Text = Resources.AdminResources_en.ErrorSave; }

        }
        catch { lblError.Text = Resources.AdminResources_en.ErrorSave; }

    }

    private void ShowCarInformation(int Id)
    {
        var result = new CarsManager().GetCarDetails(Id);

        if (result != null)
        {
            cbActive.Checked = (bool)result.active;
            txtcontainer_no.Text = result.container_no;
            txtContainerCode.Text = result.container_code;
            txtPolyFielding.Text = result.poly_fielding;
            txtBookingNo.Text = result.booking_no;

            if (result.arrive_date != null) { txtArrivael_Date.Text = MinutesuaeConcrete.GetDateOnly(result.arrive_date); }
            txtchassis_no.Text = result.chassis_no;
            if (result.checkout_date != null) { txtCheckoutDate.Text = MinutesuaeConcrete.GetDateOnly(result.checkout_date); }
            txtCode.Text = result.car_code.ToString();

            if (result.cost != null) { txtCost.Text = result.cost.ToString(); }
            txtCustomsNo.Text = result.Customs_No;
            txtEngine_no.Text = result.engine_no;
            txtLot_no.Text = result.lot_no;
            txtMileage.Text = result.mileage;
            if (result.real_price != null) { txtreal_price.Text = result.real_price.ToString(); }
            txtRemarks.Text = result.car_remarks;
            if (result.sale_date != null) { txtSaleDate.Text = MinutesuaeConcrete.GetDateOnly(result.sale_date); }
            if (result.sale_price != null) { txtSalePrice.Text = result.sale_price.ToString(); }
            txtSaleTo.Text = result.sale_to;
            if (result.Shipping_date != null) { txtShippingDate.Text = MinutesuaeConcrete.GetDateOnly(result.Shipping_date); }
            if (result.WorkshopEntryDate != null) { txtWorkshopEntryDate.Text = MinutesuaeConcrete.GetDateOnly(result.WorkshopEntryDate); }
            if (result.WorkshopExitDate != null) { txtWorkshopExitDate.Text = MinutesuaeConcrete.GetDateOnly(result.WorkshopExitDate); }

            if (result.expected_arrive_date != null) { txtExpectedArrivalDate.Text = MinutesuaeConcrete.GetDateOnly(result.expected_arrive_date); }
            if (result.dubia_arrive_date != null) { txtDubiaArrivalDate.Text = MinutesuaeConcrete.GetDateOnly(result.dubia_arrive_date); }
            if (result.sharjah_arrive_date != null) { txtSharjahArrivalDate.Text = MinutesuaeConcrete.GetDateOnly(result.sharjah_arrive_date); }
            txtPurchaseDate.Text = string.Format("{0:MM/dd/yyyy}", result.purchase_date);

            //if (result.Auction_ID != null) { ddlAuctions.SelectedValue = result.Auction_ID.ToString(); }
            //ddlAuctions_SelectedIndexChanged(ddlAuctions, new EventArgs());

            //if (result.Buyer_ID != null) { ddlBuyers.SelectedValue = result.Buyer_ID.ToString(); }
            if (result.body_style != null) { ddlbody_style.SelectedValue = result.body_style.ToString(); }
            if (result.car_capacity != null) { ddlcar_capacity.SelectedValue = result.car_capacity.ToString(); }
            if (result.car_drive != null) { ddlCar_drive.SelectedValue = result.car_drive.ToString(); }
            if (result.car_engine != null) { ddlCar_engine.SelectedValue = result.car_engine.ToString(); }
            if (result.car_transmission != null) { ddlcar_transmission.SelectedValue = result.car_transmission.ToString(); }

            if (result.CurrencyExchange_ID != null) { ddlCurrency.SelectedValue = result.CurrencyExchange_ID.ToString(); }
            if (result.exterior_color != null) { ddlexterior_color.SelectedValue = result.exterior_color.ToString(); }
            if (result.interior_color != null) { ddlinterior_color.SelectedValue = result.interior_color.ToString(); }
            if (result.Store_ID != null) { ddlStores.SelectedValue = result.Store_ID.ToString(); }
            //if (result.Transport_ID != null) { ddlTransferes.SelectedValue = result.Transport_ID.ToString(); }
            if (result.Marker_ID != null) { ddlMarkers.SelectedValue = result.Marker_ID.ToString(); }
            ddlMarkers_SelectedIndexChanged(ddlMarkers, new EventArgs());

            if (result.Model_ID != null) { ddlModels.SelectedValue = result.Model_ID.ToString(); }
            if (result.PortShipping_ID != null) { ddlPortShipping_ID.SelectedValue = result.PortShipping_ID.ToString(); }
            if (result.Ship_ID != null) { ddlShip_ID.SelectedValue = result.Ship_ID.ToString(); }
            if (result.ShippingCompany_ID != null) { ddlShippingCompany_ID.SelectedValue = result.ShippingCompany_ID.ToString(); }
            //if (result.State_ID != null) { ddlState_ID.SelectedValue = result.State_ID.ToString(); }
            //ddlState_ID_SelectedIndexChanged(ddlState_ID, new EventArgs());
            if (result.featured_car != null && (bool)result.featured_car == true) { rblFeatures.SelectedValue = "true"; }

            //if (result.Region_ID != null) { ddlRegion_ID.SelectedValue = result.Region_ID.ToString(); }
            if (result.WorkingStatus_ID != null) { ddlWorkingStatus_ID.SelectedValue = result.WorkingStatus_ID.ToString(); }
            if (result.Workshop_ID != null) { ddlWorkshop_ID.SelectedValue = result.Workshop_ID.ToString(); }
            if (result.Year_ID != null) { ddlYears.SelectedValue = result.Year_ID.ToString(); }

            hfVisitors.Value = ((result.visitors != null) ? (result.visitors.ToString()) : "0");
            hfTransferStatus.Value = ((result.TransferStatus_ID != null) ? (result.TransferStatus_ID.ToString()) : "1");
            hfMain_Picture.Value = ((result.main_picture != null) ? (result.main_picture) : "");

            if (result.car_options != null) { ShowOptions(result.car_options); }
        }

    }

    // Create option string.
    private string GetOptionStr()
    {
        string optionStr = "";

        foreach (ListItem item in cblCarOption.Items)
        {
            if (item.Selected)
                optionStr += item.Value + "|";
        }

        string x = optionStr.Remove(optionStr.Length - 1);
        return x;
    }

    private void ShowOptions(string option)
    {

        // remove separators
        char[] separator = new char[] { '|' };
        string[] arr = option.Split(separator);

        foreach (string st in arr)
        {
            cblCarOption.Items.FindByText(st).Selected = true;
        }

    }
    #endregion

    protected void ddlMarkers_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlMarkers.SelectedIndex > 0)
            FillLists.FillModelsList(ddlModels, Convert.ToInt32(ddlMarkers.SelectedValue));
        else
            ddlModels.Items.Clear();
    }

    [WebMethod]
    public static bool FetchChassis(string chss)
    {
        var result = new CarsManager().GetCarChassisNo(chss);

        if (result != null)
        {
            return String.IsNullOrEmpty(result.chassis_no) ? false : true; // true ==> mean that an chassis no already exist. 
        }
        else { return false; }
    }


}