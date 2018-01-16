using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using SystemManager.DataAccess;

namespace SystemManager.Business
{
    public class StylesManager
    {
        #region "Private Declaration"
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"
        public IList<CarStyles_GetNamesResult> GetStylesNames()
        {
            return ctxRead.CarStyles_GetNames().ToList();
        }

        #endregion
    }
}
