using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;
using System.Collections;

namespace SystemManager.Business
{
    public class StatesManager
    {
        #region "Private Declaration"

        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion


        #region "Read Methods"

        public IList<States_GetNamesResult> GetStatesNames()
        {
            return ctxRead.States_GetNames().ToList();
        }

        public States_GetOneResult GetStateDetails(int _Id)
        {
            return ctxRead.States_GetOne(_Id).FirstOrDefault();
        }

        public IList<States_GetOneResult> GetStates(string param)
        {
            string sqlstr = @"SELECT  * FROM [States] WHERE System_Delete_Status = 0 " + param;
            return ctxRead.ExecuteQuery<States_GetOneResult>(sqlstr).ToList();
        }


        #endregion

        #region "Write Methods"

        public bool SaveState(State item)
        {
            try
            {
                ctxWrite.States_AddEdit(item.StateID, item.StateEn, item.StateAr, item.StateDescEn, item.StateDescAr,
                     item.Priority, item.Active, item.System_Who_Add, item.System_LastAction_IP);
                return true;
            }
            catch { return false; }
        }

        public bool DeleteState(int Id)
        {
            try
            {
                //ctxWrite.States_DeleteOne(Id);
                return true;
            }
            catch { return false; }
        }

        #endregion

    }
}
