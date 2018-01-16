using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.DataAccess;
using SystemManager.Business;

public partial class admin_elaf_Currencies : System.Web.UI.Page
{
    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ShowCurrenciesList();
        }

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtCurrency.Text != String.Empty && txtExchangeRate.Text != String.Empty)
            SaveCurrency();
        else
            lblError.Text = Resources.AdminResources_en.DataRequired;
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        ResetControls();
    }

    /*********************************************************************/

    protected void gvCurrencies_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            // get the ID of the clicked row
            int ID = Convert.ToInt32(e.CommandArgument);

            // Delete the record 
            if (new CurrenciesManager().DeleteCurrency(ID))
            { /*  success message */
                lblError.Text = Resources.AdminResources_en.NotDeleted; //SuccessDelete;
            }
            else
            { /*  fail message */ lblError.Text = Resources.AdminResources_en.ErrorDelete; }

        }
        else if (e.CommandName == "EditExpense")
        {
            // get the ID of the clicked row
            int jID = Convert.ToInt32(e.CommandArgument);

            ShowExpenseDetails(jID);
            divAddEdit.Visible = true; // show editing panel.
        }

    }
    protected void gvCurrencies_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        ShowCurrenciesList();
    }
    protected void gvCurrencies_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvCurrencies.PageIndex = e.NewPageIndex;
        ShowCurrenciesList();
    }

    /*********************************************************************/

    #endregion

    #region "Private Methods"
    private void ShowCurrenciesList()
    {
        //string sqlP = "";

        gvCurrencies.DataSource = new CurrenciesManager().GetAllCurrencies("");
        gvCurrencies.DataBind();

    }
    private void SaveCurrency()
    {

        Currency curr = new Currency();
        CurrenciesManager manager = new CurrenciesManager();


        curr.CurrencyID = hfId.Value != String.Empty ? Convert.ToInt32(hfId.Value) : 0;
        curr.CurrencyName = txtCurrency.Text;
        curr.CurrencySymbol = txtCurrencySymbol.Text;
        curr.ExchangeRate = Convert.ToDecimal(txtExchangeRate.Text);

        curr.System_Who_Add = ClientSession.Current.loginId;
        curr.System_LastAction_IP = ClientSession.Current.IP;


        if (manager.SaveCurrencyInfo(curr))
        {
            // reset controls
            ResetControls();

            // refresh saved data list
            ShowCurrenciesList();
        }
        else
        { lblError.Text = Resources.AdminResources_en.ErrorSave; }
    }
    protected void btnAddNew_Click(object sender, ImageClickEventArgs e)
    {
        ResetControls();
        divAddEdit.Visible = true;
    }
    private void ResetControls()
    {
        txtCurrency.Text = txtCurrencySymbol.Text = hfId.Value = String.Empty;
        txtExchangeRate.Text = "1.00";

        divAddEdit.Visible = false;
    }
    private void ShowExpenseDetails(int id)
    {
        var curr = new CurrenciesManager().GetCurrencyDetails(id);

        if (curr != null)
        {
            hfId.Value = curr.CurrencyID.ToString();
            txtCurrency.Text = curr.CurrencyName;
            txtCurrencySymbol.Text = curr.CurrencySymbol;
            txtExchangeRate.Text = curr.ExchangeRate.ToString();
        }
        else
        {
            lblError.Text = Resources.AdminResources_en.DataNotFound;
        }

    }

    #endregion
}