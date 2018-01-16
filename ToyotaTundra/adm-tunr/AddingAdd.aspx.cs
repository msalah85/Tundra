
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

public partial class Admin_UAE_Al_Jaroof_AddingAddin : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            FillLists.FillLanguagesList(ddlLanguage);
                        
        }
    }
    
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtName.Text != String.Empty && txtShortdesc.Text != String.Empty)
            AddNewAdding();
        else
            lblError.Text = Resources.AdminResources_en.DataRequired;
    }

    private void AddNewAdding()
    {
        Addin addinToAdd = new Addin();
        AddinsManager addmgr = new AddinsManager();


        if (txtName.Text != String.Empty && txtShortdesc.Text != String.Empty)
        {

            addinToAdd.ShortDesc = txtShortdesc.Text;
            addinToAdd.Details = editorDetails.Value;
            addinToAdd.LanguageID = Convert.ToInt32(ddlLanguage.SelectedValue);
            addinToAdd.Priority = Convert.ToInt32(txtPriority.Text);
            addinToAdd.Title = txtName.Text;            
            addinToAdd.Active = cbActive.Checked;
            addinToAdd.ViewHome = cbViewHome.Checked;
            addinToAdd.Timestamp = DateTime.Now;

            addinToAdd.Type = ddlAddinType.SelectedValue;


            //if (ddlAddinType.SelectedIndex == 3) // youtube video.
            //{ addinToAdd.main_picture = txtYoutubeId.Text; }
            //else if (ddlAddinType.SelectedIndex == 2)
            //{
            //    addinToAdd.main_picture = UploadFile();
            //    addinToAdd.ThisMonth = cbPicThisMonth.Checked;
            //}
            

            if (addmgr.AddNewAddin(addinToAdd))
                Response.RedirectPermanent("AddinView.aspx"); //?lang=" + ddlLanguageID.SelectedValue);
            else
            {
                lblError.Text += Resources.AdminResources_en.ErrorSave;
            }

        }
        else
        {
            lblError.Text += Resources.AdminResources_en.DataRequired;
        }


    }


}
