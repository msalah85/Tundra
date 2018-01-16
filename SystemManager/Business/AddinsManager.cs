using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemManager.DataAccess;

namespace SystemManager.Business
{
    public class AddinsManager
    {

        #region "Private Declaration"
        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Public Methods"

        public IList<AddinsGetAddinsByLanguageIdResult> GetAllAddinsByLanguageId(string searchText) // result of search text by user.
        {
            string sql = @"SELECT  Addins.*, SiteLanguages.lang_name
	                        FROM   Addins INNER JOIN SiteLanguages ON Addins.LanguageID = SiteLanguages.ID
	                        WHERE  1 = 1 " + searchText + " ORDER BY Addins.ID DESC ";

            return ctxRead.ExecuteQuery<AddinsGetAddinsByLanguageIdResult>(sql).ToList();
        }
        public IList GetAllAddinsByLanguageId(int langID)
        {
            return ctxRead.AddinsGetAddinsByLanguageId(langID).ToList();
        }
        public AddinsGetAddinDetailsByIdResult GetAddinDetailsById(long Id)
        {
            return ctxRead.AddinsGetAddinDetailsById(Id).FirstOrDefault();
        }


        public bool AddNewAddin(Addin addinToAdd)
        {
            try
            {
                ctxWrite.Addins.InsertOnSubmit(addinToAdd);
                ctxWrite.SubmitChanges();

                return true;
            }
            catch { return false; }

        }
        public bool UpdateAddin(Addin addinToUpdate)
        {
            try
            {
                ctxWrite.AddinUpdateAddin(addinToUpdate.ID, addinToUpdate.LanguageID, addinToUpdate.Title, addinToUpdate.ShortDesc, addinToUpdate.Details,
                    addinToUpdate.Type, addinToUpdate.Priority, addinToUpdate.ViewHome, addinToUpdate.Active, addinToUpdate.ThisMonth, addinToUpdate.Timestamp, addinToUpdate.main_picture);

                return true;
            }
            catch { return false; }
        }
        public bool DeleteAddin(int Id)
        {
            try
            {
                ctxWrite.AddinsDeleteAddin(Id);
                return true;
            }
            catch { return false; }
        }

        #endregion

    }
}