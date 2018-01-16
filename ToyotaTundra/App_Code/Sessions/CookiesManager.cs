using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Reflection;

/// <summary>
/// Summary description for CookiesManager
/// </summary>
public static class CookiesManager
{
    public static void UserLogin(HttpCookie _userInfo)
    {
        ClientSession.Current.loginName = HttpContext.Current.Server.UrlDecode(_userInfo["UXIT.Name"]);
        ClientSession.Current.loginId = Convert.ToInt32(_userInfo["UXIT.ID"]);
    }

    public static void SaveCoockie()
    {
        //Create a Cookie Object
        HttpCookie _userInfoCookies = new HttpCookie("UXIT.UserInfo");

        //Setting values inside it
        _userInfoCookies["UXIT.ID"] = ClientSession.Current.loginId.ToString();
        _userInfoCookies["UXIT.Name"] = HttpContext.Current.Server.UrlEncode(ClientSession.Current.loginName);

        //Adding Expire Time of cookies
        _userInfoCookies.Expires = DateTime.Now.AddDays(1);

        //Adding cookies to current web response
        HttpContext.Current.Response.Cookies.Add(_userInfoCookies);
    }

    // Delete cookie
    public static void ResetCookie()
    {
        HttpCookie _userInfoCookies = new HttpCookie("UXIT.UserInfo");
        if (_userInfoCookies != null && HttpContext.Current != null)
        {
            //Adding Expire Time of cookies
            _userInfoCookies.Expires = DateTime.Now.AddDays(-7);
            HttpContext.Current.Response.Cookies.Add(_userInfoCookies);
        }
    }

    // Delete session
    public static void ResetSession()
    {
        if (HttpContext.Current != null && HttpContext.Current.Session != null) // HttpContext.Current != null && 
            HttpContext.Current.Session.Abandon();
    }
}