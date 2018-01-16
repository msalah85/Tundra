using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;

namespace SystemManager.Business
{
    public class ClientSubPaymentsManager
    {

        #region "Private Declaration"

        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"

        public ClientSubPayments_GetOneResult GetClientInvoicesPaymentDetails(long _Id)
        {
            return ctxRead.ClientSubPayments_GetOne(_Id).FirstOrDefault();
        }

        public IList<ClientSubPayments_GetOneResult> GetClientSubPayments(string param)
        {
            string sqlstr = @"SELECT * FROM [View_InvoicesSubPayments] WHERE 1=1 " + param;
            return ctxRead.ExecuteQuery<ClientSubPayments_GetOneResult>(sqlstr).ToList();
        }

        public IList<ClientPayments_InvoicesToResetResult> GetClientInvoicesNames(long clientIDD)
        {
            return ctxRead.ClientPayments_InvoicesToReset(clientIDD).ToList();
        }

        public IList<ClientPayments_ReceiptsToResetResult> GetClientReceiptsNames(long clientIDD)
        {
            return ctxRead.ClientPayments_ReceiptsToReset(clientIDD).ToList();
        }

        #endregion

        #region "Write Methods"

        public ClientSubPayments_AddEditResult SaveClientInvoicesPayment(ClientInvoicesPayment item)
        {
            return ctxWrite.ClientSubPayments_AddEdit(item.ClientInvoicesPaymentsID, item.ClientPayments_ID, item.CarInvoice_ID, item.ClientInvoicesPaymentsValue, 
                item.RegisterDate, item.Notes, item.System_Who_Add, item.System_LastAction_IP).FirstOrDefault();
        }

        public bool ActiveDeActiveSubPayment(long _ID, bool _actStatus)
        {
            try
            {
                ctxWrite.ClientSubPayments_ToggleOne(_ID, _actStatus);
                return true;
            }
            catch { return false; }
        }

        #endregion
    }
}
