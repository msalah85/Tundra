using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using SystemManager.DataAccess;

namespace SystemManager.Business
{
    public class ColorsManager
    {
        #region "Private Declaration"
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"
        public IList<Colors_GetNamesResult> GetColorsNames()
        {
            return ctxRead.Colors_GetNames().ToList();
        }

        #endregion
    }
}
