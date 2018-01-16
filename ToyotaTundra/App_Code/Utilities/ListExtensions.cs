using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Reflection;
using System.ComponentModel;

/// <summary>
/// Summary description for Class1
/// </summary>
public static class ListExtensions
{
    public static DataTable ToDataTable<T>(this IList<T> list)
    {
        //IList<PropertyInfo> properties = list.GetPropertiesOfObjectInList();
        //DataTable resultTable = CreateTable(properties);

        //foreach (var item in list)
        //{
        //    //if (item != null) // if column has value.
        //    {
        //        var row = CreateRowFromItem<T>(resultTable, item);
        //        resultTable.Rows.Add(row);
        //    }
        //}

        //return resultTable;

        PropertyDescriptorCollection props = TypeDescriptor.GetProperties(typeof(T));
        DataTable table = new DataTable();
        for (int i = 0; i < props.Count; i++)
        {
            PropertyDescriptor prop = props[i];
            table.Columns.Add(prop.Name, (Nullable.GetUnderlyingType(prop.PropertyType)) ?? prop.PropertyType);
        }
        object[] values = new object[props.Count];
        foreach (T item in list)
        {
            for (int i = 0; i < values.Length; i++)
                values[i] = props[i].GetValue(item) ?? DBNull.Value;
            table.Rows.Add(values);
        }

        /////////////////////////////////////////////////////////////Remove nullable fields from dt///////////////////////////////
        /*bool flag = false;
        int counter = 0;
    EXIT:
        for (int i = counter; i < table.Columns.Count; i++)
        {
            for (int x = 0; x < table.Rows.Count; x++)
            {
                if (string.IsNullOrEmpty(table.Rows[x][i].ToString()))
                {
                    flag = true; //means there is an empty value
                }
                else
                {
                    //means if it found non null or empty in rows of a particular column
                    flag = false;
                    counter = i + 1;
                    goto EXIT;
                }
            }

            if (flag == true)
            {
                table.Columns.Remove(table.Columns[i]);
                i--;
            }
        }
        */
        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        return table;

    }
    public static DataTable LINQToDataTable<T>(IEnumerable<T> varlist)
    {
        DataTable dtReturn = new DataTable();

        // column names 
        PropertyInfo[] oProps = null;

        if (varlist == null) return dtReturn;

        foreach (T rec in varlist)
        {
            // Use reflection to get property names, to create table, Only first time, others will follow 
            if (oProps == null)
            {
                oProps = ((Type)rec.GetType()).GetProperties();
                foreach (PropertyInfo pi in oProps)
                {
                    Type colType = pi.PropertyType;

                    if ((colType.IsGenericType) && (colType.GetGenericTypeDefinition()
                    == typeof(Nullable<>)))
                    {
                        colType = colType.GetGenericArguments()[0];
                    }

                    dtReturn.Columns.Add(new DataColumn(pi.Name, colType));
                }
            }

            DataRow dr = dtReturn.NewRow();

            foreach (PropertyInfo pi in oProps)
            {
                dr[pi.Name] = pi.GetValue(rec, null) == null ? DBNull.Value : pi.GetValue
                (rec, null);
            }

            dtReturn.Rows.Add(dr);
        }
        return dtReturn;
    }

    private static DataTable CreateTable(IList<PropertyInfo> properties)
    {
        DataTable resultTable = new DataTable();
        foreach (var property in properties)
        {
            //if (property) // if item has no null
            resultTable.Columns.Add(property.Name, property.PropertyType);
        }
        return resultTable;
    }

    public static IList<PropertyInfo> GetPropertiesOfObjectInList<T>(this IList<T> list)
    {
        return typeof(T).GetProperties().ToList();
    }

    private static DataRow CreateRowFromItem<T>(DataTable resultTable, T item)
    {
        var row = resultTable.NewRow();
        var properties = item.GetType().GetProperties().ToList();
        foreach (var property in properties)
        {
            //if (row[property.Name] != null) // if table has this column
            row[property.Name] = property.GetValue(item, null);
        }
        return row;
    }

}