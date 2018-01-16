using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using SystemManager.DataAccess;

namespace SystemManager.Business
{
    public class CapacitiesManager
    {
        #region "Private Declaration"
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"
        public IList<Capacities_GetNamesResult> GetCapacitiesNames()
        {
            return ctxRead.Capacities_GetNames().ToList();
        }

        #endregion

    }
}
