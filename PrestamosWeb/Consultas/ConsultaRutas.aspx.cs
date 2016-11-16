using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace PrestamosWeb.Consultas
{
    public partial class ConsultaRutas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Rutas ruta = new Rutas();
            if (!IsPostBack)
            {
                rutasGridView.DataSource = ruta.Listado("*", "1=1", "");
                rutasGridView.DataBind();
            }
        }

        protected void consultaRutaButton_Click(object sender, EventArgs e)
        {
            Rutas ruta = new Rutas();
            string Filtro = "";
            if (consultaRuDropDownList.SelectedIndex == 0)
            {
                if (rutaFTextBox.Text.Trim().Length == 0)
                {
                    Filtro = "1=1";
                }
                else
                {
                    int id;
                    int.TryParse(rutaFTextBox.Text, out id);
                    Filtro = "RutaId" + id.ToString();
                }
            }
            else if (consultaRuDropDownList.SelectedIndex == 1)
            {
                if (rutaFTextBox.Text.Trim().Length == 0)
                {
                    Filtro = "1=1";
                }
                else
                {
                    Filtro = "NombreRuta like '%" + rutaFTextBox.Text + "%'";
                }
            }

            rutasGridView.DataSource = ruta.Listado(" * ", Filtro, "");
            rutasGridView.DataBind();
        }
    }
}