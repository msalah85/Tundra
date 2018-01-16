using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;

namespace SystemManager.Business
{
    public class ExchangeCompaniesManager
    {

        #region "Private Declaration"

        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"

        public IList<ExchangeCompanies_GetNamesResult> GetExchangeCompaniesNames()
        {
            return ctxRead.ExchangeCompanies_GetNames().ToList();
        }

        public ExchangeCompanies_GetOneResult GetCompanyDetails(int _Id)
        {
            return ctxRead.ExchangeCompanies_GetOne(_Id).FirstOrDefault();
        }

        public IList<ExchangeCompanies_GetOneResult> GetExchangeCompanies(string param)
        {
            string sqlstr = @"SELECT * FROM [ExchangeCompanies] WHERE System_Delete_Status = 0 " + param;
            return ctxRead.ExecuteQuery<ExchangeCompanies_GetOneResult>(sqlstr).ToList();
        }


        #endregion

        #region "Write Methods"

        public bool SaveCompany(ExchangeCompany item)
        {
            try
            {
                ctxWrite.ExchangeCompanies_AddEdit(item.ExchangeCompanyID, item.ExchangeCompanyName, item.ExchangeCompanyEmail, item.ExchangeCompanyPhone, item.ExchangeCompanyAddress,
                    item.ExchangeCompanyDesc, item.Priority, item.Active, item.System_Who_Add, item.System_LastAction_IP);
                return true;
            }
            catch { return false; }
        }

        public bool DeleteCompany(int Id)
        {
            try
            {
                //ctxWrite.ExchangeCompanies_DeleteOne(Id);
                return true;
            }
            catch { return false; }
        }

        #endregion
    }
}
