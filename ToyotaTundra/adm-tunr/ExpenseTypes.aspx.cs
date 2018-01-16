using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.DataAccess;
using SystemManager.Business;

public partial class ketmeerAdmin_ExpenseTypesView : System.Web.UI.Page
{

    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ShowExpenseTypesList();

            FillLists.FillCurrenciesList(ddlCurrencyUsed);
        }

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtExpenseName.Text != String.Empty && ddlCurrencyUsed.SelectedIndex > 0)
            SaveExpenseType();
        else
            lblError.Text = Resources.AdminResources_en.DataRequired;
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        ResetControls();
    }

    /*********************************************************************/

    protected void gvExpenseTypes_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            // get the ID of the clicked row
            int jID = Convert.ToInt32(e.CommandArgument);

            // Delete the record 
            if (new ExpenseTypesManager().DeleteExpenseType(jID, ClientSession.Current.loginId, ClientSession.Current.IP))
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
    protected void gvExpenseTypes_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        ShowExpenseTypesList();
    }
    protected void gvExpenseTypes_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvExpenseTypes.PageIndex = e.NewPageIndex;
        ShowExpenseTypesList();
    }

    /*********************************************************************/
    protected void btnAddNew_Click(object sender, ImageClickEventArgs e)
    {
        ResetControls();
        divAddEdit.Visible = true;
    }


    #endregion

    #region "Private Methods"

    private void ShowExpenseTypesList()
    {
        //string sqlP = "";

        gvExpenseTypes.DataSource = new ExpenseTypesManager().GetAllExpenseTypes(" ORDER BY ExpenseTypeID DESC ");
        gvExpenseTypes.DataBind();

    }

    private void SaveExpenseType()
    {

        ExpenseType jType = new ExpenseType();
        ExpenseTypesManager manager = new ExpenseTypesManager();


        jType.ExpenseTypeID = hfId.Value != String.Empty ? Convert.ToInt32(hfId.Value) : 0;
        jType.ExpenseTypeName = txtExpenseName.Text;
        jType.ExpenseTypeDetails = txtDetails.Text;
        jType.CurrencyUsed = ddlCurrencyUsed.SelectedValue;
        jType.GroupName = rblGroupName.SelectedValue;

        jType.System_Who_Add = ClientSession.Current.loginId;
        jType.System_LastAction_IP = ClientSession.Current.IP;


        if (manager.SaveExpenseTypeInfo(jType))
        {
            // reset controls
            ResetControls();

            // refresh saved data list
            ShowExpenseTypesList();
        }
        else
        { lblError.Text = Resources.AdminResources_en.ErrorSave; }
    }

    private void ResetControls()
    {
        txtDetails.Text = txtExpenseName.Text = hfId.Value = String.Empty;
        rblGroupName.SelectedIndex = ddlCurrencyUsed.SelectedIndex = 0;
        
        divAddEdit.Visible = false;
    }

    private void ShowExpenseDetails(int id)
    {
        var jType = new ExpenseTypesManager().GetExpenseTypeDetails(id);

        if (jType != null)
        {
            hfId.Value = jType.ExpenseTypeID.ToString();
            txtDetails.Text = jType.ExpenseTypeDetails;
            txtExpenseName.Text = jType.ExpenseTypeName;
            ddlCurrencyUsed.SelectedValue = jType.CurrencyUsed;
            rblGroupName.SelectedValue = jType.GroupName;
        }
        else
        {
            lblError.Text = Resources.AdminResources_en.DataNotFound;
        }

    }

    #endregion

}