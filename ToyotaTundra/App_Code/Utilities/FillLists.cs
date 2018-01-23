using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using SystemManager.Business;

/// <summary>
/// Summary description for Class1
/// </summary>
static public class FillLists
{

    static public void FillLanguagesList(DropDownList list)
    {
        list.Items.Clear();

        list.DataSource = new LanguagesManager().GetLanguagesNames();
        list.DataValueField = "id";
        list.DataTextField = "lang_name";
        list.DataBind();

        list.Items.Insert(0, "");
    }

    static public void FillMarkers(DropDownList list)
    {
        list.Items.Clear();

        list.DataSource = new MarkerManager().GetCarsMarkerNames();
        list.DataValueField = "MarkerID";
        list.DataTextField = "MarkerNameEn";
        list.DataBind();

        list.Items.Insert(0, "");
    }


    static public void FillExpensTypes(DropDownList list, string curr)
    {
        list.Items.Clear();

        list.DataSource = new ExpenseTypesManager().GetExpenseTypesNamesList(curr).Where(c => c.GroupName != "General");
        list.DataValueField = "ExpenseTypeID";
        list.DataTextField = "ExpenseTypeName";
        list.DataBind();

        list.Items.Insert(0, "");
    }
    static public void FillExpensTypes(ListBox list, string curr)
    {
        list.Items.Clear();

        list.DataSource = new ExpenseTypesManager().GetExpenseTypesNamesList(curr).Where(c => c.GroupName != "General");
        list.DataValueField = "ExpenseTypeID";
        list.DataTextField = "ExpenseTypeName";
        list.DataBind();

        list.Items.Insert(0, "");
    }

    static public void FillExpensTypes(DropDownList list, string curr, bool general)
    {
        list.Items.Clear();

        //if general = true
        var result = (general == true) ? new ExpenseTypesManager().GetExpenseTypesNamesList(curr).Where(c => c.GroupName == "General") : new ExpenseTypesManager().GetExpenseTypesNamesList(curr).Where(c => c.GroupName != "General");

        list.DataSource = result;
        list.DataValueField = "ExpenseTypeID";
        list.DataTextField = "ExpenseTypeName";
        list.DataBind();

        list.Items.Insert(0, "");
    }


    static public void FillAuctionsList(DropDownList list)
    {
        list.Items.Clear();

        list.DataSource = new AuctionsManager().GetAuctionsNames();
        list.DataValueField = "AuctionID";
        list.DataTextField = "AuctionName";
        list.DataBind();

        list.Items.Insert(0, "");
    }


    static public void FillBuyersList(DropDownList list, int auctionID)
    {
        list.Items.Clear();

        list.DataSource = new BuyersManager().GetBuyersNames(auctionID);
        list.DataValueField = "BuyerID";
        list.DataTextField = "BuyerName";
        list.DataBind();

        list.Items.Insert(0, "");
    }
    static public void FillBuyersList(DropDownList list)
    {
        list.Items.Clear();

        list.DataSource = new BuyersManager().GetBuyersNames();
        list.DataValueField = "BuyerID";
        list.DataTextField = "BuyerName";
        list.DataBind();

        list.Items.Insert(0, "");
    }

    static public void FillTowingCompaniesList(DropDownList list)
    {
        list.Items.Clear();

        list.DataSource = new TowingCompaniesManager().GetTowingCompaniesNames();
        list.DataValueField = "TowingCompanyID";
        list.DataTextField = "TowingCompanyName";
        list.DataBind();

        list.Items.Insert(0, "");
    }

    static public void FillExchangeCompanies(DropDownList list)
    {
        list.Items.Clear();

        list.DataSource = new ExchangeCompaniesManager().GetExchangeCompaniesNames();
        list.DataValueField = "ExchangeCompanyID";
        list.DataTextField = "ExchangeCompanyName";
        list.DataBind();

        list.Items.Insert(0, "");
    }
    static public void FillBuyersRegionsList(DropDownList list, DropDownList list2, int auctionID)
    {
        list.Items.Clear();

        list.DataSource = new BuyersManager().GetBuyersNames(auctionID);
        list.DataValueField = "BuyerID";
        list.DataTextField = "BuyerName";
        list.DataBind();

        list.Items.Insert(0, "");
        ///////////////////////////////////////////////////////////////////

        list2.Items.Clear();
        list2.DataSource = new RegionsManager().GetRegionsNames(auctionID);
        list2.DataValueField = "RegionID";
        list2.DataTextField = "RegionEn";
        list2.DataBind();
        list2.Items.Insert(0, "");

    }

