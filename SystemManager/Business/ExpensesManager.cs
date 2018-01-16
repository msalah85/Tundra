using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;
using System.Data.Linq;

namespace SystemManager.Business
{
    public class ExpensesManager
    {
        #region "Private Declaration"
        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"

        public Expenses_GetDetailsResult GetExpenseDetails(long _Id)
        {
            return ctxRead.Expenses_GetDetails(_Id).FirstOrDefault();
        }

        public IList<Expenses_GetSelectListResult> GetExpenses(string param)
        {
            string sqlStr = @"SELECT * FROM View_ExpensesList WHERE 1 = 1 " + param;
            return ctxRead.ExecuteQuery<Expenses_GetSelectListResult>(sqlStr).ToList();
        }

        public IList<Expenses_GetSelectListResult> GetExpenses(long carId)
        {
            return ctxRead.Expenses_GetSelectList(carId).ToList();
        }

        //public IList<Expenses_GetSelectListResult> GetExpenses(long compId, string compType)
        //{
        //    return ctxRead.Expenses_GetSelectList(compId, compType).ToList();
        //}

        #endregion

        #region "Write Methods"

        public bool SaveExpense(CarExpense item)
        {
            try
            {
                ctxWrite.Expenses_AddEdit(item.ExpenseID, item.Car_ID, item.Currency_ID, item.ExpenseType_ID, item.CompanyType,
                    item.Company_ID, item.ExchangeCompany_ID, item.InvoiceCode, item.DueDate, item.PaymentDate, item.Notes, item.ExpenseValue, item.PaymentValue,
                    item.InOutType, item.Store_ID, item.WhoAdd, item.AddIP, item.WhoEdit, item.EditIP);
                return true;
            }
            catch { return false; }
        }

        public bool DeleteExpense(long Id, long whoDel, string _Ip)
        {
            try
            {
                ctxWrite.Expenses_Delete(Id, whoDel, _Ip);
                return true;
            }
            catch { return false; }
        }

        #endregion

    }
}
