
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
using System.Xml.Linq;
using SystemManager.Business;
using SystemManager.DataAccess;


public partial class AddSiteLinks : System.Web.UI.Page
{

    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            // Fill avaliable languages list.
            FillLists.FillLanguagesList(ddlLanguage);
            //FillLists.FillLinksNamesList(ddlParentLinks);
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtName.Text != String.Empty && ddlLanguage.SelectedIndex > 0)
        {
            AddNewLink();
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert",
                       "<script>alert('Please enter fields required first, then press save.');</script>");
        }
    }
    
    #endregion

    #region "Private Methods"

    /// <summary>
    /// Add new link to db.
    /// </summary>
    private void AddNewLink()
    {
        LinksManager linkObj = new LinksManager();
        SiteLink linkToSave = new SiteLink();

        try
        {
            // assign newlink info.
            linkToSave.link_details = editorLinkDetails.Value;
            linkToSave.link_lang_id = Convert.ToInt32(ddlLanguage.SelectedValue);

            //if (ddlParentLinks.SelectedIndex > 0) { linkToSave.ParentID = Convert.ToInt32(ddlParentLinks.SelectedValue); }
            //if (txtLinkURL.Text.Trim() != String.Empty) { linkToSave.link_url = txtLinkURL.Text; }

            linkToSave.link_name = txtName.Text;
            linkToSave.link_order = Convert.ToInt32(txtPriority.Text);
            //linkToSave.link_place = GetPlaceofLink();
            linkToSave.Active = cbActive.Checked;

            // perform saving method.
            if (linkObj.AddNewLink(linkToSave))
            {
                // go to links list.
                string url = "SiteLinksView.aspx"; //?langid=" + ddlLanguageID.SelectedValue;        
                Response.Redirect(url);
            }
            else
            { lblError.Text = Resources.AdminResources_en.ErrorSave; }

        }
        catch { lblError.Text = Resources.AdminResources_en.ErrorSave; }

    }

    
    #endregion
        
}
