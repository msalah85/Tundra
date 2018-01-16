using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_PaymentsView : System.Web.UI.Page
{

    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!this.IsPostBack)
        //{
        //    try
        //    {
        //        // Assign adding -payment for this company - link
        //        string coType = Page.RouteData.Values["CompType"].ToString();
        //        string coName = Page.RouteData.Values["CoName"].ToString();
        //        string currencyId = GetCurrencyID(coType);

        //        linkAddPayment.NavigateUrl = "addpayment-" + currencyId + "/" + coType + "/" + coName + ".aspx";
        //    }
        //    catch { }
        //}
    }


    protected void gvPayments_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            ImageButton l = (ImageButton)e.Row.FindControl("LinkButton1");
            //l.Attributes.Add("onclick", "javascript:return " +
            //"confirm('Are you sure you want to delete this record " +
            //DataBinder.Eval(e.Row.DataItem, "id") + "')");

            //l.Visible = (Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "id")) > 40) ? true : false;

        }
    }
    protected void gvPayments_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvPayments.PageIndex = e.NewPageIndex;
        FillPaymentsList();

    }
    protected void gvPayments_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            try
            {
                // Get id to delete.
                long _ID = Convert.ToInt64(e.CommandArgument);

                // Execute delete func.
                if (new ExpensesManager().DeleteExpense(_ID, ClientSession.Current.loginId, ClientSession.Current.IP))
                {
                    lblError.Text = Resources.AdminResources_en.SuccessDelete;
                    FillPaymentsList(); // refresh data.
                }
                else
                    lblError.Text = Resources.AdminResources_en.ErrorDelete;

            }
            catch { lblError.Text = Resources.AdminResources_en.ErrorDelete; }

        }
    }
    protected void gvPayments_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FillPaymentsList();
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        FillPaymentsList();
    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //gvPayments.AllowPaging = false;
            //gvPayments.Columns.RemoveAt(8);
            //gvPayments.Columns.RemoveAt(7);
            //gvPayments.Columns.RemoveAt(6);

            //FillPaymentsList();

            //System.IO.StringWriter stringwriter = new System.IO.StringWriter();
            //System.Web.UI.HtmlTextWriter htmlwriter = new System.Web.UI.HtmlTextWriter(stringwriter);
            //gvPayments.RenderControl(htmlwriter);
            //hndGridViewPrintContent.Value = stringwriter.ToString();


            //gvPayments.AllowPaging = true;
            FillPaymentsList();
        }
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        return;
    }

    #endregion

    #region "Private Methods"

    private string GetCurrencyID(string coType)
    {
        string _iD = "1";

        switch (coType)
        {
            case "transport":
            case "clearance":
            case "workshop":
                {
                    _iD = "2"; // dirham
                    break;
                }
            case "shipping":
            case "towing":
            case "buyer":
            default:
                {
                    _iD = "1"; //dolar
                    break;
                }
        }

        return _iD;
    }

    private void FillPaymentsList()
    {

        #region "Accessing data"

        string _param = "";
        if (Page.RouteData.Values["compId"] != null && Page.RouteData.Values["CompType"] != null && Page.RouteData.Values["CoName"] != null)
        {
            string co_ID = Page.RouteData.Values["compId"].ToString();
            string co_Type = Page.RouteData.Values["CompType"].ToString();
            string co_Name = Page.RouteData.Values["CoName"].ToString();
            string currencyId = GetCurrencyID(co_Type);

            linkAddPayment.NavigateUrl = "addpayment-" + currencyId + "/" + co_Type + "/" + co_ID + ".aspx";
            ltlCoName.Text = "(" + co_Name.Replace('-', ' ') + ")";

            _param = " AND Company_ID = " + co_ID + " AND CompanyType = '" + co_Type + "' ";
        }

        IList<Expenses_GetSelectListResult> result = new ExpensesManager().GetExpenses(_param);

        #endregion

        #region "Short Statistics"

        if (result.Count > 0)
        {

            decimal expVal = (decimal)result.Where(e => e.InOutType == "expense").Sum(s => s.ExpenseValue);
            decimal paymVal = (decimal)result.Where(e => e.InOutType == "payment").Sum(ss => ss.ExpenseValue);
            var firstBalance = result.FirstOrDefault().OpeningBalance;
            var usedCurrency = ((result.Where(r => r.ExchangeRate == 1).FirstOrDefault() != null) ? (result.Where(r => r.ExchangeRate == 1).FirstOrDefault().CurrencySymbol) : (result.FirstOrDefault().CurrencySymbol));
            decimal openVal = (firstBalance != null ? (decimal)firstBalance : 0);


            divOpeningbalance.InnerHtml = string.Format("{0:F} {1}", openVal, usedCurrency);
            divTotalExpense.InnerHtml = "<a href='" + Request.Url.AbsolutePath.Replace("payments", "expenses") + "'>" + string.Format("{0:F} {1}", expVal, usedCurrency) + "</a>";
            divTotalPayments.InnerHtml = string.Format("{0:F} {1}", paymVal, usedCurrency);
            divRemainder.InnerHtml = string.Format("{0:F} {1}", ((openVal + expVal) - paymVal), usedCurrency);


            Button2.Visible = true;
            Button1.Visible = true;
        }

        #endregion

        #region "Filter payments lists"

        result = (from a in result
                  where a.InOutType == "payment"
                  select a).ToList<Expenses_GetSelectListResult>();
        if (txtPaymentDateFrom.Text != "")
        {
            result = result.Where(p => p.PaymentDate >= Convert.ToDateTime(txtPaymentDateFrom.Text.Trim())).ToList<Expenses_GetSelectListResult>(); // _param += " AND  PaymentDate >= CAST('" + txtPaymentDateFrom.Text.Trim() + "' AS DATETIME) ";
        }
        if (txtPaymentDateTo.Text != "")
        {
            result = result.Where(p => p.PaymentDate <= Convert.ToDateTime(txtPaymentDateTo.Text.Trim())).ToList<Expenses_GetSelectListResult>(); //_param += " AND  PaymentDate <= CAST('" + txtPaymentDateTo.Text.Trim() + "' AS DATETIME) ";
        }
        if (txtCode.Text != "")
        {
            result = result.Where(p => p.InvoiceCode == txtCode.Text.Trim()).ToList<Expenses_GetSelectListResult>(); //_param += " AND  InvoiceCode = " + txtCode.Text.Trim();
        }

        gvPayments.DataSource = result;
        gvPayments.DataBind();

        #endregion

    }

    #endregion

}