using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;
using System.Collections;

namespace SystemManager.Business
{
    public class BuyersManager
    {
        #region "Private Declaration"

        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"

        public IList<Buyers_GetNamesResult> GetBuyersNames(int auctionId)
        {
            return ctxRead.Buyers_GetNames(auctionId).ToList();
        }
        public IList GetBuyersNames()
        {
            return ctxRead.Buyers_GetNames2().ToList();
        }
        public Buyers_GetOneResult GetBuyerDetails(int _Id)
        {
            return ctxRead.Buyers_GetOne(_Id).FirstOrDefault();
        }

        public IList<Buyers_GetOneResult> GetBuyers(string param)
        {
            string sqlstr = @"SELECT     Buyers.*, Auctions.AuctionName
	                            FROM     Buyers INNER JOIN
						                 Auctions ON Buyers.Auction_ID = Auctions.AuctionID
	                            WHERE Buyers.System_Delete_Status = 0 " + param;
            return ctxRead.ExecuteQuery<Buyers_GetOneResult>(sqlstr).ToList();
        }


        #endregion

        #region "Write Methods"

        public bool SaveBuyer(Buyer item)
        {
            try
            {
                ctxWrite.Buyers_AddEdit(item.BuyerID, item.Auction_ID, item.BuyerName, item.BuyerEmail, item.BuyerPhone, item.BuyerAddress,
                    item.BuyerDesc, item.Priority, item.Active, item.OpeningBalance, item.System_Who_Add, item.System_LastAction_IP);
                return true;
            }
            catch { return false; }
        }

        public bool DeleteBuyer(int Id)
        {
            try
            {
                //ctxWrite.Buyers_DeleteOne(Id);
                return true;
            }
            catch { return false; }
        }

        #endregion

    }
}
