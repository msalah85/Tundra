using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;
using System.Diagnostics;
using System.IO;
using System.Text;
using System.Threading;
using System.Security.Cryptography;
using System.Drawing;
using System.Web.UI;

/// <summary>
/// Summary description for MinutesuaeConcrete
/// </summary>
static public class MinutesuaeConcrete
{
    #region "Routing & SEO"

    public static string ToSeoUrl(object url)
    {
        string temp = "";

        try
        {
            temp = url.ToString();
            // make the url lowercase
            string encodedUrl = (temp ?? "").ToLower();

            // test by m.salah 1-05-2011
            encodedUrl = encodedUrl.Trim().ToLower();
            encodedUrl = Regex.Replace(encodedUrl, @"\s+", "-");
            //encodedUrl = Regex.Replace(encodedUrl, @"[^A-Za-z0-9_-]", "");



            // replace & with and
            encodedUrl = Regex.Replace(encodedUrl, @"\&+", "and");

            // remove characters
            encodedUrl = encodedUrl.Replace("'", "");

            if (Regex.IsMatch(encodedUrl, @"^([1-zA-Z0-1@.\s]{1,150})$")) // if english charachters only
            {
                // remove invalid characters
                encodedUrl = Regex.Replace(encodedUrl, @"[^a-z0-9]", "-"); //
                //encodedUrl = Regex.Replace(encodedUrl, @"[^~`!@#$%\^&\*\(\)\-+=\\\|\}\]\{\['&quot;:?.>,</]+", "-");
                //encodedUrl = Regex.Replace(encodedUrl, @"[\u0600-\u06FF,\u0590-\u05FF]+", "-");
                //encodedUrl = Regex.Replace(encodedUrl, @"[?,:!@#~`+=$%^&\\*()\[\]{}<>]", "", RegexOptions.CultureInvariant);
            }


            // remove duplicates
            encodedUrl = Regex.Replace(encodedUrl, @"-+", "-");

            // trim leading & trailing characters
            encodedUrl = encodedUrl.Trim('-');

            return encodedUrl;
        }
        catch { return temp; }
    }

    #endregion

    #region "Return Date Only"

    public static string GetDateOnly(object obj)
    {
        string _date = "";
        try
        {
            if (obj != null)
            {
                DateTime dt = (DateTime)obj;
                _date = dt.ToString("MM/dd/yyyy");
            }
        }
        catch { }

        return _date;
    }
    public static string GetDateOnly(object obj, string _formate)
    {
        string _date = "";
        try
        {
            if (obj != null)
            {
                DateTime dt = (DateTime)obj;
                _date = dt.ToString(_formate);
            }
        }
        catch { }

        return _date;
    }

    #endregion

    #region "Check Type Numeric"

    /// <summary>
    /// Checks if a type is numeric
    /// </summary>
    /// <param name="type">The type to check</param>
    /// <returns>true if the type is a numeric type</returns>
    private static bool IsNumeric(this Type type)
    {
        Type[] types = new Type[]{
                typeof(int), typeof(short), typeof(long),
                typeof(double), typeof(decimal), typeof(byte)};

        return types.Contains(type);
    }

    #endregion

    #region "Save Thumb"
    public static void SaveThumb(string imgName, string serverPath)
    {
        bool PicturefileOK = false;

        string filename_withoutEx = Path.GetFileNameWithoutExtension(imgName);
        string file_extension = Path.GetExtension(imgName);

        string tempFile = serverPath + imgName;

        //Check if the file is Picture :
        string[] allowedPicExtensions = { ".jpg", ".jpeg", ".gif", ".bmp", ".png", ".JPG", ".JPEG", ".GIF", ".BMP", ".PNG" };
        for (int x = 0; x < allowedPicExtensions.Length; x++)
        {
            if (file_extension == allowedPicExtensions[x])
            {
                PicturefileOK = true;
            }
        }
        if (PicturefileOK == true)
        {
            //try
            //{
            //    if (Directory.Exists(MapPath("~/public/image/" + _dir + "/_thumb/")))
            //    {}
            //    else
            //    {
            //        Directory.CreateDirectory(MapPath("~/public/image/" + _dir + "/_thumb/"));
            //    }
            //}
            //catch {}

            string path = serverPath + "_thumb\\";
            // save thumb image.                
            System.Drawing.Image.GetThumbnailImageAbort myCallback =
                  new System.Drawing.Image.GetThumbnailImageAbort(ThumbnailCallback);

            using (System.Drawing.Image TargetImage = System.Drawing.Image.FromFile(tempFile))
            {
                Size ThumbNailSize = NewImageSize(TargetImage.Height, TargetImage.Width, 217);// create thumb width(default=191 px) and height.
                using (System.Drawing.Image Thumbnail =
                      TargetImage.GetThumbnailImage(ThumbNailSize.Width, ThumbNailSize.Height, myCallback, IntPtr.Zero))
                {
                    Thumbnail.Save(path + imgName);
                    Thumbnail.Dispose();
                }
                TargetImage.Dispose();
            }

        }
    }
    
    private static bool ThumbnailCallback()
    {
        return false;
    }

