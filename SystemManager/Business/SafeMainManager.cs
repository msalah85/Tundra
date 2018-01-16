using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using SystemManager.DataAccess;

namespace SystemManager.Business
{
    public class SafeMainManager
    {

        #region "PRivate Declaration"

        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"

        public IList GetAllMainSafe(string sqlParam)
        {
            string sqlStr = @"SELECT * FROM View_SafeValuesList  " + sqlParam + " ORDER BY Ket_MainSafeDebitCredit.SafeID DESC";

            return ctxRead.ExecuteQuery<Safe_GetDebitAllResult>(sqlStr).ToList();
        }

        public IList GetAllMainSafe()
        {
            return ctxRead.Safe_GetDebitAll().ToList();
        }

        //public IList GetMainSafeNamesList()
        //{
        //    return ctxRead.MainSafe_GetMainSafeNames().ToList();
        //}


        public Safe_GetDebitDetailsResult GetMainSafeDebitDetails(int Id)
        {
            return ctxRead.Safe_GetDebitDetails(Id).FirstOrDefault();
        }

        #endregion

        #region "Write Methods"

        public bool SaveMainSafeDebitInfo(MainSafeDebitCredit debit)
        {
            try
            {
                ctxWrite.Safe_SaveDebitData(debit.SafeID, debit.Employee_ID, debit.Store_ID, debit.SafeDebitValue, debit.SafeDebitDate, debit.System_Who_Add, debit.System_LastAction_IP);
                return true;
            }
            catch { return false; }

        }

        public bool DeleteMainSafeDebit(int MainSafeDebitID, long who_delete, string action_ip)
        {
            try
            {
                ctxWrite.Safe_DeleteDebitData(MainSafeDebitID, who_delete, action_ip);
                return true;
            }
            catch { return false; }

        }

        #endregion

        #region "Reports Methods"

        public Safe_GetSafeReportResult GetMainSafeReport(long storeID)
        {
            return ctxRead.Safe_GetSafeReport(storeID).FirstOrDefault();
        }

        #endregion

    }
}
