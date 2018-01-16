



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
using SystemManager.Business;

public partial class ShowLinks : System.Web.UI.Page
{

    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            //FillLists.FillLinksNamesList(ddlParentLinks);
            FillLists.FillLanguagesList(ddlLanguage);

            FillLiksListByLanguageId();

        }
    }
    
    protected void gvLinks_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            ImageButton l = (ImageButton)e.Row.FindControl("LinkButton1");
            //l.Attributes.Add("onclick", "javascript:return " +
            //"confirm('Are you sure you want to delete this record " +
            //DataBinder.Eval(e.Row.DataItem, "id") + "')");

            l.Visible = (Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "id")) > 40) ? true : false;

        }
    }
    protected void gvlinks_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvlinks.PageIndex = e.NewPageIndex;
        FillLiksListByLanguageId();

    }
    protected void gvlinks_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            // Get link id to delete.
            int linkID = Convert.ToInt32(e.CommandArgument);

            // Execute delete func.
            LinksManager linkOnj = new LinksManager();
            linkOnj.DeleteLink(linkID);
        }
    }
    protected void gvlinks_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        FillLiksListByLanguageId();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        FillLiksListByLanguageId();
    }

    
    #endregion

    #region "Private Methods"

    private void FillLiksListByLanguageId()
    {
        string paramStr = " ";

        if (rblActive.SelectedIndex > 0)
            paramStr += " AND link.Active = " + rblActive.SelectedValue;
        if (txtName.Text.Trim() != String.Empty)
            paramStr += " AND link.link_name Like N'%" + txtName.Text + "%' ";
        if (ddlLanguage.SelectedIndex > 0)
            paramStr += " AND link.link_lang_id  = " + ddlLanguage.SelectedValue;


        gvlinks.DataSource = new LinksManager().GetLinksList(paramStr);
        gvlinks.DataBind();

    }
    
    #endregion
}
