using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class admin_elaf_ClientSubPaymentsView : System.Web.UI.Page
{
    public static string Client_Name;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            try
            {
                if (Page.RouteData.Values["clientID"] != null)
                {
                    hfClientID.Value = Page.RouteData.Values["clientID"].ToString();
                    long client_IDD = Convert.ToInt64(hfClientID.Value);

                    RefreshAllData(client_IDD); // Fill lists with default data.                                        

                    if (Page.RouteData.Values["codeID"] != null)
                        ddlPaymentReceipt.SelectedValue = Page.RouteData.Values["codeID"].ToString();

                    //if (Page.RouteData.Values["Name"] != null)
                    if (Client_Name != "")
                        lblClientName.Text = " for Client:  " + Client_Name;

                }
            }
            catch { }

        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (ddlClientInvoices.SelectedIndex > 0 && ddlPaymentReceipt.SelectedIndex > 0 && txtAmount.Text != "")
            SaveSubPayment();
        else
            lblError.Text = Resources.AdminResources_en.DataRequired;
    }
    protected void gvClients_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvClients.PageIndex = e.NewPageIndex;
        ShowclientSubPaymentsInvoices();

    }
    protected void gvClients_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //if (e.CommandName == "Delete")
        //{
        //    // Get id to delete.
        //    int _ID = Convert.ToInt32(e.CommandArgument);

        //    // Execute delete func.
        //    //if (new SaleClientPaymentsManager().DeleteCompany(_ID)) // Cancel invoice.
        //    //    lblError.Text = Resources.AdminResources_en.SuccessDelete;
        //    //else
        //    //    lblError.Text = Resources.AdminResources_en.ErrorDelete;
        //}
        if (e.CommandName == "ActiveDeactive")
        {

            // Get item id to.
            long _ID = Convert.ToInt64(e.CommandArgument.ToString().Remove(e.CommandArgument.ToString().IndexOf('.')));
            bool toggle = e.CommandArgument.ToString().Substring(e.CommandArgument.ToString().IndexOf('.')).Contains('1');

            //GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            //HiddenField userEmail = (HiddenField)row.FindControl("hfUserEmail"); // user email
            //HiddenField userName = (HiddenField)row.FindControl("hfUserName");  // user name

            // Execute delete func.
            if (new ClientSubPaymentsManager().ActiveDeActiveSubPayment(_ID, toggle))
            {
                lblError.Text = Resources.AdminResources_en.ActiveSuccess;
                //ShowclientSubPaymentsInvoices();
                RefreshAllData(Convert.ToInt64(hfClientID.Value));
                //if (toggle == true)
                //    new SendEmail().SendAnEmail(userEmail.Value, string.Format("Your offer: {0} now active", _ID), CreateBody(_ID, userName.Value));
            }
            else
            {
                lblError.Text = Resources.AdminResources_en.ActiveFail;
            }


        }
    }
    protected void gvClients_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        ShowclientSubPaymentsInvoices();
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        ShowclientSubPaymentsInvoices();
    }

    private void ShowclientSubPaymentsInvoices()
    {
        string paramStr = "";

        if (hfClientID.Value != "")
            paramStr += " AND Client_ID = " + hfClientID.Value;
        if (txtName.Text != "")
            paramStr += " AND ClientInvoicesPaymentsID = " + txtName.Text;
        if (rblActive.SelectedIndex > 0)
            paramStr += " AND Active = " + rblActive.SelectedValue;

        var result = new ClientSubPaymentsManager().GetClientSubPayments(paramStr);
        var cln_Name = result.FirstOrDefault();
        if (cln_Name != null)
        { Client_Name = result.FirstOrDefault().ClientName; }

        gvClients.DataSource = result;
        gvClients.DataBind();

    }
    private void SaveSubPayment()
    {
        ClientInvoicesPayment item = new ClientInvoicesPayment();

        item.CarInvoice_ID = Convert.ToInt64(ddlClientInvoices.SelectedValue);
        item.ClientPayments_ID = Convert.ToInt64(ddlPaymentReceipt.SelectedValue);
        item.ClientInvoicesPaymentsValue = Convert.ToDecimal(txtAmount.Text);
        item.RegisterDate = DateTime.Now;

        var result = new ClientSubPaymentsManager().SaveClientInvoicesPayment(item);
        if (result != null)
        {
            if (result.DifferInvoices >= 0 && result.DifferReceipt >= 0)
            { // Data saved successfully.

                // Refresh all lists in this page after saving data.
                if (hfClientID.Value != "")
                    RefreshAllData(Convert.ToInt64(hfClientID.Value));
                else
                    Server.TransferRequest(Request.Url.AbsolutePath);

            }
            else
                lblError.Text = Resources.AdminResources_en.ValidateAmount; // data no saved becouse validated amount not aproved.
        }
        else
            lblError.Text = Resources.AdminResources_en.ErrorSave;

    }
    private void RefreshAllData(long clnID)
    {

        // Response.RedirectPermanent("");
        FillLists.FillClientInvoices(ddlClientInvoices, clnID);
        FillLists.FillClientReceipts(ddlPaymentReceipt, clnID);

        ResetControls();

        ShowclientSubPaymentsInvoices();

    }
    private void ResetControls()
    {
        ddlClientInvoices.SelectedIndex = ddlPaymentReceipt.SelectedIndex = 0;
        txtAmount.Text = "0.00";
    }

}