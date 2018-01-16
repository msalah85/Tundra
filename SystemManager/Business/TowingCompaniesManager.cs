using System;
using System.Linq;
using System.Text;
using System.Collections;
using SystemManager.DataAccess;
using System.Collections.Generic;

namespace SystemManager.Business
{
    public class TowingCompaniesManager
    {

        #region "Private Declaration"

        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"

        public IList<TowingCompanies_GetNamesResult> GetTowingCompaniesNames()
        {
            return ctxRead.TowingCompanies_GetNames().ToList();
        }

        public TowingCompanies_GetOneResult GetCompanyDetails(int _Id)
        {
            return ctxRead.TowingCompanies_GetOne(_Id).FirstOrDefault();
        }

        public IList<TowingCompanies_GetOneResult> GetTowingCompanies(string param)
        {
            string sqlstr = @"SELECT * FROM [TowingCompanies] WHERE System_Delete_Status = 0 " + param;
            return ctxRead.ExecuteQuery<TowingCompanies_GetOneResult>(sqlstr).ToList();
        }


        #endregion

        #region "Write Methods"

        public bool SaveCompany(TowingCompany item)
        {
            try
            {
                ctxWrite.TowingCompanies_AddEdit(item.TowingCompanyID, item.TowingCompanyName, item.TowingCompanyEmail, item.TowingCompanyPhone, item.TowingCompanyAddress,
                    item.TowingCompanyDesc, item.Priority, item.Active, item.OpeningBalance, item.System_Who_Add, item.System_LastAction_IP);
                return true;
            }
            catch { return false; }
        }

        public bool DeleteCompany(int Id)
        {
            try
            {
                //ctxWrite.TowingCompanies_DeleteOne(Id);
                return true;
            }
            catch { return false; }
        }

        #endregion

    }
}
