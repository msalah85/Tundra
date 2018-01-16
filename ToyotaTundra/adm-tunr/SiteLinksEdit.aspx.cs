
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
using SystemManager.DataAccess;

public partial class EditSiteLinks : System.Web.UI.Page
{
    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Page.RouteData.Values["linksId"] != null)
            {
                FillLists.FillLanguagesList(ddlLanguage);
                //FillLists.FillLinksNamesList(ddlParentLinks);

                // Show link details if link id only integer..
                hfID.Value = Page.RouteData.Values["linksId"].ToString();
                ShowLinkDetails(Convert.ToInt32(hfID.Value));
            }
            else
            {
                Response.Redirect("SiteLinksView.aspx");
            }
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (ddlLanguage.SelectedIndex > 0 && txtName.Text.Trim() != String.Empty)
            UpdateLinkInfo();
        else
            lblError.Text = Resources.AdminResources_en.DataRequired;
    }

    #endregion

    #region "Private Methods"


    private void ShowLinkDetails(int id)
    {
        LinksGetLinkDetailsByIdResult linkToShow = new LinksManager().GetLinkDetails(id);


        if (linkToShow != null)
        {
            txtName.Text = linkToShow.link_name;
            ddlLanguage.SelectedValue = linkToShow.link_lang_id.ToString();
            txtPriority.Text = linkToShow.link_order.ToString();
            editorLinkDetails.Value = linkToShow.link_details;

            //if (linkToShow.ParentID != null) { ddlParentLinks.SelectedValue = linkToShow.ParentID.ToString(); }
            //txtLinkURL.Text = linkToShow.link_url;

            //ShowLinkPlace(linkToShow.link_place);

            cbActive.Checked = linkToShow.Active != null ? (bool)linkToShow.Active : true;

        }

    }
    /// <summary>
    /// Show palce of the link 
    /// (v= vertical, h= horizontal).
    /// </summary>
    /// <param name="val"></param>
    /// <returns></returns>
    //private void ShowLinkPlace(string val)
    //{
    //    if (val == "v")
    //        v.Checked = true;
    //    else
    //        h.Checked = true;

    //}
    private void UpdateLinkInfo()
    {
        LinksManager linkObj = new LinksManager();
        SiteLink linkToSave = new SiteLink();

        try
        {
            linkToSave.id = hfID.Value != String.Empty ? Convert.ToInt32(hfID.Value) : 0; // ConvertLinkIdToInt();
            linkToSave.link_name = txtName.Text;

            //if (ddlParentLinks.SelectedIndex > 0) { linkToSave.ParentID = Convert.ToInt32(ddlParentLinks.SelectedValue); }
            //if (txtLinkURL.Text.Trim() != String.Empty) { linkToSave.link_url = txtLinkURL.Text; }
            //linkToSave.link_place = GetPlaceofLink();            

            linkToSave.link_lang_id = Convert.ToInt32(ddlLanguage.SelectedValue);
            linkToSave.link_order = Convert.ToInt32(txtPriority.Text);

            linkToSave.link_details = editorLinkDetails.Value;
            linkToSave.Active = cbActive.Checked;

            // Perform saving data.
            if (linkObj.UpdateLinkInfo(linkToSave))
                Response.Redirect("../SiteLinksView.aspx"); //?langid=" + ddlLanguageID.SelectedValue); // success save.
            else { lblError.Text = Resources.AdminResources_en.ErrorSave; lblError.ForeColor = System.Drawing.Color.DarkRed; } // fail save.
        }
        catch { lblError.Text = Resources.AdminResources_en.ErrorSave; lblError.ForeColor = System.Drawing.Color.DarkRed; }
    }


    //private string GetPlaceofLink()
    //{
    //    string palce = "";

    //    if (v.Checked)
    //        palce = v.Value;
    //    else
    //    { palce = h.Value; }


    //    return palce;
    //}

    #endregion

}
