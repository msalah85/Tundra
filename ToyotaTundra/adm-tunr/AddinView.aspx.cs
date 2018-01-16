
using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Text.RegularExpressions;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class Admin_UAE_Al_Jaroof_SiteAddin : System.Web.UI.Page
{

    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                //MMSGeneral.FillLanguagesList(ddlLanguageID);

                //if (Request.QueryString["langId"] != null)
                //{
                //    ddlLanguageID.SelectedValue = Request.QueryString["langId"].ToString(); 
                //}


                FillEventsList();
                                
            }

        }
        catch { Response.RedirectPermanent("home.aspx"); }
    }
    
    protected void gvNews_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvNews.PageIndex = e.NewPageIndex;
        FillEventsList();

    }
    protected void gvNews_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            // Get link id to delete.
            int catID = Convert.ToInt32(e.CommandArgument);

            // Delete event.
            AddinsManager addinObj = new AddinsManager();
            if (addinObj.DeleteAddin(catID))
                lblError.Text = Resources.AdminResources_en.SuccessDelete;
            else
                lblError.Text = Resources.AdminResources_en.ErrorDelete;

        }
    }
    protected void gvNews_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

           // LinkButton l = (LinkButton)e.Row.FindControl("LinkButton1");


            //if (Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "id")) > 10)
            //{
            //    l.Attributes.Add("onclick", "javascript:return " +
            //    "confirm('Are you sure you want to delete this record " +
            //    DataBinder.Eval(e.Row.DataItem, "id") + "')");
            //}
            //else
            //{
            //    l.Visible = false;
            //}



        }
    }
    protected void gvNews_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FillEventsList();        
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        FillEventsList();
    }

    #endregion

    #region "Page Methods"

    public void FillEventsList()
    {
        string param = "";

        if (ddlFileType.SelectedIndex > 0)
            param += " AND Addins.Type = '" + ddlFileType.SelectedValue + "' ";
        if (txtName.Text.Trim() != String.Empty)
            param += " AND Addins.Title LIKE '%" + txtName.Text + "%' ";


        gvNews.DataSource = new AddinsManager().GetAllAddinsByLanguageId(param);
        gvNews.DataBind();

    }

    public string CutDetails(object strObj)
    {
        string retStr = "";

        if (strObj != null)
        {
            try
            {
                retStr = new HTMLExtracor.Extractor().Extract(strObj.ToString()); // remove html tags. (String)strObj.ToString();
                Regex.Replace(retStr.ToString(), "<.*?>", string.Empty);
                retStr = (String)strObj.ToString().Substring(0, 70);

            }
            catch { retStr += " "; }

            retStr += "...";
        }

        return retStr;

    }
    
    #endregion
        
}
