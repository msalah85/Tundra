using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SystemManager.Business;
using SystemManager.Models;

public partial class CarPartTypeSite : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
           
            ShowCarPartsContent();
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

    private void ShowCarPartsContent()
    {

        // get data.
        List<CarPartDetails> data = new CarPartsManager().GetAllCarParts();
        parts = data;
        if (data != null)
        {
            foreach (var item in data)
            {
                var model = new CarPartsImagesManager().CarPartHasMainImage(item.CarPartId);
                if (model.Count() == 0)
                    item.ImageUrl = "20_bQT1WmUM.jpg";
                else
                    item.ImageUrl = model.Where(x => x.IsMain == true).FirstOrDefault().Url;
            }
            // show home news
            //lvCarParts.DataSource = data;
            //lvCarParts.DataBind();
        }
    }
    }