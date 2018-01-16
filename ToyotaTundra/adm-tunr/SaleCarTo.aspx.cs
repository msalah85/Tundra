using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.DataAccess;
using SystemManager.Business;


public partial class admin_elaf_SaleCarTo : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            FillLists.FillClientsList(ddlClients);
            FillLists.FillCurrenciesList(ddlCurrency);
            ddlCurrency.SelectedValue = "2";

            try
            {
                hfCarID.Value = Page.RouteData.Values["carId"].ToString();
                ShowCarDetails(hfCarID.Value);
            }
            catch { }

        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (ddlClients.SelectedIndex > 0 && txtSalePrice.Text != "")
        {
            SaveCarInvoice();
        }
        else
            lblError.Text = Resources.AdminResources_en.DataRequired;
    }

    private void SaveCarInvoice()
    {
        CarInvoice item = new CarInvoice();

        item.InvoiceID = (hfID.Value != "" ? Convert.ToInt64(hfID.Value) : 0);
        item.Car_ID = Convert.ToInt64(hfCarID.Value);
        item.Client_ID = Convert.ToInt64(ddlClients.SelectedValue);
        item.Currency_ID = Convert.ToInt32(ddlCurrency.SelectedValue);
        item.SalePrice = Convert.ToDecimal(txtSalePrice.Text);
        item.FirstAmount = Convert.ToDecimal(txtFirstAmount.Text);
        item.InvoiceDate = DateTime.Now;
        item.SiteCompany_ID = 1; // main company information for top invoice.
        item.Notes = txtShortdesc.Text;

        item.Store_ID = 1; // Store sale from.
        item.System_Who_Add = ClientSession.Current.loginId;
        item.System_LastAction_IP = ClientSession.Current.IP;

        var result = new SaleInvoicesManager().SaleInvoicesAddEdit(item, txtSecretCode.Text);
        if (result != null && result.CountSecretCode > 0 && result.CountInvoiceData > 0) // get invoice id.
        {
            Response.RedirectPermanent(ResolveClientUrl("invoice/") + result.CountInvoiceData + "/print.aspx"); // success add.
        }
        else
        {
            lblError.Text = Resources.AdminResources_en.ValidatesecretCode;
            txtSecretCode.Text = ""; // reset secret code.
        }

    }

    private void ShowCarDetails(string p)
    {
        var result = new CarsManager().GetCarDetails(int.Parse(p));

        if (result != null)
        {
            divArrivalDate.InnerHtml = MinutesuaeConcrete.GetDateOnly(result.arrive_date);
            divCarModel.InnerHtml = result.MarkerNameEn + "    &nbsp;" + result.TypeNameEn;
            divCarNo.InnerHtml = result.engine_no;
            divChassisNo.InnerHtml = result.chassis_no;
            divColor.InnerHtml = result.ColorNameEn;
            divLotNo.InnerHtml = result.lot_no;
            divYear.InnerHtml = result.YearNameEn;
            hfExpensesVal.Text = string.Format("{0:F}", result.CarTotalExpensesDollar);

            imgMain.ImageUrl += result.main_picture != null ? result.main_picture : "no_photo.jpg";
            //imgMain.Visible = (result.main_picture != null);

        }
    }

}