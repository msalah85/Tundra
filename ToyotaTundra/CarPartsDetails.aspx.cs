using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.Models;

public partial class CarPartsDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["ID"]))
            {
                var id = Request.QueryString["ID"];
                ShowCarPartsContent(Convert.ToInt32(id));
            }
        }
    }
    public List<CarPartDetails> parts
    {
        get
        {
            if (ViewState["StatisticsArray"] != null)
            {
                return (List<CarPartDetails>)ViewState["StatisticsArray"];
            }
            return new List<CarPartDetails>();
        }
        set { ViewState["StatisticsArray"] = value; }
    }
    private void ShowCarPartsContent(int id)
    {
        
        // get data.
        List<CarPartDetails> data = new CarPartsManager().GetCarPartDetailsById(id).ToList();
        parts = data;
        if (data != null)
        {
            foreach (var item in data)
            {

                item.ImagesUrl = new CarPartsImagesManager().GetAllImagesUrl(id);
         }
        }
    }
}