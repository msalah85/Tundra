using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;
using System.Collections;

namespace SystemManager.Business
{
    public class AuctionsManager
    {

        #region "Private Declaration"

        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();
        
        #endregion
        
        #region "Read Methods"

        public IList<Auctions_GetNamesResult> GetAuctionsNames()
        {
            return ctxRead.Auctions_GetNames().ToList();
        }

        public Auctions_GetOneResult GetAuctionDetails(int _Id)
        {
            return ctxRead.Auctions_GetOne(_Id).FirstOrDefault();
        }

        public IList<Auctions_GetOneResult> GetAuctions(string  param)
        {
            string sqlstr = @"SELECT  * FROM [Auctions] WHERE System_Delete_Status = 0 " + param;
            return ctxRead.ExecuteQuery<Auctions_GetOneResult>(sqlstr).ToList();
        }
        




        #endregion

        #region "Write Methods"

        public bool SaveAuction(Auction item)
        {
            try
            {
                ctxWrite.Auctions_AddEdit(item.AuctionID, item.AuctionName, item.AuctionEmail, item.AuctionPhone, item.AuctionAddress,
                    item.AuctionDesc, item.Priority, item.Active, item.System_Who_Add, item.System_LastAction_IP);
                return true;
            }
            catch { return false; }
        }

        public bool DeleteAuction(int Id)
        {
            try
            {
                //ctxWrite.Auctions_DeleteOne(Id);
                return true;
            }
            catch { return false; }
        }

        #endregion


    }
}
