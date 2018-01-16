using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;

namespace SystemManager.Business
{
    public class SiteCompaniesManager
    {

        #region "Private Declaration"

        //DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"
        public SiteCompanies_GetOneResult GetCompanyInformation()
        {
            return ctxRead.SiteCompanies_GetOne().FirstOrDefault();
        }



        #endregion

    }
}