    static public void FillRegionsList(DropDownList list, int stateID)
    {
        list.Items.Clear();

        list.DataSource = new RegionsManager().GetRegionsNames(stateID);
        list.DataValueField = "RegionID";
        list.DataTextField = "RegionEn";
        list.DataBind();

        list.Items.Insert(0, "");
    }

    static public void FillColorsList(DropDownList list)
    {
        list.Items.Clear();

        list.DataSource = new ColorsManager().GetColorsNames();
        list.DataValueField = "ColorID";
        list.DataTextField = "ColorNameEn";
        list.DataBind();

        list.Items.Insert(0, "");
    }

    static public void FillColorsList(DropDownList list1, DropDownList list2)
    {
        list1.Items.Clear();
        list2.Items.Clear();

        var result = new ColorsManager().GetColorsNames();

        list1.DataSource = result;
        list1.DataValueField = "ColorID";
        list1.DataTextField = "ColorNameEn";
        list1.DataBind();
        list1.Items.Insert(0, "");

        list2.DataSource = result;
        list2.DataValueField = "ColorID";
        list2.DataTextField = "ColorNameEn";
        list2.DataBind();
        list2.Items.Insert(0, "");

    }

    static public void FillStatesList(DropDownList list)
    {
        list.Items.Clear();

        list.DataSource = new StatesManager().GetStatesNames();
        list.DataValueField = "StateID";
        list.DataTextField = "StateEn";
        list.DataBind();

        list.Items.Insert(0, "");
    }

    static public void FillStylesList(DropDownList list)
    {
        list.Items.Clear();

        list.DataSource = new StylesManager().GetStylesNames();
        list.DataValueField = "CarStyleID";
        list.DataTextField = "CarStyleNameEn";
        list.DataBind();

        list.Items.Insert(0, "");
    }

    static public void FillYearsList(DropDownList list)
    {
        list.Items.Clear();

        list.DataSource = new YearsManager().GetYearsNames();
        list.DataValueField = "YearID";
        list.DataTextField = "YearNameEn";
        list.DataBind();

        list.Items.Insert(0, "");
    }

    static public void FillWorkingStatusList(DropDownList list)
    {
        list.Items.Clear();

        list.DataSource = new CarWorkingStatusManager().GetCarWorkingStstusNames();
        list.DataValueField = "WorkingStatusID";
        list.DataTextField = "WorkingStatusNameEn";
        list.DataBind();

        //list.Items.Insert(0, "");
    }

    static public void FillDrivesList(DropDownList list)
    {
        list.Items.Clear();

        list.DataSource = new DrivesManager().GetDrivesNames();
        list.DataValueField = "DriveID";
        list.DataTextField = "DriveNameEn";
        list.DataBind();

        //list.Items.Insert(0, "");
    }

    static public void FillLinksNamesList(DropDownList list)
    {
        list.Items.Clear();

        //list.DataSource = new LinksManager().GetLinksNames();
        list.DataValueField = "id";
        list.DataTextField = "link_name";
        list.DataBind();

        list.Items.Insert(0, "");

    }


    public static void GetEnginesNames(DropDownList list)
    {
        list.Items.Clear();

        list.DataSource = new EnginesManager().GetEnginesNames();
        list.DataValueField = "EngineID";
        list.DataTextField = "EngineNameEn";
        list.DataBind();

        list.Items.Insert(0, "");
    }

    public static void GetCapacitiesNames(DropDownList list)
    {
        list.Items.Clear();

        list.DataSource = new CapacitiesManager().GetCapacitiesNames();
        list.DataValueField = "CapacityID";
        list.DataTextField = "CapacityNameEn";
        list.DataBind();

        list.Items.Insert(0, "");
    }

    public static void FillTransmissionsList(DropDownList list)
    {
        list.Items.Clear();

        list.DataSource = new TransmissionsManager().GetTransmissionsNames();
        list.DataValueField = "TransmissionID";
        list.DataTextField = "TransmissionNameEn";
        list.DataBind();

        list.Items.Insert(0, "");

    }

    public static void FillShipCompaniesList(DropDownList list)
    {
        list.Items.Clear();

        list.DataSource = new ShippingCompaniesManager().GetShipCompaniesNames();
        list.DataValueField = "ShipCompanyID";
        list.DataTextField = "ShipCompanyName";
        list.DataBind();

        list.Items.Insert(0, "");
    }


