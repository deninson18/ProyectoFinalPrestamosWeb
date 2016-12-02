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
            cobrador.CobradorId = Utility.ConvierteEntero(idCoTextBox.Text);        
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
            if (idCoTextBox.Text.Length <= 0)
            {
                if (cobrador.Insertar())
                {
                    Utility.ShowToastr(this.Page, "Guardo Correctamente", "Message", "SUCCESS");
                    Limpiar();
                }
                else
                {
                    Utility.ShowToastr(this.Page, "Error al Guardar", "Message", "Error");
                }

            }
            if (cobrador.Modificar())
            {
                Utility.ShowToastr(this, "Edito Correctamente", "Message", "SUCCESS");
                Limpiar();
            }
            else
            {
                Utility.ShowToastr(this, "Error Al Editar", "Message", "Warning");
            }
        }

        protected void nuevoCoButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void eliminarCoButton_Click(object sender, EventArgs e)
        {
            Cobradores cobrador = new Cobradores();
            int id = Utility.ConvierteEntero(idCoTextBox.Text);         

            if (id > 0)
            {
                CargarDatos(cobrador);
                if (cobrador.Eliminar())
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

        protected void buscarCoButton_Click(object sender, EventArgs e)
        {
            Cobradores cobrador = new Cobradores();
           
            int id = Utility.ConvierteEntero(idCoTextBox.Text);

            if (id > 0)
            {
                if (cobrador.Buscar(id))
                {
                    DevolverDatos(cobrador);
                }
                else
                {
                    Utility.ShowToastr(this.Page, "NO EXISTE COBRADOR ID !", "Message", "Error");
                }

            }
        }
    }
}