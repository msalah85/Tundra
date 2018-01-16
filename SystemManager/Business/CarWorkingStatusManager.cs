using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using SystemManager.DataAccess;

namespace SystemManager.Business
{
    public class CarWorkingStatusManager
    {
        #region "Private Declaration"
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"
        public IList<CarWorkingStatus_GetNamesResult> GetCarWorkingStstusNames()
        {
            return ctxRead.CarWorkingStatus_GetNames().ToList();
        }

        #endregion
    }
}
