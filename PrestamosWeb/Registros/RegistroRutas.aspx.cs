using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace PrestamosWeb.Registros
{
    public partial class RegistroRutas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarDropDList();
            }

        }
        private void CargarDatos(Rutas ruta)
        {
            int id = Utility.ConvierteEntero(idRutaTextBox.Text);
            ruta.RutaId = id;
            ruta.NombreRuta = nombreRuTextBox.Text;
            ruta.CobradorId = Convert.ToInt32(cobradorRuDropDownList.SelectedValue);
        }
        private void DevolverDatos(Rutas ruta)
        {
            idRutaTextBox.Text = ruta.RutaId.ToString();
            nombreRuTextBox.Text = ruta.NombreRuta;
            cobradorRuDropDownList.Text = ruta.CobradorId.ToString();

        }
        private void Limpiar()
        {
            idRutaTextBox.Text = string.Empty;
            nombreRuTextBox.Text = string.Empty;
            cobradorRuDropDownList.SelectedIndex = 0;
        }

        private void CargarDropDList()
        {
            Cobradores cobrador = new Cobradores();
            cobradorRuDropDownList.DataSource = cobrador.Listado("*", "1=1", "");
            cobradorRuDropDownList.DataTextField = "Nombres";
            cobradorRuDropDownList.DataValueField = "CobradorId";
            cobradorRuDropDownList.DataBind();
        }

        protected void guardarRuButton_Click(object sender, EventArgs e)
        {
            Rutas ruta = new Rutas();
            CargarDatos(ruta);
            if (idRutaTextBox.Text.Length <= 0)
            {
                if (ruta.Insertar())
                {
                    Utility.ShowToastr(this.Page, "Guardo Correctamente", "Message", "SUCCESS");
                    Limpiar();
                }
                else
                {
                    Utility.ShowToastr(this.Page, "Error al Guardar", "Message", "Error");
                }
            }
            CargarDatos(ruta);
            if (ruta.Modificar())
            {
                Utility.ShowToastr(this, "Edito Correctamente", "Message", "SUCCESS");
                Limpiar();
            }
            else
            {
                Utility.ShowToastr(this, "Error Al Editar", "Message", "Warning");
            }
        }

        protected void nuevoRuButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void eliminarRuButton_Click(object sender, EventArgs e)
        {
            Rutas ruta = new Rutas();
            int id = Utility.ConvierteEntero(idRutaTextBox.Text);
            if (id > 0)
            {
                CargarDatos(ruta);
                if (ruta.Eliminar())
                {

                    Utility.ShowToastr(this.Page, "Elimino Correctamente", "Message", "SUCCESS");
                    Limpiar();
                }
                else
                {
                    Utility.ShowToastr(this.Page, "Error al Eliminar", "Message", "Error");
                }

            }
        }

        protected void buscarRuButton_Click(object sender, EventArgs e)
        {
            Rutas ruta = new Rutas();
            int id = Utility.ConvierteEntero(idRutaTextBox.Text);

            if (id > 0)
            {
                if (ruta.Buscar(id))
                {
                    DevolverDatos(ruta);
                }
                else
                {
                    Utility.ShowToastr(this.Page, "NO EXISTE RUTA ID !", "Message", "Error");
                }

            }
        }
    }
}