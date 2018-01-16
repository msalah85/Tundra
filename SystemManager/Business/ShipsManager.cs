using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;
using System.Collections;

namespace SystemManager.Business
{
    public class ShipsManager
    {

        #region "Private Declaration"

        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion


        #region "Read Methods"

        public IList<Ships_GetNamesResult> GetShipsNames()
        {
            return ctxRead.Ships_GetNames().ToList();
        }

        public Ships_GetOneResult GetShipDetails(int _Id)
        {
            return ctxRead.Ships_GetOne(_Id).FirstOrDefault();
        }

        public IList<Ships_GetOneResult> GetShips(string param)
        {
            string sqlstr = @"SELECT  * FROM [Ships] WHERE System_Delete_Status = 0 " + param;
            return ctxRead.ExecuteQuery<Ships_GetOneResult>(sqlstr).ToList();
        }


        #endregion

        #region "Write Methods"

        public bool SaveShip(Ship item)
        {
            try
            {
                ctxWrite.Ships_AddEdit(item.ShipID, item.ShipEn, item.ShipAr, item.ShipDescEn, item.ShipDescAr,
                     item.Priority, item.Active, item.System_Who_Add, item.System_LastAction_IP);
                return true;
            }
            catch { return false; }
        }

        public bool DeleteShip(int Id)
        {
            try
            {
                //ctxWrite.Ships_DeleteOne(Id);
                return true;
            }
            catch { return false; }
        }

        #endregion

    }
}
