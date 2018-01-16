using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_CarExpense : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            try
            {
                // Fill and assign currency id for payment.
                FillLists.FillCurrenciesList(ddlCurrencyUsed);
                ddlCurrencyUsed.SelectedValue = Page.RouteData.Values["Name"].ToString();
                ddlCurrencyUsed.Enabled = false;

                // Determin the companies type for payment based on currency id.
                if (ddlCurrencyUsed.SelectedValue == "2") // Dirham
                {
                    FillDirhamCompType();                 
                }
                rblCompanyType_SelectedIndexChanged(sender, e);

                // Fill expense type based on currency id.
                FillLists.FillExpensTypes(ddlExpenseType, ddlCurrencyUsed.SelectedValue);
                

                hfID.Value = Page.RouteData.Values["expenseId"].ToString();
                ShowExpenseDatails(Convert.ToInt64(hfID.Value));

            }
            catch
            {
                lblCarCode.Text = (Page.RouteData.Values["carId"] != null ? Page.RouteData.Values["carId"].ToString() : "");
                linkCancel.NavigateUrl = "car/" + lblCarCode.Text + "/expenses.aspx";

            }

        }
    }


    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtInvoiceNo.Text != "" & ddlCurrencyUsed.SelectedIndex > 0) // && ddlDueforCompany.SelectedIndex > 0)
        {
            SaveExpense();
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


    private void FillDirhamCompType()
    {
        rblCompanyType.Items.Clear(); // rest companies type.

        rblCompanyType.Items.Add(new ListItem("Cash Account on this car.", "cash"));
        rblCompanyType.Items.Add(new ListItem("Clearance Co.", "clearance"));
        rblCompanyType.Items.Add(new ListItem("Transport Co.", "transport"));
        rblCompanyType.Items.Add(new ListItem("Workshop Co.", "workshop"));

        rblCompanyType.SelectedValue = "cash";
    }
    private void FillCompaniesList(string val)
    {
        divCoType.Visible = true; // default

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
            case "cash":
                {
                    divCoType.Visible = false; //ddlDueforCompany.Visible = false;
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

    private void ShowExpenseDatails(long p)
    {
        var result = new ExpensesManager().GetExpenseDetails(p);

        if (result != null)
        {

            txtInvoiceNo.Text = result.InvoiceCode;
            txtValue.Text = result.ExpenseValue.ToString();
            txtNotes.Text = result.Notes;
            //txtPaymentDate.Text = MinutesuaeConcrete.GetDateOnly(result.PaymentDate);
            txtDueDate.Text = MinutesuaeConcrete.GetDateOnly(result.DueDate);

            rblCompanyType.SelectedValue = result.CompanyType;
            rblCompanyType_SelectedIndexChanged(rblCompanyType, new EventArgs());

            ddlCurrencyUsed.SelectedValue = result.Currency_ID.ToString();
            ddlExpenseType.SelectedValue = result.ExpenseType_ID.ToString();
            ddlDueforCompany.SelectedValue = result.Company_ID.ToString();

            lblCarCode.Text = result.Car_ID.ToString();
            linkCancel.NavigateUrl = "car/" + lblCarCode.Text + "/expenses.aspx";

            //cbActive.Checked = (bool)result.Active;
        }

    }

    private void SaveExpense()
    {
        CarExpense exp = new CarExpense();

        exp.ExpenseID = (hfID.Value != "" ? Convert.ToInt64(hfID.Value) : 0);
        //exp.Active = cbActive.Checked;
        exp.CompanyType = rblCompanyType.SelectedValue;
        exp.InvoiceCode = txtInvoiceNo.Text;
        exp.Notes = txtNotes.Text;
        exp.Car_ID = Convert.ToInt64(lblCarCode.Text);
        if (rblCompanyType.SelectedValue != "cash")
            exp.Company_ID = Convert.ToInt64(ddlDueforCompany.SelectedValue);

        exp.Currency_ID = Convert.ToInt32(ddlCurrencyUsed.SelectedValue);
        exp.ExpenseType_ID = Convert.ToInt32(ddlExpenseType.SelectedValue);
        exp.ExpenseValue = Convert.ToDecimal(txtValue.Text);
        //exp.PaymentValue = Convert.ToDecimal(txtValue.Text);
        //exp.PaymentDate = Convert.ToDateTime(txtDueDate.Text);
        exp.DueDate = Convert.ToDateTime(txtDueDate.Text);
        exp.InOutType = "expense";

        exp.WhoAdd = ClientSession.Current.loginId;
        exp.Store_ID = 1; // Store sale from.
        exp.EditIP = exp.AddIP = ClientSession.Current.IP;


        if (new ExpensesManager().SaveExpense(exp))
        {
            string url = ResolveClientUrl("car/" + lblCarCode.Text + "/expenses.aspx");
            Response.RedirectPermanent(url);
        }
        else
        {
            lblError.Text = Resources.AdminResources_en.ErrorSave;
        }
    }



}