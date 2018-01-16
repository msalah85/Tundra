using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using SystemManager.DataAccess;

namespace SystemManager.Business
{
    public class TransferingStatusManager
    {
        #region "Private Declaration"
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"
        public IList<CarTransferStatus_GetNamesResult> GetLanguagesNames()
        {
            return ctxRead.CarTransferStatus_GetNames().ToList();
        }

        #endregion
    }
}
