using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_PaymentsAddEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            try
            {
                //FillLists.FillCurrenciesList(ddlCurrencyUsed);
                FillLists.FillExchangeCompanies(ddlExchangeCo);

                // Fill and assign currency id for payment.
                //FillLists.FillCurrenciesList(ddlCurrencyUsed);
                //ddlCurrencyUsed.Enabled = false;
                ddlCurrencyUsed.SelectedValue = Page.RouteData.Values["currency"].ToString();
                
                // Determin the companies type for payment based on currency id.
                if (ddlCurrencyUsed.SelectedValue == "2") // Dirham
                {
                    FillDirhamCompType();
                }

                AssignCurrentCompanyType();

                rblCompanyType_SelectedIndexChanged(sender, e);
                //FillLists.FillExpensTypes(ddlExpenseType, ddlCurrencyUsed.SelectedValue);
                
                AssignCompanyIDAndName();


                hfID.Value = Page.RouteData.Values["Id"].ToString(); // payment Id.
                ShowPaymentDatails(Convert.ToInt64(hfID.Value));

            }
            catch
            {
                //lblCompanyCode.Text = (Page.RouteData.Values["carId"] != null ? Page.RouteData.Values["carId"].ToString() : "");
                //linkCancel.NavigateUrl = "car/" + lblCompanyCode.Text + "/expenses.aspx";

            }

        }
    }
    
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtInvoiceNo.Text != "" && ddlDueforCompany.SelectedIndex > 0)
        {
            SavePayment();
        }
        else
        {
            lblError.Text = Resources.AdminResources_en.DataRequired;
        }

    }

    protected void rblCompanyType_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblCompanyType.SelectedIndex >= 0)
            FillCompaniesList(rblCompanyType.SelectedValue);
        else
            ddlDueforCompany.Items.Clear();
    }



    private void AssignCurrentCompanyType()
    {
        try
        {
            rblCompanyType.SelectedValue = Page.RouteData.Values["coType"].ToString();
            
        }
        catch { }
    }

    private void AssignCompanyIDAndName()
    {
        try
        {
            ddlDueforCompany.SelectedValue = Page.RouteData.Values["coName"].ToString();
            lblCompanyCode.Text = "(" + ddlDueforCompany.SelectedItem.Text + ")";
        }
        catch { }
    }

    private void FillDirhamCompType()
    {
        rblCompanyType.Items.Clear(); // rest companies type.

        //rblCompanyType.Items.Add(new ListItem("Cash Account on this car.", "cash"));
        rblCompanyType.Items.Add(new ListItem("Clearance Co.", "clearance"));
        rblCompanyType.Items.Add(new ListItem("Transport Co.", "transport"));
        rblCompanyType.Items.Add(new ListItem("Workshop Co.", "workshop"));
               
    }

    private void FillCompaniesList(string val)
    {
        switch (val)
        {
            case "towing":
                {
                    FillLists.FillTowingCompaniesList(ddlDueforCompany);
                    break;
                }
            case "shipping":
                {
                    FillLists.FillShipCompaniesList(ddlDueforCompany);
                    break;
                }
            case "clearance":
                {
                    FillLists.FillClearanceList(ddlDueforCompany);
                    break;
                }
            case "transport":
                {
                    FillLists.FillTransportList(ddlDueforCompany);
                    break;
                }
            case "workshop":
                {
                    FillLists.FillWorkshopsList(ddlDueforCompany);
                    break;
                }
            case "buyer":
            default:
                {
                    FillLists.FillBuyersList(ddlDueforCompany);
                    break;
                }
        }

    }

    private void ShowPaymentDatails(long p)
    {
        var result = new ExpensesManager().GetExpenseDetails(p);

        if (result != null)
        {

            txtInvoiceNo.Text = result.InvoiceCode;
            txtValue.Text = result.ExpenseValue.ToString();
            txtNotes.Text = result.Notes;
            txtPaymentDate.Text = MinutesuaeConcrete.GetDateOnly(result.PaymentDate);
            //txt.Text = MinutesuaeConcrete.GetDateOnly(result.DueDate);

            rblCompanyType.SelectedValue = result.CompanyType;
            rblCompanyType_SelectedIndexChanged(rblCompanyType, new EventArgs());

            ddlCurrencyUsed.SelectedValue = result.Currency_ID.ToString();
            //ddlExpenseType.SelectedValue = result.ExpenseType_ID.ToString();
            ddlDueforCompany.SelectedValue = result.Company_ID.ToString();
            ddlExchangeCo.SelectedValue = result.ExchangeCompany_ID.ToString();
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
        exp.CompanyType = rblCompanyType.SelectedValue;
        exp.InvoiceCode = txtInvoiceNo.Text;
        exp.Notes = txtNotes.Text;
        //exp.Car_ID = Convert.ToInt64(lblCompanyCode.Text);
        //exp.ExpenseType_ID = Convert.ToInt32(ddlExpenseType.SelectedValue);
        exp.PaymentDate = Convert.ToDateTime(txtPaymentDate.Text);
        exp.ExpenseValue = Convert.ToDecimal(txtValue.Text);
        exp.PaymentValue = Convert.ToDecimal(txtValue.Text);
        //exp.DueDate = Convert.ToDateTime(txtDueDate.Text);
        exp.Company_ID = Convert.ToInt64(ddlDueforCompany.SelectedValue);
        exp.Currency_ID = Convert.ToInt32(ddlCurrencyUsed.SelectedValue);
        exp.ExchangeCompany_ID = Convert.ToInt64(ddlExchangeCo.SelectedValue);

        exp.Store_ID = 1;
        exp.WhoAdd = ClientSession.Current.loginId;
        exp.EditIP = exp.AddIP = ClientSession.Current.IP;
        

        if (new ExpensesManager().SaveExpense(exp))
        {
            string url = ResolveClientUrl("payments/" + ddlDueforCompany.SelectedValue + "/" + rblCompanyType.SelectedValue + "/" + MinutesuaeConcrete.ToSeoUrl(ddlDueforCompany.SelectedItem.Text) + ".aspx");
            Response.RedirectPermanent(url);
        }
        else
        {
            lblError.Text = Resources.AdminResources_en.ErrorSave;
        }
    }

}