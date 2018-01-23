using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;

namespace SystemManager.Business
{
    public class CarPartsImagesManager
    {
        #region "Private Declaration"

        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Images Methods"

  


        public bool DeleteAnImage(long imgID)
        {
            try
            {
                var image = ctxWrite.CarPartsImages.Where(x => x.Id == imgID).FirstOrDefault();
                ctxWrite.CarPartsImages.DeleteOnSubmit(image);
                ctxWrite.SubmitChanges();
                return true;
            }
            catch { return false; }
        }
        public bool AddNewImage(int masterID, string url)
        {
            CarPartsImage imgObj = new CarPartsImage();

            imgObj.PartId = masterID;
            imgObj.Url = url;

            try
            {
                ctxWrite.CarPartsImages.InsertOnSubmit(imgObj);
                ctxWrite.SubmitChanges();

                return true;
            }
            catch { return false; }
        }
        public bool AddImage(CarPartsImage imgToAdd)
        {
            try
            {
                ctxWrite.CarPartsImages.InsertOnSubmit(imgToAdd);
                ctxWrite.SubmitChanges();

                return true;
            }
            catch { return false; }
        }

        public bool ResetMainImage(long masterID, long iD, string category)
        {
            try
            {
                ctxWrite.ImagesResetMainImage(iD, masterID, category);

                return true;
            }
            catch { return false; }
        }


        //public bool UpdateImageInfo(LinkImage imageToUpdate)
        //{
        //    try
        //    {
        //        ctx.ImagesUpdateImageInfo(Convert.ToInt32( imageToUpdate.ID), imageToUpdate.LinkID,
        //            imageToUpdate.ImageTitle, imageToUpdate.Description, imageToUpdate.Priority,
        //            imageToUpdate.URL, imageToUpdate.MainImage);

        //        return true;
        //    }
        //    catch { return false; }
        //}


        #endregion
    }
}
