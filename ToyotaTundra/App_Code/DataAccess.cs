using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Configuration;

/// <summary>
/// Summary description for DataAccess
/// </summary>
public static class DataAccess
{
    public static SqlCommand CreateCommand()
    {
        string connnectionString = ConfigurationManager.ConnectionStrings["SystemManager.Properties.Settings.TundraMkConnectionString"].ConnectionString;
        SqlConnection connection = new SqlConnection(connnectionString);

        SqlCommand command = connection.CreateCommand();
        command.CommandType = CommandType.StoredProcedure;
        return command;

    }
}