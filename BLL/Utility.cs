using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL
{
    public class Utility
    {
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
