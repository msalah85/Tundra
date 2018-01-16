using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;
using System.Collections;

namespace SystemManager.Business
{
    public class RegionsManager
    {
        #region "Private Declaration"

        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"

        public IList<Regions_GetNamesResult> GetRegionsNames(int stateID)
        {
            return ctxRead.Regions_GetNames(stateID).ToList();
        }

        public Regions_GetOneResult GetRegionDetails(long _Id)
        {
            return ctxRead.Regions_GetOne(_Id).FirstOrDefault();
        }

        public IList<Regions_GetOneResult> GetRegions(string param)
        {
            string sqlstr = @"SELECT     Regions.*, Auctions.AuctionName
	                          FROM       Regions INNER JOIN
						      Auctions ON Regions.Auction_ID = Auctions.AuctionID
	                          WHERE Regions.System_Delete_Status = 0 " + param;
            return ctxRead.ExecuteQuery<Regions_GetOneResult>(sqlstr).ToList();
        }


        #endregion

        #region "Write Methods"

        public bool SaveRegion(Region item)
        {
            try
            {
                ctxWrite.Regions_AddEdit(item.RegionID, item.Auction_ID, item.RegionEn, item.RegionAr, item.CostforRegion, item.RegionDescEn,
                    item.RegionDescAr, item.Priority, item.Active, item.System_Who_Add, item.System_LastAction_IP);
                return true;
            }
            catch { return false; }
        }

        public bool DeleteRegion(int Id)
        {
            try
            {
                //ctxWrite.Regions_DeleteOne(Id);
                return true;
            }
            catch { return false; }
        }

        #endregion

    }
}
