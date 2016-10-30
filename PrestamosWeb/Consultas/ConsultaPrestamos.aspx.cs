using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace PrestamosWeb.Consultas
{
    public partial class ConsultaPrestamos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imprimirPrestamoButton_Click(object sender, EventArgs e)
        {
            Prestamos prestamo = new Prestamos();
            Response.Redirect("~/Reportes/ReportePrestamos.aspx");
            Response.Clear();
        }
    }
}