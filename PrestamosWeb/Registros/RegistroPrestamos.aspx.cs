using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace PrestamosWeb.Registros
{
    public partial class RegistroPrestamos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarDropDList();
            }
          
        }
        public void CargarDatos(Prestamos prestamo)
        {
            int id;
            int.TryParse(idPTextBox.Text, out id);
            prestamo.PrestamoId = id;
            prestamo.ClienteId = Convert.ToInt32(clientePDropDownList.SelectedValue);
            prestamo.RutaId = Convert.ToInt32(rutaPDropDownList.SelectedValue);
            prestamo.FechaInicial = fechaInicialPTextBox.Text;
            prestamo.FechaVencimiento = fechaFinalPTextBox.Text;
            float idMonto;
            float.TryParse(montoPTextBox.Text, out idMonto);
            prestamo.Monto = idMonto;
        }
        public void DevolverDatos(Prestamos prestamo)
        {
            idPTextBox.Text = prestamo.PrestamoId.ToString();
            clientePDropDownList.Text = prestamo.ClienteId.ToString();
            rutaPDropDownList.Text = prestamo.RutaId.ToString();
            montoPTextBox.Text = prestamo.Monto.ToString();
        }
        public void Limpiar()
        {
            idPTextBox.Text = string.Empty;
            clientePDropDownList.SelectedIndex = 0;
            rutaPDropDownList.SelectedIndex = 0;
            montoPTextBox.Text = string.Empty;
            valorCuotaPTextBox.Text = string.Empty;
            fechaInicialPTextBox.Text = string.Empty;
            fechaFinalPTextBox.Text = string.Empty;
            nuSemanaPTextBox.Text = string.Empty;
            PagoTotalPTextBox.Text = string.Empty;
        }
        private void CargarDropDList()
        {
            Clientes cliente = new Clientes();
            Rutas ruta = new Rutas();
            clientePDropDownList.DataSource = cliente.Listado("*", "1=1", "");
            clientePDropDownList.DataTextField = "Nombres";
            clientePDropDownList.DataValueField = "ClienteId";
            clientePDropDownList.DataBind();

            rutaPDropDownList.DataSource = ruta.Listado("*", "1=1", "");
            rutaPDropDownList.DataTextField = "NombreRuta";
            rutaPDropDownList.DataValueField = "RutaId";
            rutaPDropDownList.DataBind();
        }

        protected void guardarPButton_Click(object sender, EventArgs e)
        {
            Prestamos prestamo = new Prestamos();
            CargarDatos(prestamo);

            if (prestamo.Insertar())
            {
                Response.Write("<script>alert('Guardo Exitosamente')</script>");
            }
            else
            {
                Response.Write("<script>alert('Error al Guardar')</script>");
            }
        }

        protected void nuevoPButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }
    }
}