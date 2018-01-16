using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using SystemManager.DataAccess;

namespace SystemManager.Business
{
    public class ExpenseTypesManager
    {

        #region "Private Declaration"

        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"

        public IList<ExpenseTypes_GetExpenseTypeDetailsResult> GetAllExpenseTypes(string sqlParam)
        {
            string sqlStr = @" SELECT     ExpenseTypes.*, Currencies.CurrencyName, Currencies.CurrencySymbol
	                            FROM         ExpenseTypes INNER JOIN
						        Currencies ON ExpenseTypes.CurrencyUsed = Currencies.CurrencyID 
                                Where ExpenseTypes.System_Delete_Status = 0  " + sqlParam;
            return ctxRead.ExecuteQuery<ExpenseTypes_GetExpenseTypeDetailsResult>(sqlStr).ToList();
        }

        public IList<ExpenseTypes_GetExpenseTypesNamesResult> GetExpenseTypesNamesList(string currency)
        {
            return ctxRead.ExpenseTypes_GetExpenseTypesNames(currency).ToList();
        }

        public ExpenseTypes_GetExpenseTypeDetailsResult GetExpenseTypeDetails(int Id)
        {
            return ctxRead.ExpenseTypes_GetExpenseTypeDetails(Id).FirstOrDefault();
        }

        #endregion

        #region "Write Methods"

        public bool SaveExpenseTypeInfo(ExpenseType jType)
        {
            try
            {
                ctxWrite.ExpenseTypes_SaveExpenseType(jType.ExpenseTypeID, jType.ExpenseTypeName, jType.ExpenseTypeDetails,
                    jType.CurrencyUsed, jType.GroupName, jType.System_Who_Add, jType.System_LastAction_IP);

                return true;
            }
            catch { return false; }

        }

        public bool DeleteExpenseType(int ExpenseTypeID, long who_delete, string action_ip)
        {
            try
            {
                //ctxWrite.ExpenseTypes_DeleteExpenseType(ExpenseTypeID, who_delete, action_ip);
                return true;
            }
            catch { return false; }

        }

        #endregion

    }
}
