using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using SystemManager.DataAccess;

namespace SystemManager.Business
{
    public class TransmissionsManager
    {
        #region "Private Declaration"
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"
        public IList<Transmissions_GetNamesResult> GetTransmissionsNames()
        {
            return ctxRead.Transmissions_GetNames().ToList();
        }

        #endregion
    }
}
