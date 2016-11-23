using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;


namespace BLL
{
    public static class Utility
    {
        public static void ShowToastr(this Page page, string message, string title, string type = "info")
        {
            page.ClientScript.RegisterStartupScript(page.GetType(), "toastr_message",
                  String.Format("toastr.{0}('{1}', '{2}');", type.ToLower(), message, title), addScriptTags: true);
        }

        public static int ConvierteEntero(string e)
        {
            int id = 0;
            int.TryParse(e, out id);
            return id;
        }
        public static float ConvierteFloat(string f)
        {
            float id = 0;
            float.TryParse(f, out id);
            return id;
        }
    }
}
