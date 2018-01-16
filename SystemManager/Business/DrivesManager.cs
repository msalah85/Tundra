using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using SystemManager.DataAccess;

namespace SystemManager.Business
{
    public class DrivesManager
    {
        #region "Private Declaration"
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"
        public IList<Drives_GetNamesResult> GetDrivesNames()
        {
            return ctxRead.Drives_GetNames().ToList();
        }

        #endregion
    }
}
