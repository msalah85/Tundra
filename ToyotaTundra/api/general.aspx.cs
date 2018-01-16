using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using SystemManager.DataAccess;
using SystemManager.Business;

public partial class API_general : System.Web.UI.Page
{
    [WebMethod]
    [ScriptMethod(UseHttpGet = false)]
    public static object GetData()
    {
        var rows = new List<Dictionary<string, object>>();
        Dictionary<string, object> row;
        var command = DataAccess.CreateCommand();

        try
        {
            command.CommandText = "Tundra_Cars";
            command.Connection.Open();

            using (new SqlDataAdapter(command))
            {
                var adp = new SqlDataAdapter(command);
                var ds = new DataSet();
                adp.Fill(ds);

                for (int i = 0; i < ds.Tables.Count; i++)
                {
                    DataTable dt = ds.Tables[i];
                    foreach (DataRow dr in dt.Rows)
                    {
                        row = new Dictionary<string, object>();
                        foreach (DataColumn col in dt.Columns)
                        {
                            row.Add(col.ColumnName, dr[col]);
                        }
                        rows.Add(row);
                    }
                }
                
                return rows;
            }

            ////  return rows.ToList();
            //var serializer = new JavaScriptSerializer();
            //var serializedResult = serializer.Serialize(rows);
            //return serializedResult;
        }
        catch (Exception ex)
        {
            return ex.Message;
        }
        finally
        {
            command.Connection.Close();
        }
    }

    [WebMethod]
    [ScriptMethod(UseHttpGet = true)]
    public static object MessageMe()
    {
        HttpContext context = HttpContext.Current;
        var name = context.Request["name"];
        var email = context.Request["email"];
        var phone = context.Request["phone"];
        var message = context.Request["message"];

        string messageBody = string.Format(@"<p dir='rtl'>تم ارسال رسالة من الزائر : {0} <br/><br/> وبريده الإلكترونى: {1}<br/>رقم الهاتف: {2}<br/> الرسالة: {3}<br/><br/> مع تحيات فريق موقع تاندرا إم.كـ</p>",
            name, email, phone, message.Replace(System.Environment.NewLine, "<br />"));

        var checkSent = new SendEmail().SendAnEmail(email, "smart_prog_ms@yahoo.com", "رسالة من موقع تاندرا إم.كـ", messageBody);

        return checkSent;
    }

    [WebMethod]
    [ScriptMethod(UseHttpGet = true)]
    public static bool Subscription()
    {
        HttpContext context = HttpContext.Current;
        var email = context.Request["email"];

        // save email address
        var _user = new tbl_admin_n();

        _user.email = email;
        _user.LanguageID = 1;
        _user.user_level = "B";
        _user.Store_ID = 1;

        var sult = new AdminManager().AddAdministrator(_user);

        if (sult)
            return true;
        else
            return false;
    }
}