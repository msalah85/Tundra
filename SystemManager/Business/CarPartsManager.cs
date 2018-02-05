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
                carPart.IsDeleted = false;
                ctxWrite.CarParts.InsertOnSubmit(carPart);
            }
            ctxWrite.SubmitChanges();
            return carPart.Id;
        }
        public List<CarPartDetails> GetAllCarParts()
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
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
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> GetAllCarPartsForWebSite()
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (carPart.IsActive == true)
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }

        public List<CarPartDetails> GetAllCarPartsBycarPartType(string search, int partTypeId)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes.Where(x => x.ID == partTypeId)
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  carMaker.MarkerNameEn.Contains(search) || carMaker.MarkerNameAr.Contains(search) ||
                                  carModel.TypeNameEn.Contains(search) || carModel.TypeNameAr.Contains(search) ||
                                  carPartType.Name_En.Contains(search) || years.YearNameEn.Contains(search) ||
                                  carPart.Price.ToString().Contains(search))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> GetAllCarParts(string search)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (carMaker.MarkerNameEn.Contains(search) || carMaker.MarkerNameAr.Contains(search) ||
                                  carModel.TypeNameEn.Contains(search) || carModel.TypeNameAr.Contains(search) ||
                                  carPartType.Name_En.Contains(search) || years.YearNameEn.Contains(search) ||
                                  carPart.Price.ToString().Contains(search))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> GetAllCarParts(CarPartsSearch model)
        {
            if (model.CarPartTypeId > 0)
            {
                if (model.MakerId > 0)
                {
                    if (model.ModelId > 0)
                    {
                        if (model.FromYearId > 0 && model.ToYearId > 0)
                        {
                            if (!string.IsNullOrEmpty(model.StartPrice) && !string.IsNullOrEmpty(model.EndPrice))
                            {
                                return SearcCarPartsWithCarPartTypeAndMakerAndModelAndYearAndPrice(model);
                            }
                            else
                                return SearcCarPartsWithCarPartTypeAndMakerAndModelAndYear(model);
                        }
                        else
                        {
                            if (!string.IsNullOrEmpty(model.StartPrice) && !string.IsNullOrEmpty(model.EndPrice))
                            {
                                return SearcCarPartsWithCarPartTypeAndMakerAndModelAndPrice(model);
                            }
                            else
                                return SearcCarPartsWithCarPartTypeAndMakerAndModel(model);
                        }
                    }
                    else
                    {
                        if (model.FromYearId > 0 && model.ToYearId > 0)
                        {
                            if (!string.IsNullOrEmpty(model.StartPrice) && !string.IsNullOrEmpty(model.EndPrice))
                            {
                                return SearcCarPartsWithCarPartTypeAndMakerAndYearAndPrice(model);
                            }
                            else
                                return SearcCarPartsWithCarPartTypeAndMakerAndYear(model);
                        }
                        else
                        {
                            if (!string.IsNullOrEmpty(model.StartPrice) && !string.IsNullOrEmpty(model.EndPrice))
                            {
                                return SearcCarPartsWithCarPartTypeAndMakerAndPrice(model);
                            }
                            else
                                return SearcCarPartsWithCarPartTypeAndMaker(model);
                        }
                    }
                }
                else
                {
                    if (model.ModelId > 0)
                    {
                        if (model.FromYearId > 0 && model.ToYearId > 0)
                        {
                            if (!string.IsNullOrEmpty(model.StartPrice) && !string.IsNullOrEmpty(model.EndPrice))
                            {
                                return SearcCarPartsWithCarPartTypeAndModelAndYearAndPrice(model);
                            }
                            else
                                return SearcCarPartsWithCarPartTypeAndModelAndYear(model);
                        }
                        else
                        {
                            if (!string.IsNullOrEmpty(model.StartPrice) && !string.IsNullOrEmpty(model.EndPrice))
                            {
                                return SearcCarPartsWithCarPartTypeAndModelAndPrice(model);
                            }
                            else
                                return SearcCarPartsWithCarPartTypeAndModel(model);
                        }
                    }
                    else
                    {
                        if (model.FromYearId > 0 && model.ToYearId > 0)
                        {
                            if (!string.IsNullOrEmpty(model.StartPrice) && !string.IsNullOrEmpty(model.EndPrice))
                            {
                                return SearcCarPartsWithCarPartTypeAndYearAndPrice(model);
                            }
                            else
                                return SearcCarPartsWithCarPartTypeAndYear(model);
                        }
                        else
                        {
                            if (!string.IsNullOrEmpty(model.StartPrice) && !string.IsNullOrEmpty(model.EndPrice))
                            {
                                return SearcCarPartsWithCarPartTypeAndPrice(model);
                            }
                            else
                                return SearcCarPartsWithCarPartType(model);
                        }
                    }
                }
            }
            else
            {
                if (model.MakerId > 0)
                {
                    if (model.ModelId > 0)
                    {
                        if (model.FromYearId > 0 && model.ToYearId > 0)
                        {
                            if (!string.IsNullOrEmpty(model.StartPrice) && !string.IsNullOrEmpty(model.EndPrice))
                            {
                                return SearcCarPartsWithMakerAndModelAndYearAndPrice(model);
                            }
                            else
                                return SearcCarPartsWithMakerAndModelAndYear(model);
                        }
                        else
                        {
                            if (!string.IsNullOrEmpty(model.StartPrice) && !string.IsNullOrEmpty(model.EndPrice))
                            {
                                return SearcCarPartsWithMakerAndModelAndPrice(model);
                            }
                            else
                                return SearcCarPartsWithMakerAndModel(model);
                        }
                    }
                    else
                    {
                        if (model.FromYearId > 0 && model.ToYearId > 0)
                        {
                            if (!string.IsNullOrEmpty(model.StartPrice) && !string.IsNullOrEmpty(model.EndPrice))
                            {
                                return SearcCarPartsWithMakerAndYearAndPrice(model);
                            }
                            else
                                return SearcCarPartsWithMakerAndYear(model);
                        }
                        else
                        {
                            if (!string.IsNullOrEmpty(model.StartPrice) && !string.IsNullOrEmpty(model.EndPrice))
                            {
                                return SearcCarPartsWithMakerAndPrice(model);
                            }
                            else
                                return SearcCarPartsWithMaker(model);
                        }
                    }
                }
                else
                {
                    if (model.ModelId > 0)
                    {
                        if (model.FromYearId > 0 && model.ToYearId > 0)
                        {
                            if (!string.IsNullOrEmpty(model.StartPrice) && !string.IsNullOrEmpty(model.EndPrice))
                            {
                                return SearcCarPartsWithModelAndYearAndPrice(model);
                            }
                            else
                                return SearcCarPartsWithModelAndYear(model);
                        }
                        else
                        {
                            if (!string.IsNullOrEmpty(model.StartPrice) && !string.IsNullOrEmpty(model.EndPrice))
                            {
                                return SearcCarPartsWithModelAndPrice(model);
                            }
                            else
                                return SearcCarPartsWithModel(model);
                        }
                    }
                    else
                    {
                        if (model.FromYearId > 0 && model.ToYearId > 0)
                        {
                            if (!string.IsNullOrEmpty(model.StartPrice) && !string.IsNullOrEmpty(model.EndPrice))
                            {
                                return SearcCarPartsWithYearAndPrice(model);
                            }
                            else
                                return SearcCarPartsWithYear(model);
                        }
                        else
                        {
                            if (!string.IsNullOrEmpty(model.StartPrice) && !string.IsNullOrEmpty(model.EndPrice))
                            {
                                return SearcCarPartsWithPrice(model);
                            }
                            else
                                return SearcCarPartswithsearch(model);
                        }
                    }
                }
            }
        }
        public List<CarPartDetails> SearcCarPartsWithCarPartTypeAndMakerAndModelAndYearAndPrice(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes.Where(x => x.ID == model.CarPartTypeId)
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers.Where(x => x.MarkerID == model.MakerId)
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels.Where(x => x.ModelID == model.ModelId)
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  (carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search)) &&
                                  (carPart.Price >= Convert.ToInt32(model.StartPrice) && carPart.Price <= Convert.ToInt32(model.EndPrice)) &&
                                  (Convert.ToInt32(years.YearNameEn) >= model.FromYearId && Convert.ToInt32(years.YearNameEn) <= model.ToYearId))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithCarPartTypeAndMakerAndModelAndYear(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes.Where(x => x.ID == model.CarPartTypeId)
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers.Where(x => x.MarkerID == model.MakerId)
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels.Where(x => x.ModelID == model.ModelId)
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  (carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search)) &&
                                  (Convert.ToInt32(years.YearNameEn) >= model.FromYearId && Convert.ToInt32(years.YearNameEn) <= model.ToYearId))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithCarPartTypeAndMakerAndModelAndPrice(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes.Where(x => x.ID == model.CarPartTypeId)
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers.Where(x => x.MarkerID == model.MakerId)
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels.Where(x => x.ModelID == model.ModelId)
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  (carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search) )&&
                                  carPart.Price >= Convert.ToInt32(model.StartPrice) && carPart.Price <= Convert.ToInt32(model.EndPrice))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithCarPartTypeAndMakerAndModel(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes.Where(x => x.ID == model.CarPartTypeId)
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers.Where(x => x.MarkerID == model.MakerId)
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels.Where(x => x.ModelID == model.ModelId)
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithCarPartTypeAndMakerAndYearAndPrice(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes.Where(x => x.ID == model.CarPartTypeId)
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers.Where(x => x.MarkerID == model.MakerId)
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  (carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search) )&&
                                  carPart.Price >= Convert.ToInt32(model.StartPrice) && carPart.Price <= Convert.ToInt32(model.EndPrice) ||
                                  (Convert.ToInt32(years.YearNameEn) >= model.FromYearId && Convert.ToInt32(years.YearNameEn) <= model.ToYearId))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithCarPartTypeAndMakerAndYear(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes.Where(x => x.ID == model.CarPartTypeId)
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers.Where(x => x.MarkerID == model.MakerId)
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  (carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search)) &&
                                  (Convert.ToInt32(years.YearNameEn) >= model.FromYearId && Convert.ToInt32(years.YearNameEn) <= model.ToYearId))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithCarPartTypeAndMakerAndPrice(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes.Where(x => x.ID == model.CarPartTypeId)
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers.Where(x => x.MarkerID == model.MakerId)
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  (carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search)) &&
                                  carPart.Price >= Convert.ToInt32(model.StartPrice) && carPart.Price <= Convert.ToInt32(model.EndPrice) )
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithCarPartTypeAndMaker(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes.Where(x => x.ID == model.CarPartTypeId)
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers.Where(x => x.MarkerID == model.MakerId)
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithCarPartType(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes.Where(x => x.ID == model.CarPartTypeId)
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithCarPartTypeAndModelAndYearAndPrice(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes.Where(x => x.ID == model.CarPartTypeId)
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels.Where(x => x.ModelID == model.ModelId)
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  (carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search)) &&
                                  (carPart.Price >= Convert.ToInt32(model.StartPrice) && carPart.Price <= Convert.ToInt32(model.EndPrice) )&&
                                  (Convert.ToInt32(years.YearNameEn) >= model.FromYearId && Convert.ToInt32(years.YearNameEn) <= model.ToYearId))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithCarPartTypeAndModelAndYear(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes.Where(x => x.ID == model.CarPartTypeId)
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels.Where(x => x.ModelID == model.ModelId)
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  (carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search)) &&
                                  (Convert.ToInt32(years.YearNameEn) >= model.FromYearId && Convert.ToInt32(years.YearNameEn) <= model.ToYearId))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithCarPartTypeAndModelAndPrice(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes.Where(x => x.ID == model.CarPartTypeId)
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels.Where(x => x.ModelID == model.ModelId)
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  (carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search)) &&
                                  carPart.Price >= Convert.ToInt32(model.StartPrice) && carPart.Price <= Convert.ToInt32(model.EndPrice))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithCarPartTypeAndModel(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes.Where(x => x.ID == model.CarPartTypeId)
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers.Where(x => x.MarkerID == model.MakerId)
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithCarPartTypeAndYearAndPrice(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes.Where(x => x.ID == model.CarPartTypeId)
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  (carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search)) &&
                                  (carPart.Price >= Convert.ToInt32(model.StartPrice) && carPart.Price <= Convert.ToInt32(model.EndPrice)) &&
                                  (Convert.ToInt32(years.YearNameEn) >= model.FromYearId && Convert.ToInt32(years.YearNameEn) <= model.ToYearId))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithCarPartTypeAndYear(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes.Where(x => x.ID == model.CarPartTypeId)
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  (carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search)) &&
                                  (Convert.ToInt32(years.YearNameEn) >= model.FromYearId && Convert.ToInt32(years.YearNameEn) <= model.ToYearId))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithCarPartTypeAndPrice(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes.Where(x => x.ID == model.CarPartTypeId)
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  (carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search)) &&
                                  carPart.Price >= Convert.ToInt32(model.StartPrice) && carPart.Price <= Convert.ToInt32(model.EndPrice) )
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithMakerAndModelAndYearAndPrice(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers.Where(x => x.MarkerID == model.MakerId)
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels.Where(x => x.ModelID == model.ModelId)
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  (carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search)) &&
                                  (carPart.Price >= Convert.ToInt32(model.StartPrice) && carPart.Price <= Convert.ToInt32(model.EndPrice)) &&
                                  (Convert.ToInt32(years.YearNameEn) >= model.FromYearId && Convert.ToInt32(years.YearNameEn) <= model.ToYearId))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithMakerAndModelAndYear(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers.Where(x => x.MarkerID == model.MakerId)
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels.Where(x => x.ModelID == model.ModelId)
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  (carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search) )&&
                                  (Convert.ToInt32(years.YearNameEn) >= model.FromYearId && Convert.ToInt32(years.YearNameEn) <= model.ToYearId))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithMakerAndModelAndPrice(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers.Where(x => x.MarkerID == model.MakerId)
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels.Where(x => x.ModelID == model.ModelId)
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  (carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search)) &&
                                  carPart.Price >= Convert.ToInt32(model.StartPrice) && carPart.Price <= Convert.ToInt32(model.EndPrice))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithMakerAndModel(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers.Where(x => x.MarkerID == model.MakerId)
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels.Where(x => x.ModelID == model.ModelId)
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithMakerAndYearAndPrice(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers.Where(x => x.MarkerID == model.MakerId)
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                 ( carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search)) &&
                                  (carPart.Price >= Convert.ToInt32(model.StartPrice) && carPart.Price <= Convert.ToInt32(model.EndPrice)) &&
                                  (Convert.ToInt32(years.YearNameEn) >= model.FromYearId && Convert.ToInt32(years.YearNameEn) <= model.ToYearId))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithMakerAndYear(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers.Where(x => x.MarkerID == model.MakerId)
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  (carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search)) &&
                                  (Convert.ToInt32(years.YearNameEn) >= model.FromYearId && Convert.ToInt32(years.YearNameEn) <= model.ToYearId))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithMakerAndPrice(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers.Where(x => x.MarkerID == model.MakerId)
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  (carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search)) &&
                                  carPart.Price >= Convert.ToInt32(model.StartPrice) && carPart.Price <= Convert.ToInt32(model.EndPrice) )
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithMaker(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers.Where(x => x.MarkerID == model.MakerId)
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarParts(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithModelAndYearAndPrice(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels.Where(x => x.ModelID == model.ModelId)
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search) &&
                                  (carPart.Price >= Convert.ToInt32(model.StartPrice) && carPart.Price <= Convert.ToInt32(model.EndPrice) )&&
                                  (Convert.ToInt32(years.YearNameEn) >= model.FromYearId && Convert.ToInt32(years.YearNameEn) <= model.ToYearId))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithModelAndYear(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels.Where(x => x.ModelID == model.ModelId)
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  (carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search)) &&
                                  (Convert.ToInt32(years.YearNameEn) >= model.FromYearId && Convert.ToInt32(years.YearNameEn) <= model.ToYearId))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithModelAndPrice(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels.Where(x => x.ModelID == model.ModelId)
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  (carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search)) &&
                                  carPart.Price >= Convert.ToInt32(model.StartPrice) && carPart.Price <= Convert.ToInt32(model.EndPrice))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithModel(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers.Where(x => x.MarkerID == model.MakerId)
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithYearAndPrice(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  (carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search)) &&
                                  (carPart.Price >= Convert.ToInt32(model.StartPrice) && carPart.Price <= Convert.ToInt32(model.EndPrice) )&&
                                  (Convert.ToInt32(years.YearNameEn) >= model.FromYearId && Convert.ToInt32(years.YearNameEn) <= model.ToYearId))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithYear(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  (carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search)) &&
                                  (Convert.ToInt32(years.YearNameEn) >= model.FromYearId && Convert.ToInt32(years.YearNameEn) <= model.ToYearId))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartsWithPrice(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  (carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search)) &&
                                  (carPart.Price >= Convert.ToInt32(model.StartPrice) && carPart.Price <= Convert.ToInt32(model.EndPrice) ))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public List<CarPartDetails> SearcCarPartswithsearch(CarPartsSearch model)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (
                                  (carMaker.MarkerNameEn.Contains(model.Search) || carMaker.MarkerNameAr.Contains(model.Search) ||
                                  carModel.TypeNameEn.Contains(model.Search) || carModel.TypeNameAr.Contains(model.Search) ||
                                  carPartType.Name_En.Contains(model.Search) || years.YearNameEn.Contains(model.Search) ||
                                  carPart.Price.ToString().Contains(model.Search)))
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }





        public List<CarPartDetails> GetCarPartDetailsById(int id)
        {
            var carParts = from carPart in ctxWrite.CarParts.Where(x => x.IsDeleted == false).OrderByDescending(x => x.CreatedDate)
                           join carPartType in ctxWrite.CarPartTypes
                           on carPart.TypeId equals carPartType.ID
                           join carMaker in ctxWrite.CarsMarkers
                           on carPart.MakerId equals carMaker.MarkerID
                           join carModel in ctxWrite.CarsModels
                           on carPart.ModelId equals carModel.ModelID
                           join years in ctxWrite.Years
                           on carPart.YearId equals years.YearID
                           where (carPart.Id==id)
                           select new CarPartDetails
                           {
                               CarPartId = carPart.Id,
                               CarPartType = carPartType.Name_En,
                               MarkerNameEn = carMaker.MarkerNameEn,
                               MarkerNameAr = carMaker.MarkerNameAr,
                               ModelNameEn = carModel.TypeNameEn,
                               ModelNameAr = carModel.TypeNameAr,
                               IsActive = carPart.IsActive,
                               Price = carPart.Price.ToString(),
                               Description = carPart.Description,
                               Year = years.YearNameEn
                           };

            return carParts.ToList();
        }
        public void DeleteCarPart(int id)
        {
            CarPart carPart = ctxWrite.CarParts.Where(x => x.Id == id).FirstOrDefault();
            if (carPart != null)
            {
                carPart.IsDeleted=true;
                ctxWrite.SubmitChanges();
            }
        }

        #endregion

    }
}