    private static Size NewImageSize(int OriginalHeight, int OriginalWidth, double FormatSize)
    {
        Size NewSize;
        double tempval;

        if (OriginalHeight > FormatSize && OriginalWidth > FormatSize)
        {
            if (OriginalHeight > OriginalWidth)
                tempval = FormatSize / Convert.ToDouble(OriginalHeight);
            else
                tempval = FormatSize / Convert.ToDouble(OriginalWidth);

            NewSize = new Size(Convert.ToInt32(tempval * OriginalWidth), Convert.ToInt32(tempval * OriginalHeight));
        }
        else
            NewSize = new Size(OriginalWidth, OriginalHeight); return NewSize;
    }
    #endregion

    #region "Cut string"

    public static string CutDetails(object strObj, int count)
    {
        string retStr = "";

        if (strObj != null)
        {
            try
            {
                /// Extract text from html.
                string temp = new HTMLExtracor.Extractor().Extract(strObj.ToString());
                Regex.Replace(temp, "<.*?>", string.Empty);

                // Cut returned text.
                retStr = temp.Length > count ? temp.Substring(0, count) + "..." : temp;

            }
            catch { retStr += "..."; }

            //retStr += "...";
        }

        return retStr;

    }

    #endregion

    #region "Convert to pdf"
    private static void RunExecutable(string executable, string arguments)
    {
        ProcessStartInfo starter = new ProcessStartInfo(executable, arguments);
        starter.CreateNoWindow = true;
        starter.RedirectStandardOutput = true;
        starter.UseShellExecute = false;
        Process process = new Process();
        process.StartInfo = starter;
        process.Start();
        StringBuilder buffer = new StringBuilder();
        using (StreamReader reader = process.StandardOutput)
        {
            string line = reader.ReadLine();
            while (line != null)
            {
                buffer.Append(line);
                buffer.Append(Environment.NewLine);
                line = reader.ReadLine();
                Thread.Sleep(100);
            }
        }

        if (process.ExitCode != 0)
        {
            throw new Exception(string.Format(@"""{0}"" exited with ExitCode {1}. Output: {2}", executable, process.ExitCode, buffer.ToString()));
        }
    }

    /* RunExecutable("c:\...\acrord32.exe", @"/t ""mytest.pdf"" ""My Windows PrinterName""");
     * You can print your PDF by incorporating the above code into your project and using it as follows: */

    #endregion

    #region "Shrink long keywords"
    public static string ShrinkLongKeywords(object keyword)
    {
        string retStr = "";

        try
        {
            string _temp = keyword.ToString();
            int _startIndex = 4;

            if (_temp.Length > 8)
            {
                string _temp2 = _temp.Substring(_startIndex);
                _temp2 = _temp2.Remove((_temp2.Length - _startIndex));

                retStr = _temp.Replace(_temp2, "****");
            }
            else
                retStr = keyword.ToString();

        }
        catch { }

        return retStr;
    }
    
    #endregion
}

/// <summary>
/// Set global methods for RandomValues
/// </summary>
public static class RandomValuess
{
    public static int RandomNumber(int min, int max)
    {
        Random random = new Random();
        return random.Next(min, max);
    }

    /// <summary>
    /// Generates a random string with the given length
    /// </summary>
    /// <param name="size">Size of the string</param>
    /// <param name="lowerCase">If true, generate lowercase string</param>
    /// <returns>Random string</returns>
    public static string RandomString(int size, bool lowerCase)
    {
        StringBuilder builder = new StringBuilder();
        Random random = new Random();

        char ch;
        for (int i = 0; i < size; i++)
        {
            ch = Convert.ToChar(Convert.ToInt32(Math.Floor(26 * random.NextDouble() + 65)));
            builder.Append(ch);
        }
        if (lowerCase)
        { return builder.ToString().ToLower(); }

        return builder.ToString();
    }
    
    public static string GetUniqueKey()
    {
        int maxSize = 8;
        char[] chars = new char[62];
        string a;

        a = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";

        chars = a.ToCharArray();

        int size = maxSize;
        byte[] data = new byte[1];

        RNGCryptoServiceProvider crypto = new RNGCryptoServiceProvider();

        crypto.GetNonZeroBytes(data);
        size = maxSize;
        data = new byte[size];
        crypto.GetNonZeroBytes(data);
        StringBuilder result = new StringBuilder(size);

        foreach (byte b in data)
        {
            result.Append(chars[b % (chars.Length - 1)]);
        }

        return result.ToString();
    }
}

/// <summary>
///  // get the first empty textbox
            //TextBox firstEmpty = this.Controls
            //    .All()
            //    .OfType<TextBox>()
            //    .Where(tb => tb.Text.Trim().Length == 0)
            //    .FirstOrDefault();

            //// and focus it
            //if (firstEmpty != null)
            //    firstEmpty.Focus();
/// </summary>
public static class PageExtensions
{
    public static IEnumerable<Control> All(this ControlCollection controls)
    {
        foreach (Control control in controls)
        {
            foreach (Control grandChild in control.Controls.All())
                yield return grandChild;

            yield return control;
        }
    }
}