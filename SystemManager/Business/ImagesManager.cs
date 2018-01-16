
///================================================================================
/// Developer: Eng/ Mohamed Salah Abdullah.
/// Copyright (c) 2010 Minutes Web Designer Co.
/// All right resarved.
/// Email: smart_prog_ms@yahoo.com.
/// Last Update: 19-04-2010.
///================================================================================


using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;

namespace SystemManager.Business
{
    /// <summary>
    /// This calss for uploading image for 
    /// our project.
    /// </summary>
    public class ImagesManager
    {
        #region "Private Declaration"

        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Images Methods"

        public IList<ImagesListByCategoryIdResult> GetImagesListByCategoryId(string category, long masterId)
        {
            return ctxRead.ImagesListByCategoryId(category, masterId).ToList();
        }


        public bool DeleteAnImage(long imgID)
        {
            try
            {
                ctxWrite.ImagesDeleteImage(imgID);
                return true;
            }
            catch { return false; }
        }
        public bool AddNewImage(long masterID, string category, string url)
        {
            Picture imgObj = new Picture();

            imgObj.MasterID = masterID;
            imgObj.CategoryType = category;
            imgObj.URL = url;

            try
            {
                ctxWrite.Pictures.InsertOnSubmit(imgObj);
                ctxWrite.SubmitChanges();

                return true;
            }
            catch { return false; }
        }
        public bool AddImage(Picture imgToAdd)
        {
            try
            {
                ctxWrite.Pictures.InsertOnSubmit(imgToAdd);
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
