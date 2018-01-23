using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;
using SystemManager.Models;

namespace SystemManager.Business
{
    public class CarPartsManager
    {
        #region "Private Declaration"
        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"

        public CarPart GetCarPartById(int id)
        {
            return ctxWrite.CarParts.Where(x => x.Id == id).FirstOrDefault(); ;
        }
        public int SaveCarPart(CarPart carPart)
        {
            CarPart model = new CarPart();
            model = ctxWrite.CarParts.Where(x => x.Id == carPart.Id).FirstOrDefault();
            if (model != null)
            {
                model.IsActive = carPart.IsActive;
                model.MakerId = carPart.MakerId;
                model.ModelId = carPart.ModelId;
                model.Periority = carPart.Periority;
                model.Description = carPart.Description;
                model.Price = carPart.Price;
                model.TypeId = carPart.TypeId;
            }
            else {
                carPart.CreatedDate = DateTime.Now.Date;
                ctxWrite.CarParts.InsertOnSubmit(carPart);
            }
                ctxWrite.SubmitChanges();
            return carPart.Id;
        }
        public List<CarPartDetails> GetAllCarParts()
        {
            var carParts = from images in ctxWrite.CarPartsImages.Where(x=>x.IsMain==true)
                           join carPart in ctxWrite.CarParts.OrderByDescending(x => x.CreatedDate)
                           on images.PartId equals carPart.Id
                           join carPartType in ctxWrite.CarPartTypes
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           select new CarPartDetails
                           {
                               CarPartId=carPart.Id,
                               CarPartType= carPartType.Name,
                               MarkerNameEn=carMaker.MarkerNameEn,
                               MarkerNameAr=carMaker.MarkerNameAr,
                               ModelNameEn=carModel.TypeNameEn,
                               ModelNameAr=carModel.TypeNameAr,
                               ImageUrl=images.Url,
                               Year=years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> GetAllCarPartsBycarPartType(string search,int partTypeId)
        {
            var carParts = from images in ctxWrite.CarPartsImages
                           join carPart in ctxWrite.CarParts.OrderByDescending(x => x.CreatedDate)
                           on images.PartId equals carPart.Id
                           join carPartType in ctxWrite.CarPartTypes.Where(x=>x.ID==partTypeId)
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (carMaker.MarkerNameEn.Contains(search) || carMaker.MarkerNameAr.Contains(search) ||
                                  carModel.TypeNameEn.Contains(search) || carModel.TypeNameAr.Contains(search) ||
                                  carPartType.Name.Contains(search) || years.YearNameEn.Contains(search))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               ImageUrl = images.Url,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> GetAllCarParts(string search)
        {
            var carParts = from images in ctxWrite.CarPartsImages
                           join carPart in ctxWrite.CarParts.OrderByDescending(x => x.CreatedDate)
                           on images.PartId equals carPart.Id
                           join carPartType in ctxWrite.CarPartTypes
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where(carMaker.MarkerNameEn.Contains(search)||carMaker.MarkerNameAr.Contains(search) ||
                                  carModel.TypeNameEn.Contains(search) || carModel.TypeNameAr.Contains(search) ||
                                  carPartType.Name.Contains(search) || years.YearNameEn.Contains(search))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               ImageUrl = images.Url,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public void DeleteCarPart(int id)
        {
            CarPart carPart = ctxWrite.CarParts.Where(x => x.Id == id).FirstOrDefault();
            if (carPart != null)
            {
                ctxWrite.CarParts.DeleteOnSubmit(carPart);
                ctxWrite.SubmitChanges();
            }
        }

        #endregion

    }
}
