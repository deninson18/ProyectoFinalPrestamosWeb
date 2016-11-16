using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace PrestamosWeb.Registros
{
    public partial class RegistroClientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarDropDList();
            }

        }
        private void CargarDatos(Clientes cliente)
        {
            int id;
            int.TryParse(idClienteTextBox.Text, out id);
            cliente.ClienteId = id;
            cliente.RutaId = Convert.ToInt32(rutaPDropDownList.SelectedValue);
            cliente.Nombres = nombreCliTextBox.Text;
            cliente.Apellidos = apellidoCliTextBox.Text;
            cliente.Apodos = apodoCliTextBox.Text;
            cliente.Direccion = direccionCliTextBox.Text;
            cliente.Referencia = referenciaCliTextBox.Text;
            cliente.Cedula = cedulaCliTextBox.Text;
            cliente.Telefono = telefonoCliTextBox.Text;
            cliente.Celular = celularCliTextBox.Text;
            
            if (mRadioButton.Checked)
            {
                cliente.Sexo= 1;
            }
            else
            {
                cliente.Sexo = 0;
            }
          
        }

        private void DevolverDatos(Clientes cliente)
        {
            rutaPDropDownList.Text = cliente.RutaId.ToString();
            nombreCliTextBox.Text = cliente.Nombres;
            apellidoCliTextBox.Text = cliente.Apellidos;
            apodoCliTextBox.Text = cliente.Apodos;
            direccionCliTextBox.Text = cliente.Direccion;
            referenciaCliTextBox.Text = cliente.Referencia;
            cedulaCliTextBox.Text = cliente.Cedula;
            telefonoCliTextBox.Text = cliente.Telefono;
            celularCliTextBox.Text = cliente.Celular;
            if (cliente.Sexo==1)
            {
                mRadioButton.Checked = true;
            }
            else
            {
                fRadioButton.Checked = true;
            }
        }
        private void Limpiar()
        {
            rutaPDropDownList.SelectedIndex = 0;
            idClienteTextBox.Text = string.Empty;
            nombreCliTextBox.Text = string.Empty;
            apellidoCliTextBox.Text = string.Empty;
            apodoCliTextBox.Text = string.Empty;
            direccionCliTextBox.Text = string.Empty;
            referenciaCliTextBox.Text = string.Empty;
            cedulaCliTextBox.Text = string.Empty;
            telefonoCliTextBox.Text = string.Empty;
            celularCliTextBox.Text = string.Empty;
        }

        private void CargarDropDList()
        {
            Rutas ruta = new Rutas();
            rutaPDropDownList.DataSource = ruta.Listado("*", "1=1", "");
            rutaPDropDownList.DataTextField = "NombreRuta";
            rutaPDropDownList.DataValueField = "RutaId";
            rutaPDropDownList.DataBind();
        }

        protected void guardarCliButton_Click(object sender, EventArgs e)
        {
            Clientes cliente = new Clientes();
           CargarDatos(cliente);

            if (cliente.Insertar())
            {
                Response.Write("<script>alert('Guardo Exitosamente')</script>");
                Limpiar();
            }
            else
            {
                Response.Write("<script>alert('Error al Guardar')</script>");
            }


        }

        protected void nuevoCliButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void eliminarCliButton_Click(object sender, EventArgs e)
        {
            Clientes cliente = new Clientes();
            int id = 0;
            int.TryParse(idClienteTextBox.Text, out id);
            cliente.ClienteId= id;

            if (id > 0)
            {
                CargarDatos(cliente);
                if (cliente.Eliminar())
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

        protected void buscarCliButton_Click(object sender, EventArgs e)
        {
            Clientes cliente = new Clientes();
            int id = 0;
            int.TryParse(idClienteTextBox.Text, out id);

            if (id > 0)
            {
                if (cliente.Buscar(id))
                {
                    DevolverDatos(cliente);
                }
                else
                {
                    Response.Write("<script>alert('No existe Cliente ID')</script>");
                }

            }
        }
    }
}
