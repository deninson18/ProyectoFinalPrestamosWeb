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
           
            if (!IsPostBack)
            {
                Rutas ruta = new Rutas();
                rutasGridView.DataSource = ruta.Listado("*", "1=1", "");
                rutasGridView.DataBind();
            }
        }

        protected void consultaRutaButton_Click(object sender, EventArgs e)
        {
            Rutas ruta = new Rutas();
            string Filtro = "";
           
                if (rutaFTextBox.Text.Trim().Length == 0)
                {
                    Filtro = "1=1";
                }
                else
                {
                Filtro = consultaRuDropDownList.SelectedValue + " like '%" + rutaFTextBox.Text + "%'";
                }
           
            rutasGridView.DataSource = ruta.Listado(" * ", Filtro, "");
            rutasGridView.DataBind();
        }
    }
}