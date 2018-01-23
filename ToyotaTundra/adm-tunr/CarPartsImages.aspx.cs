using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.DataAccess;

public partial class adm_tunr_CarPartsImages : System.Web.UI.Page
{
        #region "Private Declaration"

    CarPartsImagesManager imgObj = new CarPartsImagesManager();

    #endregion

    #region "Event Handler"

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Request.QueryString["masterId"]))
        {
            hfMasterID.Value = Request.QueryString["masterId"];
            FillImagesList(Convert.ToInt32(hfMasterID.Value));
        }
        else
            Response.Redirect("Home.aspx");
    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (hfMasterID.Value != null) // && ViewState["catType"] != null)
        {
            if (FileUpload2.HasFile)
                StartUploadingPictures();
            else
                ClientScript.RegisterClientScriptBlock(GetType(), "Javascript", "<script>alert('Please try again by: Select at least one picture then press upload button.')</script>");

        }
        else
            Response.Redirect("Home.aspx");
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        // Delete Image.
        if (e.CommandName == "Delete")
        {
            int imgID = Convert.ToInt32(e.CommandArgument);
            string imgName = ""; //DataList1.SelectedItem.ToolTip;

            LinkButton lb = (LinkButton)(e.Item.FindControl("itemToDelete"));

            imgName = lb.ToolTip;
            imgName = imgName.Substring(2); imgName = imgName.Replace("/", "\\");


            // Perform delete action.
            if (imgObj.DeleteAnImage(imgID))
            {
                DeleteImageFromServer(imgName);
            }

            // Refresh images list.
            FillImagesList(Convert.ToInt32(hfMasterID.Value));

        }
        else if (e.CommandName == "ResetMainImage") // Reset main image.
        {

            long imgID = Convert.ToInt32(e.CommandArgument);
            int masterID = 0; if (hfMasterID.Value != null) { masterID = Convert.ToInt32(hfMasterID.Value); }

            if (imgID != 0 && masterID != 0)
            {
                // perform reset image action in db.            
                if (imgObj.ResetMainImage(masterID, imgID, "cars"))
                {
                    // Refresh images list.
                    FillImagesList(masterID);
                }
                else { lblError.Text = "Data not reset."; }
            }
            else { lblError.Text = Resources.AdminResources_en.ErrorDelete; }

        }
    }
    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        var flag = (Label)e.Item.FindControl("lblFlag");

        if (flag != null && flag.ToolTip == "True")
        {
            e.Item.FindControl("ResetMainPic").Visible = false;
            flag.Text = "Main Picture";

        }
    }

    #endregion

    #region "Private Methods"

    void StartUploadingPictures()
    {
        try
        {
            string ext = hfMasterID.Value + "_cars_";
            HttpFileCollection hfc = Request.Files; // Get the HttpFileCollection

            #region "start uploading"

            for (int i = 0; i < hfc.Count; i++)
            {
                HttpPostedFile hpf = hfc[i];
                if (hpf.ContentLength > 0)
                {
                    string fileName = hfMasterID.Value + "_" + RandomValuess.GetUniqueKey() + hpf.FileName.Substring(hpf.FileName.LastIndexOf('.'));
                    string _path = Server.MapPath("~/Public/image/carParts/");

                    // Save full size image to the server.
                    hpf.SaveAs(_path + fileName);

                    // Save thumb to the server.
                    MinutesuaeConcrete.SaveThumb(fileName, _path);

                    // insert into db.                    
                    SaveImagesInDB(fileName);

                    // 
                    this.divMessage.InnerHtml += "<b>Picture: </b>" + hpf.FileName + "  <b>Size:</b> " +
                        hpf.ContentLength + "  <b>Type:</b> " + hpf.ContentType + " Uploaded Successfully <br/>";
                    this.divMessage.Attributes.Add("class", "green-alert");
                }
            }
            #endregion
        }
        catch (Exception ex)
        {
            lblError.Text = "Error: " + ex.Message; lblError.Visible = true; lblError.ForeColor = System.Drawing.Color.DarkRed;
        }
    }

    void SaveImagesInDB(string url)
    {
        var img = new CarPartsImage();
        
        img.PartId = Convert.ToInt32(hfMasterID.Value);
        img.Url = url;
        img.IsMain = cbMain.Checked;
        if (imgObj.AddImage(img))
        {
            this.divMessage.InnerHtml += Resources.AdminResources_en.SuccessSave;
            FillImagesList(Convert.ToInt32(hfMasterID.Value)); // Refresh images.
        }

    }

    private void DeleteImageFromServer(string imgName)
    {
        try
        {
            var imgInfo = new FileInfo(Server.MapPath("~/Public/image/cars/") + imgName);

            if (imgInfo.Exists)
                File.Delete(Server.MapPath("~/Public/image/cars/") + imgName);
            else
                throw new FileNotFoundException();

        }
        catch (FileNotFoundException ex) { lblError.Text = ex.Message; lblError.Visible = true; }

        catch (Exception ex) { lblError.Text = ex.Message; lblError.Visible = true; }

    }

    private void FillImagesList(int msterID)
    {
        DataList1.DataSource = null;
        DataList1.DataBind();

        //DataList1.DataSource = imgObj("cars", msterID);
        //DataList1.DataBind();
    }

    #endregion
}