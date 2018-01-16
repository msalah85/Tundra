using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;

public partial class ketmeerAdmin_MainSafeReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            ShowSafeReport();
    }

    private void ShowSafeReport()
    {
        // get safe repor for (store/safe)
        var report = new SafeMainManager().GetMainSafeReport(1);

        if (report != null)
        {
            double safeTotal = report.SafeDebitValueTotal != null ? (double)report.SafeDebitValueTotal : 0.00;

            // Safe/Store name.
            divSafeName.InnerHtml = report.StoreName;

            // المبالغ المودعة فى الخزنة
            divSafeTotal.InnerHtml = string.Format("{0:F} AED", safeTotal);

            // اجمالى المصروفات من الخزنة
            double totExpenses = report.TotalExpenses != null ? (double)report.TotalExpenses : 0;
            divTotalExpenses.InnerHtml = string.Format("{0:F} AED", totExpenses);

            // اجمالى المدفوعات للخزنة
            double totPayments = (double)(report.Payments + report.InvoicesFirstAmount); //report.Invoices + report.InvoicesFirstAmount +  + report.InvoicesFirstAmount);
            divTotalPayments.InnerHtml = string.Format("{0:F} AED", (totPayments));

            // اجمالى المبقى فى الخزنة
            double totRemaining = (safeTotal + totPayments) - totExpenses;
            divRemainderInSafe.InnerHtml = string.Format("{0:F} AED", (totRemaining));
        }

    }
}