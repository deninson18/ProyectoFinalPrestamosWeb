using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace PrestamosWeb.Registros
{
    public partial class RegistroCobradores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void CargarDatos(Cobradores cobrador)
        {
            int id;
            int.TryParse(idCoTextBox.Text, out id);
            cobrador.CobradorId = id;
            cobrador.Nombres = nombreCoTextBox.Text;
            cobrador.Apellidos = apellidoCoTextBox.Text;
            cobrador.Direccion = direccionCoTextBox.Text;
            cobrador.Telefono = telefonoCoTextBox.Text;
            cobrador.Celular = celularCoTextBox.Text;
            cobrador.Cedula = cedulaCoTextBox.Text;

        }
        private void DevolverDatos(Cobradores cobrador)
        {
            idCoTextBox.Text = cobrador.CobradorId.ToString();
            nombreCoTextBox.Text = cobrador.Nombres;
            apellidoCoTextBox.Text = cobrador.Apellidos;
            direccionCoTextBox.Text = cobrador.Direccion;
            telefonoCoTextBox.Text = cobrador.Telefono;
            celularCoTextBox.Text = cobrador.Celular;
            cedulaCoTextBox.Text = cobrador.Cedula;

        }
        private void Limpiar()
        {
            idCoTextBox.Text = string.Empty;
            nombreCoTextBox.Text = string.Empty;
            apellidoCoTextBox.Text = string.Empty;
            direccionCoTextBox.Text = string.Empty;
            telefonoCoTextBox.Text = string.Empty;
            celularCoTextBox.Text = string.Empty;
            cedulaCoTextBox.Text = string.Empty;
        }
        protected void guardarCoButton_Click(object sender, EventArgs e)
        {
            Cobradores cobrador = new Cobradores();
            CargarDatos(cobrador);

            if (cobrador.Insertar())
            {
                Response.Write("<script>alert('Guardo Exitosamente')</script>");
            }
            else
            {
                Response.Write("<script>alert('Error al Guardar')</script>");
            }

        }

        protected void nuevoCoButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void eliminarCoButton_Click(object sender, EventArgs e)
        {
            Cobradores cobrador = new Cobradores();
            int id = 0;
            int.TryParse(idCoTextBox.Text, out id);
            cobrador.CobradorId = id;

            if (id > 0)
            {
                CargarDatos(cobrador);
                if (cobrador.Eliminar())
                {
                    Limpiar();

                    Response.Write("<script>alert('Elimino Correctamente')</script>");

                }
                else
                {
                    Response.Write("<script>alert('Error al Eliminar')</script>");
                }

            }
        }

        protected void buscarCoButton_Click(object sender, EventArgs e)
        {
            Cobradores cobrador = new Cobradores();
            int id = 0;
            int.TryParse(idCoTextBox.Text, out id);

            if (id > 0)
            {
                if (cobrador.Buscar(id))
                {
                    DevolverDatos(cobrador);
                }
                else
                {
                    Response.Write("<script>alert('No existe Cobrador ID')</script>");
                }

            }
        }
    }
}