using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;
using System.Collections;

namespace SystemManager.Business
{
    public class ShippingCompaniesManager
    {
        #region "Private Declaration"

        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"

        public IList<ShipCompanies_GetNamesResult> GetShipCompaniesNames()
        {
            return ctxRead.ShipCompanies_GetNames().ToList();
        }

        public ShipCompanies_GetOneResult GetCompanyDetails(int _Id)
        {
            return ctxRead.ShipCompanies_GetOne(_Id).FirstOrDefault();
        }

        public IList<ShipCompanies_GetOneResult> GetShipCompanies(string param)
        {
            string sqlstr = @"SELECT * FROM [ShippingCompanies] WHERE System_Delete_Status = 0 " + param;
            return ctxRead.ExecuteQuery<ShipCompanies_GetOneResult>(sqlstr).ToList();
        }


        #endregion

        #region "Write Methods"

        public bool SaveCompany(ShippingCompany item)
        {
            try
            {
                ctxWrite.ShipCompanies_AddEdit(item.ShipCompanyID, item.ShipCompanyName, item.ShipCompanyEmail, item.ShipCompanyPhone, item.ShipCompanyAddress,
                    item.ShipCompanyDesc, item.Priority, item.Active, item.OpeningBalance, item.System_Who_Add, item.System_LastAction_IP);
                return true;
            }
            catch { return false; }
        }

        public bool DeleteCompany(int Id)
        {
            try
            {
                //ctxWrite.ShipCompanies_DeleteOne(Id);
                return true;
            }
            catch { return false; }
        }

        #endregion

    }
}
