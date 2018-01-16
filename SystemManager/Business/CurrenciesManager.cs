using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using SystemManager.DataAccess;

namespace SystemManager.Business
{
    public class CurrenciesManager
    {

        #region "Private Declaration"
        DataReadDataContext ctxRead = new DataReadDataContext();
        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        #endregion

        #region "Read Methods"
        public IList<Currencies_GetNamesResult> GetCurrenciesNames()
        {
            return ctxRead.Currencies_GetNames().ToList();
        }

        public IList<Currencies_GetCurrencyResult> GetAllCurrencies(string param)
        {
            string sqlStr = @"SELECT * FROM  [Currencies] WHERE System_Delete_Status = 0 " + param;
            return ctxRead.ExecuteQuery<Currencies_GetCurrencyResult>(sqlStr).ToList();
        }

        public Currencies_GetCurrencyResult GetCurrencyDetails(int _ID)
        {
            return ctxRead.Currencies_GetCurrency(_ID).FirstOrDefault();
        }

        #endregion

        #region "Write Methods"
        public bool SaveCurrencyInfo(Currency _curr)
        {
            try
            {
                //ctxWrite.Currencies_SaveCurrency(_curr.CurrencyID, _curr.CurrencyName, _curr.CurrencySymbol, _curr.ExchangeRate,
                //    _curr.System_Who_Add, _curr.System_LastAction_IP);
                return true;
            }
            catch { return false; }
        }

        public bool DeleteCurrency(int _Id)
        {
            try
            {
                //ctxWrite.Currencies_DeleteCurrency(_Id);
                return true;
            }
            catch { return false; }
        }

        #endregion

    }
}
