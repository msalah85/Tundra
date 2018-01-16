using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;
using System.Collections;

namespace SystemManager.Business
{
    public class ModelManager
    {

        #region "Private Declaration"

        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"

        public IList<Models_GetNamesResult> GetModelsNames(int makerID)
        {
            return ctxRead.Models_GetNames(makerID).ToList();
        }

        public Models_GetOneResult GetModelDetails(int _Id)
        {
            return ctxRead.Models_GetOne(_Id).FirstOrDefault();
        }

        public IList<Models_GetOneResult> GetModels(string param)
        {
            string sqlstr = @"SELECT     CarsModel.*, CarsMarker.MarkerNameEn
	                            FROM     CarsModel INNER JOIN
						        CarsMarker ON CarsModel.Marker_ID = CarsMarker.MarkerID
	                            WHERE CarsModel.System_Delete_Status = 0 " + param;
            return ctxRead.ExecuteQuery<Models_GetOneResult>(sqlstr).ToList();
        }


        #endregion

        #region "Write Methods"

        public bool SaveModel(CarsModel item)
        {
            try
            {
                ctxWrite.Models_AddEdit(item.ModelID, item.Marker_ID, item.TypeNameEn, item.TypeNameAr,
                    item.Priority, item.Active, item.System_Who_Add, item.System_LastAction_IP);
                return true;
            }
            catch { return false; }
        }

        public bool DeleteModel(int Id)
        {
            try
            {
                //ctxWrite.Models_DeleteOne(Id);
                return true;
            }
            catch { return false; }
        }

        #endregion

    }
}