using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;
using System.Data.Linq;
using System.Linq.Expressions;
//using System.Reflection;


namespace SystemManager.Business
{
    public class CarsManager
    {
        #region "Private Declaration"
        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"

        public Cars_GetOneResult GetCarDetails(int _Id)
        {
            return ctxRead.Cars_GetOne(_Id).FirstOrDefault();
        }

        public IList<Cars_GetOneResult> GetCars(string param)
        {
            string sqlstr = @"SELECT * FROM [View_CarInformation] WHERE System_Delete_Status = 0 " + param + " ORDER BY CARID DESC ";
            return ctxRead.ExecuteQuery<Cars_GetOneResult>(sqlstr).ToList();
        }

        public IList<Cars_GetOneResult> GetCars(string fields, string param)
        {
            string sqlstr = @"SELECT " + fields + " FROM [View_CarInformation] WHERE System_Delete_Status = 0 " + param + " ORDER BY CARID DESC ";
            return ctxRead.ExecuteQuery<Cars_GetOneResult>(sqlstr).ToList();
        }


        public IList<Cars_GetCarsCustomResult> GetCars(int startIndex, int maximimCount, string param)
        {
            startIndex += 1; // start getting records from 1 not from 0.
            string sqlstr = string.Format(@"SELECT * FROM (SELECT *,row_number() over(order by CarID DESC) AS [rownum]
	                            FROM [View_CarInformation] Where 1=1 {0}) AS PeopleRecords
	                            WHERE rownum between (({1} - 1) * {2} + 1) AND ({1} * {2})", param, startIndex, maximimCount);
            return ctxRead.ExecuteQuery<Cars_GetCarsCustomResult>(sqlstr).ToList();
        }
        public Cars_GetCarsCustomCountResult GetCarsCount(string param) // count of cars list by filter.
        {
            string sqlstr = string.Format(@"SELECT COUNT(*) FROM (SELECT *,row_number() over(order by CarID DESC) AS [rownum]
	                            FROM [View_CarInformation] Where 1=1 {0}) AS PeopleRecords", param);
            return ctxRead.ExecuteQuery<Cars_GetCarsCustomCountResult>(sqlstr).FirstOrDefault();
        }

        public Cars_getNewCarCodeResult GetCarCode()
        {
            return ctxRead.Cars_getNewCarCode().FirstOrDefault();
        }

        public Cars_GetCarChassisResult GetCarChassisNo(string partChassis)
        {
            return ctxRead.Cars_GetCarChassis(partChassis).FirstOrDefault();
        }
        #endregion

        #region "Write Methods"

        public Cars_AddEditCarResult SaveCar(CarsData item)
        {
            try
            {
                var saved = ctxWrite.Cars_AddEditCar(item.CarID, item.car_code, item.view_home, item.active, item.featured_car,
                        item.Auction_ID, item.Buyer_ID, item.Marker_ID, item.Model_ID, item.WorkingStatus_ID, item.TransferStatus_ID,
                        item.Year_ID, item.PortShipping_ID, item.ShippingCompany_ID, item.Ship_ID, item.State_ID,
                        item.Region_ID, item.Workshop_ID, item.Store_ID, item.chassis_no, item.container_no, item.container_code, item.booking_no, item.poly_fielding, item.lot_no, item.engine_no, item.sold,
                        item.exterior_color, item.interior_color, item.body_style, item.car_transmission, item.mileage, item.car_drive,
                        item.car_engine, item.car_capacity, item.car_options, item.car_remarks, item.Customs_No, item.checkout_date, item.expected_arrive_date, item.dubia_arrive_date, item.sharjah_arrive_date,
                        item.arrive_date, item.Shipping_date, item.WorkshopEntryDate, item.WorkshopExitDate, item.price_currency,
                        item.real_price, item.sale_price, item.cost, item.CurrencyExchange_ID, item.payement_to_who, item.sale_to,
                        item.show_sale, item.sale_date, item.visitors, item.main_picture, item.System_Who_Add, item.System_LastAction_IP, item.purchase_date).FirstOrDefault();

                return saved;
            }
            catch { return null; }
        }

        public bool DeleteCar(long Id, long who_add, string ip)
        {
            try
            {
                ctxWrite.Cars_DeleteCar(Id, who_add, ip);
                return true;
            }
            catch { return false; }
        }

        #endregion
    }
}