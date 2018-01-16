
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;
using System.Collections;

namespace SystemManager.Business
{
    public class ClientPaymentsManager
    {

        #region "Private Declaration"

        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"

        public ClientPayments_GetOneResult GetClientPaymentDetails(int _Id)
        {
            return ctxRead.ClientPayments_GetOne(_Id).FirstOrDefault();
        }

        public IList<ClientPayments_GetOneResult> GetClientPayments(string param)
        {
            string sqlstr = @"SELECT * FROM [View_ClientPayments] WHERE 1=1 " + param + " ORDER BY PaymentID DESC ";
            return ctxRead.ExecuteQuery<ClientPayments_GetOneResult>(sqlstr).ToList();
        }

        #endregion

        #region "Write Methods"

        public bool SaveClientPayment(ClientPayment item)
        {
            try
            {
                ctxWrite.ClientPayments_AddEdit(item.PaymentID, item.Invoice_ID, item.Client_ID, item.ExchangeCompany_ID, item.Currency_ID, item.PaymentValue, item.PaymentDate, item.ReceiverName, item.Notes, item.Store_ID, item.Other, item.System_Who_Add, item.System_LastAction_IP);
                return true;
            }
            catch { return false; }
        }

        public bool ActiveDeActivePayment(long _ID, bool _actStatus)
        {
            try
            {
                ctxWrite.ClientPayments_ToggleOne(_ID, _actStatus);
                return true;
            }
            catch { return false; }
        }

        #endregion

    }
}
