using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_StoreExpensesView : System.Web.UI.Page
{

    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            FillPaymentsList();
        }
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
    ////////////////////////////////////////////////////////////////////////////////
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
    ////////////////////////////////////////////////////////////////////////////////
    protected void gvExpensesDirham_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvExpensesDirham.PageIndex = e.NewPageIndex;
        FillPaymentsList();

    }
    protected void gvExpensesDirham_RowCommand(object sender, GridViewCommandEventArgs e)
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
    protected void gvExpensesDirham_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FillPaymentsList();
    }
    ////////////////////////////////////////////////////////////////////////////////
    
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        FillPaymentsList();
    }

    #endregion

    #region "Private Methods"

    private void FillPaymentsList()
    {

        #region "Accessing data"
        
        string _param = " AND Active = 1 AND Deleted = 0 AND Store_ID = " + 1 + " AND INOutType = 'payment' ";
        
        if (rblType.SelectedValue == "General")
        { _param += " AND GroupName = 'General' "; }
        else if (rblType.SelectedValue == "Cars")
        { _param += " AND (GroupName <> 'General' OR GroupName IS NULL) "; }
        if (txtExpenseDateFrom.Text != "")
        {
            _param += " AND PaymentDate >= " + txtExpenseDateFrom.Text; 
        }
        if (txtExpenseDateTo.Text != "")
        {
            _param += " AND PaymentDate <= " + txtExpenseDateTo.Text;
        }

        _param += " ORDER BY ExpenseID DESC ";

        IList<Expenses_GetSelectListResult> result = new ExpensesManager().GetExpenses(_param);

        #endregion

        #region "Short Statistics"

        gvPayments.DataSource = result.Where(rr => rr.ExchangeRate == 1); // Dollar Currency only.
        gvPayments.DataBind();

        gvExpensesDirham.DataSource = result.Where(rr => rr.ExchangeRate != 1); // Dirham currency.
        gvExpensesDirham.DataBind();

        // Show short statistics
        if (result.Count > 0)
        {
            double totDollar = (double)result.Where(rr => rr.ExchangeRate == 1).Sum(a => a.ExpenseValue);
            double totDirham = (double)result.Where(rr => rr.ExchangeRate < 1).Sum(a => a.ExpenseValue);

            tblTotalDollar.Visible = (totDollar > 0);
            divTotalDollar.InnerHtml = string.Format("{0:F} $.", totDollar);

            tblTotalDirham.Visible = (totDirham > 0);
            divTotalDirham.InnerHtml = string.Format("{0:F} AED.", totDirham);

            // 1 usd * 0.2722 = 1 aed.
            double expTotal = totDirham + (totDollar * 0.2722);
            tblTotalAllAll.Visible = (expTotal > 0);
            divTotalAll.InnerHtml = string.Format("{0:F} AED.", expTotal);

            Button2.Visible = true;
            Button1.Visible = true;

            // Show Safe/Store name.
            lblStore.Text = string.Format("({0})", result.FirstOrDefault().StoreName);

        }

        #endregion

    }

    #endregion

}