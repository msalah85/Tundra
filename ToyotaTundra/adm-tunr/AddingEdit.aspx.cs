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


public partial class Admin_UAE_Al_Jaroof_EditAdding : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            try
            {
                if (Request.QueryString["id"] != null)
                {
                    FillLists.FillLanguagesList(ddlLanguage);
                    
                    // Get addin to edit
                    GetAddingEventById(Convert.ToInt32(Request.QueryString["id"]));

                }
                else
                {
                    Response.RedirectPermanent("AddinView.aspx");
                }
            }
            catch { }
        }
    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        if (txtName.Text != String.Empty && txtShortDesc.Text != String.Empty)
            EditAdding();
        else
            lblError.Text = Resources.AdminResources_en.DataRequired;
    }
    //protected void ddlAddinType_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    ShowHideMediaControls(ddlAddinType.SelectedIndex);
    //}



    //private void ShowHideMediaControls(int selected)
    //{
    //    switch (selected)
    //    {
    //        case 2: // media photo
    //            {
    //                lblYoutube.Visible = txtYoutubeId.Visible = false;
    //                lblFile.Visible = FileUpload1.Visible = true;

    //                cbPicThisMonth.Visible = true;

    //                break;
    //            }
    //        case 3: // media youtube
    //            {
    //                lblYoutube.Visible = txtYoutubeId.Visible = true;
    //                cbPicThisMonth.Visible = lblFile.Visible = FileUpload1.Visible = false;

    //                break;
    //            }
    //        default:
    //            {
    //                cbPicThisMonth.Visible = lblYoutube.Visible = txtYoutubeId.Visible = false;
    //                lblFile.Visible = FileUpload1.Visible = true;

    //                break;
    //            }


    //    }
    //}

    private void EditAdding()
    {
        Addin addinToEdit =  new Addin();
        AddinsManager addmgr = new AddinsManager();


        if (txtName.Text != String.Empty && txtShortDesc.Text != String.Empty)
        {
            if (Request.QueryString["id"] != null) { addinToEdit.ID = Convert.ToInt32(Request.QueryString["id"]); }
            addinToEdit.Active = cbActive.Checked;
            //addinToEdit.ur = txtURL.Text;
            addinToEdit.LanguageID = Convert.ToInt32(ddlLanguage.SelectedValue);
            addinToEdit.Priority = Convert.ToInt32(txtPriority.Text);
            addinToEdit.Title = txtName.Text;
            addinToEdit.ViewHome = cbViewHome.Checked;            
            addinToEdit.ShortDesc = txtShortDesc.Text;
            addinToEdit.Details = editorDetails.Value;
            addinToEdit.Timestamp = DateTime.Now;
                        
            //addinToEdit.main_picture = UploadFile();            
            addinToEdit.Type = ddlAddinType.SelectedValue;

            //if (ddlAddinType.SelectedIndex == 3) // youtube video.
            //{ addinToEdit.main_picture = txtYoutubeId.Text; }
            //else if (ddlAddinType.SelectedIndex == 2)
            //{

            //    if (FileUpload1.HasFile)
            //    { addinToEdit.main_picture = UploadFile(); }
            //    else
            //    { addinToEdit.main_picture = hfImageName.Value; }

                
            //    addinToEdit.ThisMonth = cbPicThisMonth.Checked;

            //}


            if (addmgr.UpdateAddin(addinToEdit))
                Response.RedirectPermanent("AddinView.aspx"); //?langId=" + ddlLanguageID.SelectedValue);
            else
            {
                lblError.Text = Resources.AdminResources_en.ErrorSave;
            }

        }
        else
        {
            lblError.Text = Resources.AdminResources_en.DataRequired;
        }
    }

    protected void GetAddingEventById(long id)
    {

        AddinsGetAddinDetailsByIdResult addinToEdit = new AddinsManager().GetAddinDetailsById(id);

        if (addinToEdit != null)
        {

            ddlAddinType.SelectedValue = addinToEdit.Type;
            //ddlAddinType_SelectedIndexChanged(ddlAddinType, new EventArgs());

            ddlLanguage.SelectedValue = addinToEdit.LanguageID.ToString();
            //ddlEventType.SelectedValue = addinToEdit.Type;
            txtPriority.Text = addinToEdit.Priority.ToString();
            txtName.Text = addinToEdit.Title;
            //tURL.Text = addinToEdit.Details;
            txtShortDesc.Text = addinToEdit.ShortDesc;
            cbViewHome.Checked = (bool)addinToEdit.ViewHome;
            cbActive.Checked = (bool)addinToEdit.Active;

            //hfImageName.Value = addinToEdit.main_picture;
            editorDetails.Value = addinToEdit.Details;

            //cbPicThisMonth.Checked = (addinToEdit.ThisMonth != null ? (bool)(addinToEdit.ThisMonth) : false);
            //txtYoutubeId.Text = addinToEdit.main_picture;



            //if (addinToEdit.main_picture != null) { SelectedBackgroundImage.ImageUrl = "../../Public/image/library/" + addinToEdit.main_picture; hfImageName.Value = addinToEdit.main_picture; }
            // if (addinToEdit.Timestamp != null) { txtDatetime.Text = addinToEdit.Timestamp.ToString(); }

        }
        else
        {
            Response.RedirectPermanent("AddinView.aspx"); //?langId=" + ddlLanguageID.SelectedValue);
        }

    }

    
}
