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
        public IList GetCarPartsTypes()
            {
            var carParts = from carPart in ctxWrite.CarPartTypes
                             select new
                             {
                                 carPart.ID,
                                 carPart.Name
                             };

            return carParts.ToList();
        }

        #endregion
    }
}
