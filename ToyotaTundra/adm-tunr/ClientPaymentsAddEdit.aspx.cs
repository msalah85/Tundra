using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_ClientPaymentsAddEdit : System.Web.UI.Page
{

    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            try
            {
                // fill clients list.
                FillLists.FillClientsList(ddlClients);
                FillLists.FillExchangeCompanies(ddlExchangeCo);
                FillLists.FillCurrenciesList(ddlCurrency);
                ddlCurrency.SelectedValue = "2";

                ShowPaymentsByIds();

            }
            catch { }

        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (ddlClients.SelectedIndex > 0 && txtPaymentValue.Text != String.Empty) // && txtEmail.Text != string.Empty)
        {
            if (hfRestValue.Value != "") // for invoice.
            {
                // Compare entered amount with invoice amount.
                if (Convert.ToDecimal(hfRestValue.Value) >= Convert.ToDecimal(txtPaymentValue.Text))
                    SaveClientPaymentInformation();
                else
                    lblError.Text = "Please enter an amount equal to or less than the rest value.";
            }
            else // for client.
            {
                SaveClientPaymentInformation();
            }
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert",
                       "<script>alert('Please enter fields required first, then press save.');</script>");
        }
    }

    #endregion

    #region "Private Methods"

    private void ShowPaymentsByIds()
    {
        if (Page.RouteData.Values["clientId"] != null)
            ddlClients.SelectedValue = Page.RouteData.Values["clientId"].ToString();
        if (Page.RouteData.Values["invoiceId"] != null)
        {
            ltlInvoiceID.Text = Page.RouteData.Values["invoiceId"].ToString();
            lblInvoiceFor.Text = "for Invoice No.: ";

            GetInvoiceValue(ltlInvoiceID.Text);
        }

        if (Page.RouteData.Values["Id"] != null) // Repaire for edit action.
        {
            hfID.Value = Page.RouteData.Values["invoiceId"].ToString();
            ShowClientPaymentInformation(Convert.ToInt32(hfID.Value));
        }
    }

    private void GetInvoiceValue(string p)
    {
        var result = new SaleInvoicesManager().GetCarSaleInvoiceDetails(Convert.ToInt64(p));
        lblSalePrice.Text = string.Format("and It`s Rest Value = {0:F}  AED", ShowRestValue(result.SalePrice,result.FirstAmount, result.TotalPaymentsForThis,result.TotalSubPaymentsForThis));
    }

    private string ShowRestValue(decimal? nullable, decimal? nullable_2, decimal? nullable_3, decimal? nullable_4)
    {
        decimal sal, first, pay1, pay2;
        sal = nullable ?? 0;
        first = nullable_2 ?? 0;
        pay1 = nullable_3 ?? 0;
        pay2 = nullable_4 ?? 0;

        hfRestValue.Value = string.Format("{0:F}", sal - (first + pay1 + pay2));

        return hfRestValue.Value;

    }

    /// <summary>
    /// Add new ClientPayment to db.
    /// </summary>
    private void SaveClientPaymentInformation()
    {
        ClientPayment item = new ClientPayment();

        try
        {
            if (hfID.Value != "") { item.PaymentID = Convert.ToInt32(hfID.Value); }
            item.Client_ID = Convert.ToInt32(ddlClients.SelectedValue);
            item.Currency_ID = Convert.ToInt32(ddlCurrency.SelectedValue);

            item.Notes = txtShortdesc.Text;
            item.ReceiverName = txtReceivedName.Text;
            
            if (ddlExchangeCo.SelectedIndex > 0) { item.ExchangeCompany_ID = Convert.ToInt32(ddlExchangeCo.SelectedValue); }
            if (ltlInvoiceID.Text != "") { item.Invoice_ID = Convert.ToInt32(ltlInvoiceID.Text); }
            if (txtDate.Text != "") { item.PaymentDate = Convert.ToDateTime(txtDate.Text); }
            if (txtPaymentValue.Text != "") { item.PaymentValue = Convert.ToDecimal(txtPaymentValue.Text); }
            //item.Active = cbActive.Checked;

            item.Store_ID = 1; // Store sale from.
            item.System_Who_Add = ClientSession.Current.loginId;
            item.System_LastAction_IP = ClientSession.Current.IP;


            // perform saving method.
            if (new ClientPaymentsManager().SaveClientPayment(item))
            {
                // go to ClientPayments list.
                string url = string.Format("client/{0}/payments/{1}.aspx", ddlClients.SelectedValue, MinutesuaeConcrete.ToSeoUrl(ddlClients.SelectedItem.Text)); //"ClientPaymentsView.aspx";

                if (hfID.Value != "")
                {
                    Response.Redirect(ResolveClientUrl(url));
                }
                else
                    Response.Redirect(ResolveClientUrl(url));

            }
            else
            { lblError.Text = Resources.AdminResources_en.ErrorSave; }

        }
        catch { lblError.Text = Resources.AdminResources_en.ErrorSave; }

    }

    private void ShowClientPaymentInformation(int Id)
    {
        var result = new ClientPaymentsManager().GetClientPaymentDetails(Id);

        if (result != null)
        {
            //hfID.Value = result.ClientPaymentID.ToString();            
            txtDate.Text = MinutesuaeConcrete.GetDateOnly( result.PaymentDate);
            txtPaymentValue.Text = result.PaymentValue.ToString();
            txtReceivedName.Text = result.ReceiverName;
            txtShortdesc.Text = result.Notes;
            //cbActive.Checked = (bool)result.Active;

            ddlClients.SelectedValue = result.Client_ID.ToString();
            ddlCurrency.SelectedValue = result.Currency_ID.ToString();
            ddlExchangeCo.SelectedValue = result.ExchangeCompany_ID.ToString();

            if (result.Invoice_ID != null) { ltlInvoiceID.Text = result.Invoice_ID.ToString(); }

        }

    }

    #endregion

}