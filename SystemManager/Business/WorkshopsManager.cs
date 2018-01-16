using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;
using System.Collections;

namespace SystemManager.Business
{
    public class WorkshopsManager
    {
        #region "Private Declaration"

        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"

        public IList<Workshops_GetNamesResult> GetWorkshopsNames()
        {
            return ctxRead.Workshops_GetNames().ToList();
        }

        public Workshops_GetOneResult GetWorkshopDetails(int _Id)
        {
            return ctxRead.Workshops_GetOne(_Id).FirstOrDefault();
        }

        public IList<Workshops_GetOneResult> GetWorkshops(string param)
        {
            string sqlstr = @"SELECT  * FROM [Workshops] WHERE System_Delete_Status = 0 " + param;
            return ctxRead.ExecuteQuery<Workshops_GetOneResult>(sqlstr).ToList();
        }





        #endregion

        #region "Write Methods"

        public bool SaveWorkshop(Workshop item)
        {
            try
            {
                ctxWrite.Workshops_AddEdit(item.WorkshopID, item.WorkshopName, item.WorkshopEmail, item.WorkshopPhone, item.WorkshopAddress,
                    item.WorkshopDesc, item.Priority, item.OpeningBalance, item.Active, item.System_Who_Add, item.System_LastAction_IP);
                return true;
            }
            catch { return false; }
        }

        public bool DeleteWorkshop(int Id)
        {
            try
            {
                //ctxWrite.Workshops_DeleteOne(Id);
                return true;
            }
            catch { return false; }
        }

        #endregion


    }
}
