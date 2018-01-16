<%@ Application Language="C#" %>
<%@ Import Namespace="Tundra2" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        RouteConfig.RegisterRoutes(RouteTable.Routes);
        BundleConfig.RegisterBundles(BundleTable.Bundles);
    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown
        CookiesManager.ResetSession();
        CookiesManager.ResetCookie();
    }
    
    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started
        HttpCookie _userInfo = Request.Cookies["UXIT.UserInfo"]; // get saved coockie.
        if (_userInfo != null)
        {
            CookiesManager.UserLogin(_userInfo);
        }
    }

</script>
