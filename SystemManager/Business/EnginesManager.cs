using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using SystemManager.DataAccess;

namespace SystemManager.Business
{
    public class EnginesManager
    {
        #region "Private Declaration"
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"
        public IList<Engines_GetNamesResult> GetEnginesNames()
        {
            return ctxRead.Engines_GetNames().ToList();
        }

        #endregion
    }
}
