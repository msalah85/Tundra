using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using SystemManager.DataAccess;

namespace SystemManager.Business
{
    public class LinksManager
    {

        #region "Private Declaration"
        DataWriteDataContext ctxWrite = new DataWriteDataContext();
        DataReadDataContext ctxRead = new DataReadDataContext();

        #endregion

        #region "Read Methods"
        //public IList GetLinksNames()
        //{
        //    return ctxRead.LinksGetLinksNames().ToList();
        //}

        public LinksGetLinkDetailsByIdResult GetLinkDetails(int _id)
        {
            return ctxRead.LinksGetLinkDetailsById(_id).FirstOrDefault();
        }

        public IList GetLinksList(string sqlParm)
        {
            string sql = @"SELECT lang.lang_name, lang.lang_code, link.* 
		                    from SiteLanguages lang join SiteLinks link
		                    on lang.id = link.link_lang_id
	                        WHERE 1 = 1  " + sqlParm + " ORDER BY link.link_order ";
            return ctxRead.ExecuteQuery<LinksGetLinksListByLanguageResult>(sql).ToList();
        }

        public IList GetLinksList(int langId)
        {
            return ctxRead.LinksGetLinksListByLanguage(langId).ToList();
        }
                
        #endregion

        #region "Write Methods"


        public int DeleteLink(int Id)
        {
            try
            {
                return (int)ctxWrite.LinksDeleteLink(Id); //.FirstOrDefault().ID; // count of ID`s.
            }
            catch { return -1; }
        }

        public bool AddNewLink(SiteLink linkToAdd)
        {
            try
            {
                //ctxWrite.LinksAddNew(linkToAdd.ParentID, linkToAdd.link_order, linkToAdd.Active, linkToAdd.link_lang_id,
                //    linkToAdd.link_place, linkToAdd.link_name, linkToAdd.link_details, linkToAdd.link_url);
                ctxWrite.SiteLinks.InsertOnSubmit(linkToAdd);
                ctxWrite.SubmitChanges();

                return true;
            }
            catch { return false; }
        }

        public bool UpdateLinkInfo(SiteLink linkToUpdate)
        {
            try
            {
                ctxWrite.LinksUpdateLink(linkToUpdate.id, linkToUpdate.link_order, linkToUpdate.link_lang_id,
                    linkToUpdate.Active, linkToUpdate.link_place, linkToUpdate.link_name, linkToUpdate.link_details);

                return true;
            }
            catch { return false; }

        }

        #endregion

    }
}
