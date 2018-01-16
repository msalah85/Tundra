using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.DataAccess;
using SystemManager.Business;

public partial class ketmeerAdmin_SafeDebit : System.Web.UI.Page
{
    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillLists.FillEmployeesList(ddlEmployee);
            FillLists.FillStoresList(ddlStore);

            ShowExpenseTypesList();
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtAddDate.Text != String.Empty && txtValue.Text != String.Empty && ddlEmployee.SelectedIndex > 0)
            SaveExpenseType();
        else
            lblError.Text = Resources.AdminResources_en.DataRequired;
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        ResetControls();
    }
    protected void gvMainSafeDebit_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvMainSafeDebit.PageIndex = e.NewPageIndex;
        ShowExpenseTypesList();
    }
    protected void gvMainSafeDebit_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            // get the ID of the clicked row
            int _ID = Convert.ToInt32(e.CommandArgument);

            // Delete the record 
            if (new SafeMainManager().DeleteMainSafeDebit(_ID, ClientSession.Current.loginId, ClientSession.Current.IP))
            { /*  success message */
                lblError.Text = Resources.AdminResources_en.SuccessDelete;

                // Refresh grid
                ShowExpenseTypesList();
            }
            else
            { /*  fail message */ lblError.Text = Resources.AdminResources_en.ErrorDelete; }

        }
        else if (e.CommandName == "EditExpense")
        {
            // get the ID of the clicked row
            int _ID = Convert.ToInt32(e.CommandArgument);

            ShowMainSafeDetails(_ID);
            divAddEdit.Visible = true; // show editing panel.
        }
    }
    protected void gvMainSafeDebit_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        ShowExpenseTypesList();
    }

    #endregion

    #region "Safe Methods"

    private void ShowExpenseTypesList()
    {
        //string sqlP = "";

        var result = (IList<Safe_GetDebitAllResult>)new SafeMainManager().GetAllMainSafe();

        gvMainSafeDebit.DataSource = result;
        gvMainSafeDebit.DataBind();

        divSafeTotal.InnerHtml = (from r in result select Convert.ToDecimal(r.SafeDebitValue)).Sum().ToString() + " AED &nbsp; ";
        divTotalContainer.Visible = (result.Count > 0);

    }
    protected void btnAddNew_Click(object sender, ImageClickEventArgs e)
    {
        ResetControls();
        divAddEdit.Visible = true;
    }

    private void SaveExpenseType()
    {

        MainSafeDebitCredit safe = new MainSafeDebitCredit();
        SafeMainManager manager = new SafeMainManager();


        safe.SafeID = hfId.Value != String.Empty ? Convert.ToInt32(hfId.Value) : 0;
        if (ddlEmployee.SelectedIndex > 0) { safe.Employee_ID = Convert.ToInt32(ddlEmployee.SelectedValue); }
        if (ddlStore.SelectedIndex > 0) { safe.Store_ID = Convert.ToInt64(ddlStore.SelectedValue); }

        if (txtAddDate.Text != "") { safe.SafeDebitDate = Convert.ToDateTime(txtAddDate.Text); }
        safe.SafeDebitValue = txtValue.Text;

        safe.System_Who_Add = ClientSession.Current.loginId;
        safe.System_LastAction_IP = ClientSession.Current.IP;


        if (manager.SaveMainSafeDebitInfo(safe))
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
        txtValue.Text = txtAddDate.Text = hfId.Value = String.Empty; ddlEmployee.SelectedIndex = ddlStore.SelectedIndex = 0;
        divAddEdit.Visible = false;
    }

    private void ShowMainSafeDetails(int id)
    {
        var safe = new SafeMainManager().GetMainSafeDebitDetails(id);

        if (safe != null)
        {
            hfId.Value = safe.SafeID.ToString();
            txtValue.Text = safe.SafeDebitValue;

            txtAddDate.Text = MinutesuaeConcrete.GetDateOnly(safe.SafeDebitDate);
            ddlEmployee.SelectedValue = safe.Employee_ID.ToString();
            ddlStore.SelectedValue = safe.Store_ID.ToString();
        }
        else
        {
            lblError.Text = Resources.AdminResources_en.DataNotFound;
        }

    }


    #endregion
}