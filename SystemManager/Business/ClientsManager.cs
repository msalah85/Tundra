using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;
using System.Collections;

namespace SystemManager.Business
{
    public class ClientsManager
    {

        #region "Private Declaration"

        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"

        public IList<Clients_GetNamesResult> GetClientsNames()
        {
            return ctxRead.Clients_GetNames().ToList();
        }

        public Clients_GetOneResult GetClientDetails(int _Id)
        {
            return ctxRead.Clients_GetOne(_Id).FirstOrDefault();
        }

        public IList<Clients_GetOneResult> GetClients(string param)
        {
            string sqlstr = @"SELECT * FROM [Clients] WHERE System_Delete_Status = 0 " + param + " Order By ClientID DESC ";
            return ctxRead.ExecuteQuery<Clients_GetOneResult>(sqlstr).ToList();
        }


        #endregion

        #region "Write Methods"

        public bool SaveCompany(Client item)
        {
            try
            {
                ctxWrite.Clients_AddEdit(item.ClientID, item.ClientName, item.ClientEmail, item.ClientUsername, item.ClientPassword, item.ClientPhone, item.ClientFax, item.ClientAddress,
                    item.ClientDesc, item.Priority, item.Active, item.SMSActive, item.OpeningBalance, item.System_Who_Add, item.System_LastAction_IP);
                return true;
            }
            catch { return false; }
        }

        public bool DeleteCompany(int Id)
        {
            try
            {
                //ctxWrite.Clients_DeleteOne(Id);
                return true;
            }
            catch { return false; }
        }

        #endregion
    }
}
