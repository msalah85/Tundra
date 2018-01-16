using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_ExpensesView : System.Web.UI.Page
{

    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!this.IsPostBack)
        //{
        //    FillExpensesList();
        //}
    }

    protected void gvExpenses_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvExpenses.PageIndex = e.NewPageIndex;
        FillExpensesList();

    }
    protected void gvExpenses_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            try
            {
                // Get id to delete.
                long _ID = Convert.ToInt64(e.CommandArgument);

                // Execute delete func.
                // ممكن بعد ما يضيف المصروف يقدر يحذفه عادى!!
                if (new ExpensesManager().DeleteExpense(_ID, ClientSession.Current.loginId, ClientSession.Current.IP))
                {
                    lblError.Text = Resources.AdminResources_en.SuccessDelete;
                    FillExpensesList(); // refresh data.
                }
                else
                    lblError.Text = Resources.AdminResources_en.ErrorDelete;

            }
            catch { lblError.Text = Resources.AdminResources_en.ErrorDelete; }

        }
    }
    protected void gvExpenses_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FillExpensesList();
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        FillExpensesList();
    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //gvExpenses.AllowPaging = false;
            //gvExpenses.Columns.RemoveAt(8);
            //gvExpenses.Columns.RemoveAt(7);
            //gvExpenses.Columns.RemoveAt(6);

            //FillExpensesList();

            //System.IO.StringWriter stringwriter = new System.IO.StringWriter();
            //System.Web.UI.HtmlTextWriter htmlwriter = new System.Web.UI.HtmlTextWriter(stringwriter);
            //gvExpenses.RenderControl(htmlwriter);
            //hndGridViewPrintContent.Value = stringwriter.ToString();


            //gvExpenses.AllowPaging = true;
            FillExpensesList();
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

    private void FillExpensesList()
    {

        #region "Accessing data"

        string _param = "";
        if (Page.RouteData.Values["compId"] != null && Page.RouteData.Values["CompType"] != null && Page.RouteData.Values["CoName"] != null)
        {
            string co_ID = Page.RouteData.Values["compId"].ToString();
            string co_Type = Page.RouteData.Values["CompType"].ToString();
            string co_Name = Page.RouteData.Values["CoName"].ToString();
            string currencyId = GetCurrencyID(co_Type);

            linkAddExpense.NavigateUrl = "addpayment-" + currencyId + "/" + co_Type + "/" + co_ID + ".aspx";
            ltlCoName.Text = "(" + co_Name.Replace('-',' ') + ")";

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
            divTotalExpense.InnerHtml = string.Format("{0:F} {1}", expVal, usedCurrency);
            divTotalExpenses.InnerHtml = "<a href='" + Request.Url.AbsolutePath.Replace("expenses", "payments") + "'>" + string.Format("{0:F} {1}", paymVal, usedCurrency) + "</a>";
            divRemainder.InnerHtml = string.Format("{0:F} {1}", ((openVal + expVal) - paymVal), usedCurrency);

            Button2.Visible = true;
            Button1.Visible = true;
        }
        
        #endregion

        #region "View list"

        result = result.Where(e => e.InOutType == "expense").ToList<Expenses_GetSelectListResult>();

        if (txtExpenseDateFrom.Text != "")
        {
            result = result.Where(p => p.PaymentDate >= Convert.ToDateTime(txtExpenseDateFrom.Text.Trim())).ToList<Expenses_GetSelectListResult>();
        }
        if (txtExpenseDateTo.Text != "")
        {
            result = result.Where(p => p.PaymentDate <= Convert.ToDateTime(txtExpenseDateTo.Text.Trim())).ToList<Expenses_GetSelectListResult>();
            //result2.Clear();
            //result2 = (IList<Expenses_GetSelectListResult>)result2Temp;

        }
        if (txtCode.Text != "")
        {
            result = result.Where(p => p.InvoiceCode == txtCode.Text.Trim()).ToList<Expenses_GetSelectListResult>();
        }


        gvExpenses.DataSource = result;
        gvExpenses.DataBind();
        
        #endregion
    
    }

    #endregion
}