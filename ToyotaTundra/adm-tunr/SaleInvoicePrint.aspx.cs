using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;

public partial class admin_elaf_SaleInvoicePrint : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            try
            {
                ShowInvoiceDetails(Convert.ToInt64(Page.RouteData.Values["Id"]));
            }
            catch { }
        }

    }

    private void ShowInvoiceDetails(long p)
    {
        var result = new SaleInvoicesManager().GetCarSaleInvoiceDetails(p);

        if (result != null)
        {
            divArrivalDate.InnerHtml = MinutesuaeConcrete.GetDateOnly(result.arrive_date, "dd/MM/yyyy");
            divCarModel.InnerHtml = string.Format("{0}    -   {1}", result.MarkerNameEn, result.TypeNameEn);
            divCarNo.InnerHtml = result.engine_no;
            divChassisNo.InnerHtml = result.chassis_no;
            divColor.InnerHtml = result.ExtColorEn;
            divLotNo.InnerHtml = result.lot_no;
            divYear.InnerHtml = result.YearNameEn;

            divClient.InnerHtml = result.ClientName;
            divDescription.InnerHtml = result.Notes;
            divEmail.InnerHtml = result.CompEmail;
            divFax.InnerHtml = result.CompFax;
            divFirst.InnerHtml = string.Format("{0:F}   {1}", result.FirstAmount, result.CurrencySymbol);
            divLotNo.InnerHtml = result.lot_no;
            divName.InnerHtml = result.CompName;
            divPhone.InnerHtml = result.CompPhone;
            divPrice.InnerHtml = string.Format("{0:F}   {1}", result.SalePrice, result.CurrencySymbol);
            divWebsite.InnerHtml = result.CmopWebsite;

            divBillStatus.InnerHtml = result.Active == false ? "Canceled" : "";

            imgMain.ImageUrl += result.main_picture != null ? result.main_picture : "no_photo.jpg";

            // Go to list.
            string url = "client/" + result.Client_ID + "/invoices/" + MinutesuaeConcrete.ToSeoUrl(result.ClientName) + ".aspx";
            lnkGoList.Attributes.Add("href", url);

        }


    }
}