using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using SystemManager.DataAccess;

namespace SystemManager.Business
{
    public class LanguagesManager
    {

        #region "Private Declaration"
        //DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();
               
        #endregion

        #region "Read Methods"
        public IList GetLanguagesNames()
        {
            return ctxRead.LanguagesNamesList().ToList();
        }
        
        #endregion

        #region "Write Methods"



        #endregion

    }
}
