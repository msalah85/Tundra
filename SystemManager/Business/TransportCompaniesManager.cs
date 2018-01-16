using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;

namespace SystemManager.Business
{
    public class TransportCompaniesManager
    {

        #region "Private Declaration"

        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"

        public IList<TransportCompanies_GetNamesResult> GetTransportCompaniesNames()
        {
            return ctxRead.TransportCompanies_GetNames().ToList();
        }

        public TransportCompanies_GetOneResult GetCompanyDetails(int _Id)
        {
            return ctxRead.TransportCompanies_GetOne(_Id).FirstOrDefault();
        }

        public IList<TransportCompanies_GetOneResult> GetTransportCompanies(string param)
        {
            string sqlstr = @"SELECT * FROM [TransportCompanies] WHERE System_Delete_Status = 0 " + param;
            return ctxRead.ExecuteQuery<TransportCompanies_GetOneResult>(sqlstr).ToList();
        }


        #endregion

        #region "Write Methods"

        public bool SaveCompany(TransportCompany item)
        {
            try
            {
                ctxWrite.TransportCompanies_AddEdit(item.TransportID, item.TransportName, item.TransportEmail, item.TransportPhone, item.TransportAddress,
                    item.TransportDesc, item.Priority, item.Active, item.OpeningBalance, item.System_Who_Add, item.System_LastAction_IP);
                return true;
            }
            catch { return false; }
        }

        public bool DeleteCompany(int Id)
        {
            try
            {
                //ctxWrite.TransportCompanies_DeleteOne(Id);
                return true;
            }
            catch { return false; }
        }

        #endregion

    }
}
