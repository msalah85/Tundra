using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_ClientPaymentsView : System.Web.UI.Page
{

    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            rblActive.SelectedIndex = 1; // show active only.
            FillClientPaymentsList();
        }
    }
    protected void gvClientPayments_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvClientPayments.PageIndex = e.NewPageIndex;
        FillClientPaymentsList();

    }
    protected void gvClientPayments_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //if (e.CommandName == "Delete")
        //{
        //    // Get id to delete.
        //    int _ID = Convert.ToInt32(e.CommandArgument);

        //    // Execute delete func.
        //    //if (new SaleClientPaymentsManager().DeleteCompany(_ID)) // Cancel invoice.
        //    //    lblError.Text = Resources.AdminResources_en.SuccessDelete;
        //    //else
        //    //    lblError.Text = Resources.AdminResources_en.ErrorDelete;
        //}
        if (e.CommandName == "ActiveDeactive")
        {

            // Get item id to.
            long _ID = Convert.ToInt64(e.CommandArgument.ToString().Remove(e.CommandArgument.ToString().IndexOf('.')));
            bool toggle = e.CommandArgument.ToString().Substring(e.CommandArgument.ToString().IndexOf('.')).Contains('1');

            //GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            //HiddenField userEmail = (HiddenField)row.FindControl("hfUserEmail"); // user email
            //HiddenField userName = (HiddenField)row.FindControl("hfUserName");  // user name

            // Execute delete func.
            if (_ID > 0)
            {
                if (new ClientPaymentsManager().ActiveDeActivePayment(_ID, toggle))
                {
                    lblError.Text = Resources.AdminResources_en.ActiveSuccess;
                    FillClientPaymentsList();

                    //if (toggle == true)
                    //    new SendEmail().SendAnEmail(userEmail.Value, string.Format("Your offer: {0} now active", _ID), CreateBody(_ID, userName.Value));
                }
                else
                {
                    lblError.Text = Resources.AdminResources_en.ActiveFail;
                }

            }
            else
                lblError.Text = Resources.AdminResources_en.ActiveFail;

        }
    }
    protected void gvClientPayments_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FillClientPaymentsList();
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        FillClientPaymentsList();
    }

    #endregion

    #region "Private Methods"

    private void FillClientPaymentsList()
    {
        string paramStr = " ";

        if (rblActive.SelectedIndex > 0)
            paramStr += " AND Active = " + rblActive.SelectedValue;
        if (txtName.Text.Trim() != String.Empty)
            paramStr += " AND PaymentID = " + txtName.Text;
        if (Page.RouteData.Values["clientId"] != null)
        {
            long cID = Convert.ToInt64(Page.RouteData.Values["clientId"]);
            paramStr += string.Format(" AND Client_ID = {0} ", cID);

            // Assign client links.            
            lnkAddPayment.HRef = string.Format("{0}{1}/addpayments.aspx", "client-", cID);

            var statistics = new SaleInvoicesManager().GetClientSalesPaymentsShortStatistics(cID);
            if (statistics != null)
            {

                //decimal invoicesVal = (decimal)result.Sum(s => s.SalePrice);
                //decimal paymVal = (decimal)result.Where(e => e.InOutType == "payment").Sum(ss => ss.ExpenseValue);
                //var firstBalance = result.FirstOrDefault().OpeningBalance;
                string usedCurrency = "(AED)"; // ((result.Where(r => r.ExchangeRate == 1).FirstOrDefault() != null) ? (result.Where(r => r.ExchangeRate == 1).FirstOrDefault().CurrencySymbol) : (result.FirstOrDefault().CurrencySymbol));
                //decimal openVal = (firstBalance != null ? (decimal)firstBalance : 0);

                divOpeningbalance.InnerHtml = string.Format("{0:F} {1}", statistics.ClientFirstBalance, usedCurrency);
                divTotalInvoices.InnerHtml = "<a href='" + Request.Url.AbsolutePath.Replace("payments", "invoices") + "'>" + string.Format("{0:F} {1}", statistics.Invoices, usedCurrency) + "</a>";
                divTotalPayments.InnerHtml = string.Format("{0:F} {1}", (statistics.Payments + statistics.SubPayments + statistics.InvoicesFirstAmount + statistics.NewBalance), usedCurrency);
                divRemainder.InnerHtml = string.Format("{0:F} {1}", ((statistics.ClientFirstBalance + statistics.Invoices) - (statistics.Payments + statistics.SubPayments + statistics.InvoicesFirstAmount + statistics.NewBalance)), usedCurrency);
                if (statistics.NewBalance > 0) { divNewBalance.InnerHtml = string.Format("<a class='toolTip' title='Divide this amount on invoices.' href='{0}-{1}/viewsubinvoices.aspx'>{2:F} {3}</a>", ResolveClientUrl("subinvoice"), cID, statistics.NewBalance, usedCurrency); }
                else { divNewBalance.InnerHtml = "0.00 (AED)"; }

            }
        }

        var result = new ClientPaymentsManager().GetClientPayments(paramStr);

        if (result != null)
        {
            gvClientPayments.DataSource = result;
            gvClientPayments.DataBind();

            if (result.FirstOrDefault() != null)
                lblClientName.Text = " for: " + result.FirstOrDefault().ClientName;

        }

    }

    #endregion

}