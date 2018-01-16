using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;

namespace SystemManager.Business
{
    public class MarkerManager
    {

        #region "Private Declaration"

        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"

        public IList<CarsMaker_GetNamesResult> GetCarsMarkerNames()
        {
            return ctxRead.CarsMaker_GetNames().ToList();
        }

        public CarsMarker_GetOneResult GetCarsMarkerDetails(int _Id)
        {
            return ctxRead.CarsMarker_GetOne(_Id).FirstOrDefault();
        }

        public IList<CarsMarker_GetOneResult> GetCarsMarker(string param)
        {
            string sqlstr = @"SELECT  * FROM [CarsMarker] WHERE System_Delete_Status = 0 " + param;
            return ctxRead.ExecuteQuery<CarsMarker_GetOneResult>(sqlstr).ToList();
        }


        #endregion

        #region "Write Methods"

        public bool SaveCarsMarker(CarsMarker item)
        {
            try
            {
                ctxWrite.CarsMarker_AddEdit(item.MarkerID, item.MarkerNameEn, item.MarkerNameAr, item.Priority, item.Active,
                    item.System_Who_Add, item.System_LastAction_IP);
                return true;
            }
            catch { return false; }
        }

        public bool DeleteCarsMarker(int Id, string ip)
        {
            try
            {
                //ctxWrite.CarsMarker_DeleteOne(Id, ip);
                return true;
            }
            catch { return false; }
        }

        #endregion

    }
}
