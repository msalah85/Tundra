using System;
using System.Linq;
using System.Web.UI;
using SystemManager.Business;
using SystemManager.Models;

public partial class CarPartsDetails : Page
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

    public CarPartDetails part
    {
        get
        {
            if (ViewState["StatisticsArray"] != null)
            {
                return (CarPartDetails)ViewState["StatisticsArray"];
            }
            return new CarPartDetails();
        }
        set { ViewState["StatisticsArray"] = value; }
    }

    private void ShowCarPartsContent(int id)
    {
        // get data.
        CarPartDetails data = new CarPartsManager().GetCarPartDetailsById(id).FirstOrDefault();

        if (data != null)
        {
            part = data;

            Page.Title = string.Format("{0} - {1} - {2} - {3}", part.MarkerNameEn, part.ModelNameEn, part.Year, part.CarPartType);
            part.ImagesUrl = new CarPartsImagesManager().GetAllImagesUrl(id);
        }
    }
}