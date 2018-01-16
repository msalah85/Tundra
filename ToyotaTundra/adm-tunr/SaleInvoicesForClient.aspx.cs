using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_SaleInvoicesForClient : System.Web.UI.Page
{

    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            rblActive.SelectedIndex = 1; // show active only.
            FillInvoicesList();
        }
    }

    protected void gvInvoices_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvInvoices.PageIndex = e.NewPageIndex;
        FillInvoicesList();

    }
    protected void gvInvoices_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            // Get id to delete.
            int _ID = Convert.ToInt32(e.CommandArgument);

            // Execute delete func.
            //if (new SaleInvoicesManager().DeleteCompany(_ID)) // Cancel invoice.
            //    lblError.Text = Resources.AdminResources_en.SuccessDelete;
            //else
            //    lblError.Text = Resources.AdminResources_en.ErrorDelete;
        }
        else if (e.CommandName == "ActiveDeactive")
        {

            // Get item id to.
            long _ID = Convert.ToInt64(e.CommandArgument.ToString().Remove(e.CommandArgument.ToString().IndexOf('.')));
            bool toggle = e.CommandArgument.ToString().Substring(e.CommandArgument.ToString().IndexOf('.')).Contains('1');

            //GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            //HiddenField userEmail = (HiddenField)row.FindControl("hfUserEmail"); // user email
            //HiddenField userName = (HiddenField)row.FindControl("hfUserName");  // user name

            // Execute change status func.
            var result = new SaleInvoicesManager().ActiveDeActiveInvoice(_ID, toggle);
            if (result != null)
            {
                if (result.Payments4This <= 0 && result.SubPayments4This <= 0)
                {
                    lblError.Text = Resources.AdminResources_en.ActiveSuccess;
                    FillInvoicesList();
                }
                else
                    lblError.Text = Resources.AdminResources_en.InvoiceNotDeactive;

                //if (toggle == true)
                //    new SendEmail().SendAnEmail(userEmail.Value, string.Format("Your offer: {0} now active", _ID), CreateBody(_ID, userName.Value));
            }
            else
            {
                lblError.Text = Resources.AdminResources_en.ActiveFail;
            }


        }
    }
    protected void gvInvoices_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FillInvoicesList();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        FillInvoicesList();
    }


    #endregion

    #region "Private Methods"

    private void FillInvoicesList()
    {
        string paramStr = " ";

        if (rblActive.SelectedIndex > 0)
            paramStr += " AND Active = " + rblActive.SelectedValue;
        if (txtName.Text.Trim() != String.Empty)
            paramStr += " AND InvoiceID = " + txtName.Text;
        if (Page.RouteData.Values["clientId"] != null)
        {
            long cID = Convert.ToInt64(Page.RouteData.Values["clientId"]);
            paramStr += string.Format(" AND Client_ID = {0} ", cID);

            // Assign client links.
            lnkAddPayment.HRef = string.Format("{0}{1}/addpayments.aspx", "client-", cID);

            #region "Invoices Payments Statistics"

            var statistics = new SaleInvoicesManager().GetClientSalesPaymentsShortStatistics(cID);
            if (statistics != null)
            {

                //decimal invoicesVal = (decimal)result.Sum(s => s.SalePrice);
                //decimal paymVal = (decimal)result.Where(e => e.InOutType == "payment").Sum(ss => ss.ExpenseValue);
                //var firstBalance = result.FirstOrDefault().OpeningBalance;
                string usedCurrency = "(AED)"; // ((result.Where(r => r.ExchangeRate == 1).FirstOrDefault() != null) ? (result.Where(r => r.ExchangeRate == 1).FirstOrDefault().CurrencySymbol) : (result.FirstOrDefault().CurrencySymbol));
                //decimal openVal = (firstBalance != null ? (decimal)firstBalance : 0);

                divOpeningbalance.InnerHtml = string.Format("{0:F} {1}", statistics.ClientFirstBalance, usedCurrency);
                divTotalInvoices.InnerHtml = string.Format("{0:F} {1}", statistics.Invoices, usedCurrency);
                divTotalPayments.InnerHtml = "<a href='" + Request.Url.AbsolutePath.Replace("invoices", "payments") + "'>" + string.Format("{0:F} {1}", (statistics.Payments + statistics.SubPayments + statistics.InvoicesFirstAmount + statistics.NewBalance), usedCurrency) + "</a>";
                //divRemainder.InnerHtml = string.Format("{0:F} {1}", ((statistics.ClientFirstBalance + statistics.Invoices) - (statistics.Payments + statistics.SubPayments + statistics.InvoicesFirstAmount)), usedCurrency);
                divRemainder.InnerHtml = string.Format("{0:F} {1}", ((statistics.ClientFirstBalance + statistics.Invoices) - (statistics.Payments + statistics.SubPayments + statistics.InvoicesFirstAmount + statistics.NewBalance)), usedCurrency);
                if (statistics.NewBalance > 0) { divNewBalance.InnerHtml = string.Format("<a class='toolTip' title='Divide this amount on invoices.' href='{0}-{1}/viewsubinvoices.aspx'>{2:F} {3}</a>", ResolveClientUrl("subinvoice"), cID, statistics.NewBalance, usedCurrency); }
                else { divNewBalance.InnerHtml = "0.00 (AED)"; }


            }

            #endregion

        }

        var result = new SaleInvoicesManager().GetClientSaleInvoices(paramStr);
        gvInvoices.DataSource = result;
        gvInvoices.DataBind();

        if (result.FirstOrDefault() != null)
            lblClientName.Text = " for: " + result.FirstOrDefault().ClientName;

    }

    #endregion

    #region "Public Methods"

    public decimal InvoiceRemainder(object salePrice, object firstAmount, object totalPay, object totalSubPay)
    {
        decimal _salePrice = 0, _firstAmount = 0, _totalPay = 0, _totalSubPay = 0;

        try
        {
            if (salePrice != null)
                _salePrice = (decimal)salePrice;
            if (firstAmount != null)
                _firstAmount = (decimal)firstAmount;
            if (totalPay != null)
                _totalPay = (decimal)totalPay;
            if (totalSubPay != null)
                _totalSubPay = (decimal)totalSubPay;
        }
        catch { }

        return (_salePrice) - (_firstAmount + _totalPay + _totalSubPay);
    }

    #endregion

}