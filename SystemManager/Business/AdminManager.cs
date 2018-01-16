
///=================================================================
/// Copyright (c) 2010 Minutes Web Designers Co.
/// Developer: Mohamed Salah Abdullah.
/// Last Update: 23-3-2010.
///=================================================================

using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;

namespace SystemManager.Business
{
    public class AdminManager
    {
        #region "Private Declaration"
        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Admin Users Methods"
        public IList GetAllAdminUserNames()
        {

            var adminUSers = from user in ctxWrite.tbl_admin_ns
                             select new
                             {
                                 user.id,
                                 user.name
                             };

            return adminUSers.ToList();
        }


        /// <summary>
        /// Get all administration users.
        /// </summary>
        /// <returns></returns>
        public IList<AdminUsersGetUserByEmailResult> GetAllAdminUsers(string param)
        {
            string sql = string.Format(@"SELECT  a.*, 
                          Stores.StoreName
	                      FROM   tbl_admin_n a INNER JOIN
						  Stores ON a.Store_ID = Stores.StoreID Where 1=1 {0}", param);
            return ctxRead.ExecuteQuery<AdminUsersGetUserByEmailResult>(sql).ToList();

        }

        /// <summary>
        /// Get administrator by id.
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        public tbl_admin_n GetAdmin(long Id)
        {
            return (tbl_admin_n)(from admin in ctxWrite.tbl_admin_ns
                                 where admin.id == Id
                                 select admin).FirstOrDefault();

        }

        /// <summary>
        /// Check admin before save it,
        /// return (true) if he exist and
        /// (false) otherwise.
        /// </summary>
        /// <param name="adminToCheck"></param>
        /// <returns></returns>
        public bool CheckAdmin(tbl_admin_n adminToCheck)
        {

            var result = (from admn in ctxWrite.tbl_admin_ns
                          where admn.id == adminToCheck.id &&
                          admn.name == adminToCheck.name &&
                          admn.address == adminToCheck.address &&
                          admn.city == adminToCheck.city &&
                          admn.Store_ID == adminToCheck.Store_ID &&
                          admn.email == adminToCheck.email &&
                          admn.fax == adminToCheck.fax &&
                          admn.mobile == adminToCheck.mobile
                          select admn).Count();

            if (result <= 0)
                return false;
            else
                return true;

        }

        /// <summary>
        /// Administrators login.
        /// </summary>
        /// <param name="uName"></param>
        /// <param name="Password"></param>
        /// <returns></returns>
        public AdminUsersLoginResult AdminsLogin(string uName, string Password)
        {
            return ctxRead.AdminUsersLogin(uName, Password).FirstOrDefault();
        }

        /// <summary>
        /// Add new administrator.
        /// </summary>
        /// <param name="adminToAdd"></param>
        public bool AddAdministrator(tbl_admin_n adminToAdd)
        {
            try
            {
                ctxWrite.tbl_admin_ns.InsertOnSubmit(adminToAdd);
                ctxWrite.SubmitChanges();

                return true;
            }
            catch { return false; }

        }

        /// <summary>
        /// Update adminstrator info.
        /// </summary>
        /// <param name="adminToUpdate"></param>
        public bool UpdateAdministrator(tbl_admin_n adminToUpdate)
        {
            try
            {
                ctxWrite.AdminUpdateUsers(adminToUpdate.id, adminToUpdate.LanguageID, adminToUpdate.user_name, adminToUpdate.user_password,
                    adminToUpdate.user_type, adminToUpdate.user_level, adminToUpdate.Store_ID, adminToUpdate.name, adminToUpdate.city, adminToUpdate.address,
                    adminToUpdate.mobile, adminToUpdate.phone, adminToUpdate.fax, adminToUpdate.email);

                return true;
            }
            catch { return false; }
        }

        /// <summary>
        /// Delete administrator.
        /// </summary>
        /// <param name="Id"></param>
        public int DeleteAdministrator(long _Id)
        {
            try
            {
                // return 0 or more.
                return (int)ctxWrite.AdminDeleteUser(_Id).FirstOrDefault().Column1;
            }
            catch { return -1; } // an error occure.
        }

        public AdminUsersGetUserByEmailResult GetAdminByEmail(string emailStr)
        {
            return ctxRead.AdminUsersGetUserByEmail(emailStr).FirstOrDefault();
        }

        #endregion
    }
}
