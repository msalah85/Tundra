using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;

namespace SystemManager.Business
{
    public class SaleInvoicesManager
    {
        #region "Private Declaration"
        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"
        public IList<SaleInvoices_GetOneResult> GetClientSaleInvoices(string _param)
        {
            string sqlStr = @"SELECT * FROM View_CarSalesInvoices Where 1 = 1 " + _param + " ORDER BY InvoiceID DESC ";
            return ctxRead.ExecuteQuery<SaleInvoices_GetOneResult>(sqlStr).ToList();
        }

        public SaleInvoicesPayments_StattisticsForClientResult GetClientSalesPaymentsShortStatistics(long clientID)
        {
            //// Select payments for this client that active.
            //// Select client invoices.
            //decimal invResult = (decimal)(from invicesList in GetClientSaleInvoices(" AND Active = 1 AND Client_ID = " + clientID)
            //                              select invicesList.SalePrice).Sum();
            //decimal paymResult = (decimal)(from paymentsList in new ClientPaymentsManager().GetClientPayments(" AND Active = 1 AND Client_ID = " + clientID)
            //                               select paymentsList.PaymentValue).Sum();

            return ctxRead.SaleInvoicesPayments_StattisticsForClient(clientID).FirstOrDefault();
        }


        public SaleInvoices_GetOneResult GetCarSaleInvoiceDetails(long _invoiceID)
        {
            return ctxRead.SaleInvoices_GetOne(_invoiceID).FirstOrDefault();
        }

        #endregion

        #region "Write Methods"
        public SaleInvoices_AddEditResult SaleInvoicesAddEdit(CarInvoice invoice, string secreteCode)
        {
            try
            {
                return ctxWrite.SaleInvoices_AddEdit(invoice.InvoiceID, invoice.SiteCompany_ID, invoice.Car_ID,
                    invoice.Client_ID, invoice.Currency_ID, invoice.SalePrice, invoice.FirstAmount, invoice.InvoiceDate,
                    invoice.Notes, secreteCode, invoice.System_Who_Add, invoice.System_LastAction_IP, invoice.Store_ID).FirstOrDefault();
            }
            catch { return null; } // Error occures.
        }


        public SaleInvoices_ToggleInvoiceResult ActiveDeActiveInvoice(long _ID, bool _actStatus)
        {
            return ctxWrite.SaleInvoices_ToggleInvoice(_ID, _actStatus).FirstOrDefault();
        }

        #endregion

    }
}
