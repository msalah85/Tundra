using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;

namespace SystemManager.Business
{
    public class ClearanceCompaniesManager
    {

        #region "Private Declaration"

        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"

        public IList<ClearanceCompanies_GetNamesResult> GetClearanceCompaniesNames()
        {
            return ctxRead.ClearanceCompanies_GetNames().ToList();
        }

        public ClearanceCompanies_GetOneResult GetCompanyDetails(int _Id)
        {
            return ctxRead.ClearanceCompanies_GetOne(_Id).FirstOrDefault();
        }

        public IList<ClearanceCompanies_GetOneResult> GetClearanceCompanies(string param)
        {
            string sqlstr = @"SELECT * FROM [ClearanceCompanies] WHERE System_Delete_Status = 0 " + param;
            return ctxRead.ExecuteQuery<ClearanceCompanies_GetOneResult>(sqlstr).ToList();
        }


        #endregion

        #region "Write Methods"

        public bool SaveCompany(ClearanceCompany item)
        {
            try
            {
                ctxWrite.ClearanceCompanies_AddEdit(item.ClearanceID, item.ClearanceName, item.ClearanceEmail, item.ClearancePhone, item.ClearanceAddress,
                    item.ClearanceDesc, item.Priority, item.Active, item.OpeningBalance, item.System_Who_Add, item.System_LastAction_IP);
                return true;
            }
            catch { return false; }
        }

        public bool DeleteCompany(int Id)
        {
            try
            {
                //ctxWrite.ClearanceCompanies_DeleteOne(Id);
                return true;
            }
            catch { return false; }
        }

        #endregion

    }
}
