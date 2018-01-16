using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;

namespace SystemManager.Business
{
    public class CarStatusManager
    {
        #region "Private Declaration"
        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"
        
        public IList<Status_GetNamesResult> GetStstusList()
        {
            return ctxRead.Status_GetNames().ToList();
        }
        
        #endregion

    }
}
