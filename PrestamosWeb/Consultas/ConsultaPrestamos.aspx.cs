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
            if (!IsPostBack)
            {
                Prestamos prestamo = new Prestamos();
                PrestamosGridView.DataSource = prestamo.Listado("*", "1=1", "");
                PrestamosGridView.DataBind();
            }
        }

        protected void imprimirPrestamoButton_Click(object sender, EventArgs e)
        {
            Prestamos prestamo = new Prestamos();
            Response.Redirect("~/Reportes/ReportePrestamos.aspx");
            Response.Clear();
        }

        protected void consultaPrestamoButton_Click(object sender, EventArgs e)
        {
            Prestamos prestamo = new Prestamos();
            string Filtro = "";

            if (PrestamoFTextBox.Text.Trim().Length == 0)
            {
                Filtro = "1=1";
            }
            else
            {
                Filtro = ConsultaPrestamosDropDownList.SelectedValue + " like '%" + PrestamoFTextBox.Text + "%'";
            }

            PrestamosGridView.DataSource = prestamo.Listado("*", Filtro, "");
            PrestamosGridView.DataBind();
        }
    }
}