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
            int id;
            int.TryParse(idRutaTextBox.Text, out id);
            ruta.RutaId = id;
            ruta.NombreRuta = nombreRuTextBox.Text;
            ruta.CobradorId =Convert.ToInt32(cobradorRuDropDownList.SelectedValue);
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

            if (ruta.Insertar())
            {
                Response.Write("<script>alert('Guardo Exitosamente')</script>");
            }
            else
            {
                Response.Write("<script>alert('Error al Guardar')</script>");
            }
        }

        protected void nuevoRuButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void eliminarRuButton_Click(object sender, EventArgs e)
        {
            Rutas ruta = new Rutas();
            int id = 0;
            int.TryParse(idRutaTextBox.Text, out id);
            ruta.RutaId = id;

            if (id > 0)
            {
                CargarDatos(ruta);
                if (ruta.Eliminar())
                {
                    Limpiar();
                    Response.Write("<script>alert('Elimino Exitosamente')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Error al eliminar')</script>");
                }

            }
        }

        protected void buscarRuButton_Click(object sender, EventArgs e)
        {
            Rutas ruta = new Rutas();
            int id = 0;
            int.TryParse(idRutaTextBox.Text, out id);

            if (id > 0)
            {
                if (ruta.Buscar(id))
                {
                    DevolverDatos(ruta);
                }
                else
                {
                    Response.Write("<script>alert('No existe Cobrador ID')</script>");
                }

            }
        }
    }
}