    public static void FillClearanceList(DropDownList list)
    {
        list.Items.Clear();

        list.DataSource = new ClearanceCompaniesManager().GetClearanceCompaniesNames();
        list.DataValueField = "ClearanceID";
        list.DataTextField = "ClearanceName";
        list.DataBind();

        list.Items.Insert(0, "");
    }

    public static void FillTransportList(DropDownList list)
    {
        list.Items.Clear();

        list.DataSource = new TransportCompaniesManager().GetTransportCompaniesNames();
        list.DataValueField = "TransportID";
        list.DataTextField = "TransportName";
        list.DataBind();

        list.Items.Insert(0, "");
    }

    public static void FillShipsList(DropDownList list)
    {
        list.Items.Clear();

        list.DataSource = new ShipsManager().GetShipsNames();
        list.DataValueField = "ShipID";
        list.DataTextField = "ShipEn";
        list.DataBind();

        list.Items.Insert(0, "");
    }

    public static void FillWorkshopsList(DropDownList list)
    {
        list.Items.Clear();

        list.DataSource = new WorkshopsManager().GetWorkshopsNames();
        list.DataValueField = "WorkshopID";
        list.DataTextField = "WorkshopName";
        list.DataBind();

        list.Items.Insert(0, "");
    }

    public static void FillCurrenciesList(DropDownList list)
    {
        list.Items.Clear();

        list.DataSource = new CurrenciesManager().GetCurrenciesNames();
        list.DataValueField = "CurrencyID";
        list.DataTextField = "CurrencyName";
        list.DataBind();

        list.Items.Insert(0, "");
    }

    public static void FillModelsList(DropDownList list, int makerID)
    {
        list.Items.Clear();

        list.DataSource = new ModelManager().GetModelsNames(makerID);
        list.DataValueField = "ModelID";
        list.DataTextField = "TypeNameEn";
        list.DataBind();

        list.Items.Insert(0, "");
    }

    public static void FillPortShippingList(DropDownList list)
    {
        list.Items.Clear();

        list.DataSource = new PortShipsManager().GetPortShipsNames();
        list.DataValueField = "PortShipID";
        list.DataTextField = "PortShipEn";
        list.DataBind();

        list.Items.Insert(0, "");
    }

    public static void FillClientsList(DropDownList list)
    {
        list.Items.Clear();

        list.DataSource = new ClientsManager().GetClientsNames();
        list.DataValueField = "ClientID";
        list.DataTextField = "ClientName";
        list.DataBind();

        list.Items.Insert(0, new ListItem("", "")); //Enter client name to search
    }

    public static void FillClientInvoices(DropDownList list, long clien_ID)
    {
        list.Items.Clear();

        list.DataSource = new ClientSubPaymentsManager().GetClientInvoicesNames(clien_ID);
        list.DataValueField = "InvoiceID";
        list.DataTextField = "InvoiceVal";
        list.DataBind();

        list.Items.Insert(0, new ListItem("", "")); //Enter client name to search
    }

    public static void FillClientReceipts(DropDownList list, long clien_ID)
    {
        list.Items.Clear();

        list.DataSource = new ClientSubPaymentsManager().GetClientReceiptsNames(clien_ID);
        list.DataValueField = "PaymentID";
        list.DataTextField = "PaymentVal";
        list.DataBind();

        list.Items.Insert(0, new ListItem("", "")); //Enter client name to search
    }
    
    public static void FillStoresList(DropDownList list)
    {
        list.Items.Clear();

        list.DataSource = new StoresManager().GetStoresNames();
        list.DataValueField = "StoreID";
        list.DataTextField = "StoreName";
        list.DataBind();

        list.Items.Insert(0, new ListItem("", "")); //Enter client name to search
    }

    public static void FillEmployeesList(DropDownList list)
    {
        list.Items.Clear();

        list.DataSource = new AdminManager().GetAllAdminUserNames();
        list.DataValueField = "id";
        list.DataTextField = "name";
        list.DataBind();

        list.Items.Insert(0, new ListItem("", ""));
    }
    public static void FillCarPartTypesList(DropDownList list)
    {
        list.Items.Clear();

        list.DataSource = new CarPartsTypesManager().GetCarPartsTypes();
        list.DataValueField = "Id";
        list.DataTextField = "Name";
        list.DataBind();

        list.Items.Insert(0, new ListItem("", ""));
    }

}