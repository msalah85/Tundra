using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;

namespace SystemManager.Business
{
    public class CarPartsTypesManager
    {
        #region "Private Declaration"
        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"
        public IList GetCarPartTypes()
            {
            var carParts = from carPart in ctxWrite.CarPartTypes.Where(x=>x.IsDeleted==false)
                             select new
                             {
                                 carPart.ID,
                                 carPart.Name_En
                             };

            return carParts.ToList();
        }
         public IList GetCarAllPartTypes()
        {
            return ctxWrite.CarPartTypes.Where(x => x.IsDeleted == false).ToList();
        }
        public IList GetAllCarPartTypesWithSearch(string search)
        {
             return ctxWrite.CarPartTypes.Where(x => x.IsDeleted == false && x.Name_En.Contains(search)).ToList();
        }
        public bool DeleteCarPartType(int id)
        {
            CarPartType model= ctxWrite.CarPartTypes.Where(x => x.ID==id).FirstOrDefault();
            try
            {
                if (model != null)
                {
                    model.IsDeleted = true;
                    ctxWrite.SubmitChanges();
                }
                return true;
            }
            catch
            {
                return false;
            }
        }
        public CarPartType GetCarPartTypeById(int id)
        {
            return ctxWrite.CarPartTypes.Where(x => x.ID == id && x.IsDeleted==false).FirstOrDefault();
        }
        public bool InsertNewCarPartType(CarPartType model)
        {
            CarPartType carPartType = ctxWrite.CarPartTypes.Where(x => x.ID == model.ID).FirstOrDefault();
            try
            {
                if (carPartType != null)
                {
                    carPartType.Name_En = model.Name_En;
                    carPartType.Name_Ar = model.Name_Ar;
                }
                else
                {
                    ctxWrite.CarPartTypes.InsertOnSubmit(model);
                }
                ctxWrite.SubmitChanges();
                return true;
            }
            catch(Exception e)
            {
                return false;
            }
        }
        public void UpdateCarPartType(CarPartType model)
        {
            CarPartType carPartType = ctxWrite.CarPartTypes.Where(x => x.ID == model.ID).FirstOrDefault();
            if (carPartType != null)
            {
                carPartType.Name_En = model.Name_En;
                carPartType.Name_Ar = model.Name_Ar;
                ctxWrite.SubmitChanges();
            }
        }
        #endregion
    }
}
