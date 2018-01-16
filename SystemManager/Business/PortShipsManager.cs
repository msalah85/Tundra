using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;
using System.Collections;

namespace SystemManager.Business
{
    public class PortShipsManager
    {

        #region "Private Declaration"

        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion


        #region "Read Methods"

        public IList<PortShips_GetNamesResult> GetPortShipsNames()
        {
            return ctxRead.PortShips_GetNames().ToList();
        }

        public PortShips_GetOneResult GetPortShipDetails(int _Id)
        {
            return ctxRead.PortShips_GetOne(_Id).FirstOrDefault();
        }

        public IList<PortShips_GetOneResult> GetPortShips(string param)
        {
            string sqlstr = @"SELECT  * FROM [PortShipping] WHERE System_Delete_Status = 0 " + param;
            return ctxRead.ExecuteQuery<PortShips_GetOneResult>(sqlstr).ToList();
        }


        #endregion

        #region "Write Methods"

        public bool SavePortShip(PortShipping item)
        {
            try
            {
                ctxWrite.PortShips_AddEdit(item.PortShipID, item.PortShipEn, item.PortShipAr, item.PortShipDescEn, item.PortShipDescAr,
                     item.Priority, item.Active, item.System_Who_Add, item.System_LastAction_IP);
                return true;
            }
            catch { return false; }
        }

        public bool DeletePortShip(int Id)
        {
            try
            {
                //ctxWrite.PortShips_DeleteOne(Id);
                return true;
            }
            catch { return false; }
        }

        #endregion

    }
}
