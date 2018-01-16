using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;
using System.Collections;

namespace SystemManager.Business
{
    public class StoresManager
    {
        #region "Private Declaration"

        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"

        public IList<Stores_GetNamesResult> GetStoresNames()
        {
            return ctxRead.Stores_GetNames().ToList();
        }

        public Stores_GetOneResult GetCompanyDetails(int _Id)
        {
            return ctxRead.Stores_GetOne(_Id).FirstOrDefault();
        }

        public IList<Stores_GetOneResult> GetStores(string param)
        {
            string sqlstr = @"SELECT * FROM [Stores] WHERE System_Delete_Status = 0 " + param;
            return ctxRead.ExecuteQuery<Stores_GetOneResult>(sqlstr).ToList();
        }


        #endregion

        #region "Write Methods"

        public bool SaveCompany(Store item)
        {
            try
            {
                ctxWrite.Stores_AddEdit(item.StoreID, item.StoreName, item.StoreEmail, item.StorePhone, item.StoreAddress,
                    item.StoreDesc, item.Priority, item.Active, item.System_Who_Add, item.System_LastAction_IP);
                return true;
            }
            catch { return false; }
        }

        public bool DeleteCompany(int Id)
        {
            try
            {
                //ctxWrite.Stores_DeleteOne(Id);
                return true;
            }
            catch { return false; }
        }

        #endregion
    }
}
