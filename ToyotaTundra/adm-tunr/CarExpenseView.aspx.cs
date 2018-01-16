using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_CarExpenseView : System.Web.UI.Page
{

    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!this.IsPostBack)
        //{
        //    FillExpensesList();
        //}
    }

    ////////////////////////////////////////////////////////////////////////////////
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
    ////////////////////////////////////////////////////////////////////////////////
    protected void gvExpensesDirham_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvExpensesDirham.PageIndex = e.NewPageIndex;
        FillExpensesList();

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
                    FillExpensesList(); // refresh data.
                }
                else
                    lblError.Text = Resources.AdminResources_en.ErrorDelete;

            }
            catch { lblError.Text = Resources.AdminResources_en.ErrorDelete; }

        }
    }
    protected void gvExpensesDirham_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FillExpensesList();
    }
    ////////////////////////////////////////////////////////////////////////////////
    

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

    private void FillExpensesList()
    {
        // Filter expenses for this car.
        long cID = 0;
        if (Page.RouteData.Values["carId"] != null)
        {
            cID = Convert.ToInt64(Page.RouteData.Values["carId"]);
            linkAddExpense.NavigateUrl = "addexpense-" + cID.ToString() + "/1.aspx";
            lnkAddADEExpense.NavigateUrl = "addexpense-" + cID.ToString() + "/2.aspx";
        }

        var result = new ExpensesManager().GetExpenses(cID);

        gvExpenses.DataSource = result.Where(rr => rr.ExchangeRate == 1); // Dollar Currency only.
        gvExpenses.DataBind();

        gvExpensesDirham.DataSource = result.Where(rr => rr.ExchangeRate != 1); // Dirham currency.
        gvExpensesDirham.DataBind();

        // Show short statistics
        if (result.Count > 0)
        {
            //var symb = ((result.Where(ex => ex.ExchangeRate == 1).FirstOrDefault() != null) ? result.Where(ex => ex.ExchangeRate == 1).FirstOrDefault().CurrencySymbol : result.FirstOrDefault().CurrencySymbol);
            
            double totDollar = (double)result.Where(rr => rr.ExchangeRate == 1).Sum(a => a.ExpenseValue);
            double totDirham = (double)result.Where(rr => rr.ExchangeRate < 1).Sum(a => a.ExpenseValue);

            tblTotalDollar.Visible = (totDollar > 0);
            divTotalDollar.InnerHtml = string.Format("{0:F} $.", totDollar);
            
            tblTotalDirham.Visible = (totDirham > 0);
            divTotalDirham.InnerHtml = string.Format("{0:F} AED.", totDirham);

            // 1 usd * 0.2722 = 1 aed.
            double expTotal = (totDirham + (totDollar / 0.2722));
            tblTotalAllAll.Visible = (expTotal > 0);
            divTotalAll.InnerHtml = string.Format("{0:F} AED.", expTotal);

            Button2.Visible = true;
            Button1.Visible = true;
        }

    }

    #endregion
}