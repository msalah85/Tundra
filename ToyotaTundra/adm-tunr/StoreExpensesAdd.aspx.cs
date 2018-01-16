using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_StoreExpensesAdd : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            try
            {
                //FillLists.FillCurrenciesList(ddlCurrencyUsed);
                FillLists.FillExpensTypes(ddlExpenseType, ddlCurrencyUsed.SelectedValue, true); // get general expenses only.

                hfID.Value = Page.RouteData.Values["Id"].ToString(); // payment Id.
                ShowPaymentDatails(Convert.ToInt64(hfID.Value));
            }
            catch { }
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtValue.Text != "")
        {
            SavePayment();
        }
        else
        {
            lblError.Text = Resources.AdminResources_en.DataRequired;
        }

    }

    private void ShowPaymentDatails(long p)
    {
        var result = new ExpensesManager().GetExpenseDetails(p);

        if (result != null)
        {
            //txtInvoiceNo.Text = result.InvoiceCode;
            txtValue.Text = result.ExpenseValue.ToString();
            txtNotes.Text = result.Notes;
            //txtPaymentDate.Text = MinutesuaeConcrete.GetDateOnly(result.PaymentDate);
            //txt.Text = MinutesuaeConcrete.GetDateOnly(result.DueDate);

            //rblCompanyType.SelectedValue = result.CompanyType;
            //rblCompanyType_SelectedIndexChanged(rblCompanyType, new EventArgs());

            ddlCurrencyUsed.SelectedValue = result.Currency_ID.ToString();
            ddlExpenseType.SelectedValue = result.ExpenseType_ID.ToString();
            //ddlDueforCompany.SelectedValue = result.Company_ID.ToString();
            //ddlExchangeCo.SelectedValue = result.ExchangeCompany_ID.ToString();
            //lblCompanyCode.Text = result.Car_ID.ToString();
            //linkCancel.NavigateUrl = "car/" + lblCompanyCode.Text + "/expenses.aspx";

            //cbActive.Checked = (bool)result.Active;
        }

    }

    private void SavePayment()
    {
        CarExpense exp = new CarExpense();

        exp.ExpenseID = (hfID.Value != "" ? Convert.ToInt64(hfID.Value) : 0);
        exp.InOutType = "payment";

        //exp.Active = cbActive.Checked;
        exp.CompanyType = "cash";
        exp.InvoiceCode = RandomValuess.RandomNumber(4, 99999).ToString();
        exp.Notes = txtNotes.Text;
        //exp.Car_ID = Convert.ToInt64(lblCompanyCode.Text);
        exp.ExpenseType_ID = Convert.ToInt32(ddlExpenseType.SelectedValue);
        exp.PaymentDate = DateTime.Now;
        exp.ExpenseValue = Convert.ToDecimal(txtValue.Text);
        exp.PaymentValue = 1; // Exchange ratio. ==> 0.2722
        //exp.DueDate = Convert.ToDateTime(txtDueDate.Text);
        //exp.Company_ID = Convert.ToInt64(ddlDueforCompany.SelectedValue);
        exp.Currency_ID = 2; // Dirham.
        //exp.ExchangeCompany_ID = Convert.ToInt64(ddlExchangeCo.SelectedValue);

        exp.Store_ID = 1;
        exp.WhoAdd = ClientSession.Current.loginId;
        exp.EditIP = exp.AddIP = ClientSession.Current.IP;


        if (new ExpensesManager().SaveExpense(exp))
        {
            string url = ResolveClientUrl("StoreExpensesView.aspx");
            Response.RedirectPermanent(url);
        }
        else
        {
            lblError.Text = Resources.AdminResources_en.ErrorSave;
        }
    }

}