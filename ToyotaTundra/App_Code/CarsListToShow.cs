using System.Collections.Generic;
using System.Linq;
using System.Web;
using SystemManager.Business;
using SystemManager.DataAccess;
using SystemManager.Models;

namespace TundraMkcars.Data
{
    /// <summary>
    /// Summary description for CarsListToShow
    /// </summary>
    public partial class CarsListToShow
    {
        // get cars list based on request paramters(filter cars by car ststus).
        object oParam = HttpContext.Current.Cache["CarsParam"] ?? " AND sold = 0 AND active = 1 ";

        /// <summary>
        /// Get cars list count for list paging navigator.
        /// </summary>
        /// <returns></returns>
        public int GetCarsCount()
        {
            int totalCount = new CarsManager().GetCarsCount(oParam.ToString()).Column1 ?? 0;
            return totalCount;
        }

        /// <summary>
        /// Get custom cars list only page (10 records) showing to user.
        /// </summary>
        /// <param name="maximumRows"></param>
        /// <param name="startRowIndex"></param>
        /// <returns></returns>
        public List<Cars_GetCarsCustomResult> GetCars(int maximumRows, int startRowIndex)
        {
            var itms = new CarsManager().GetCars(startRowIndex, maximumRows, oParam.ToString()).ToList();
            return itms;
        }

        public void DeleteCar(long carID)
        {
            // delete car.
            var itms = new CarsManager().DeleteCar(carID, 1,"");
        }
    }
}