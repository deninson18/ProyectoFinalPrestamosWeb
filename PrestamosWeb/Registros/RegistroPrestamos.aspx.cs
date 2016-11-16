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
        private void CargarDatos(Prestamos prestamo)
        {
            int id;
            int.TryParse(idPTextBox.Text, out id);
            prestamo.PrestamoId = id;
            prestamo.ClienteId = Convert.ToInt32(clientePDropDownList.SelectedValue);
            prestamo.FechaInicial = fechaInicialPTextBox.Text;
            prestamo.FechaVencimiento = fechaFinalPTextBox.Text;
            prestamo.CantidadCuota = (float)Convert.ToDecimal(cantidadCuotaDropDownList.SelectedValue.ToString());
            prestamo.Interes = (float)Convert.ToDecimal(interesDropDownList.SelectedValue.ToString());
            float idMonto;
            float.TryParse(montoPTextBox.Text, out idMonto);
            prestamo.Monto = idMonto;

            float cuotaId;
            float.TryParse(CuotaPTextBox.Text, out cuotaId);
            prestamo.Cuota = cuotaId;

            float pTotal;
            float.TryParse(PagoTotalPTextBox.Text, out pTotal);
            prestamo.PagoTotal = pTotal;

            int NuSemana;
            int.TryParse(nuSemanaPTextBox.Text, out NuSemana);
            prestamo.NuSemana = NuSemana;
        }


       private void DevolverDatos(Prestamos prestamo)
        {
            idPTextBox.Text = prestamo.PrestamoId.ToString();
            clientePDropDownList.Text = prestamo.ClienteId.ToString();
            montoPTextBox.Text = prestamo.Monto.ToString();
        }
     private void Limpiar()
        {
            idPTextBox.Text = string.Empty;
            clientePDropDownList.SelectedIndex = 0;
            montoPTextBox.Text = string.Empty;
            CuotaPTextBox.Text = string.Empty;
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

        }

        protected void guardarPButton_Click(object sender, EventArgs e)
        {
            Prestamos prestamo = new Prestamos();
            CargarDatos(prestamo);
            if (prestamo.Insertar())
            {
                Response.Write("<script>alert('Guardo Exitosamente')</script>");
               // Limpiar();
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

        protected void montoPTextBox_TextChanged(object sender, EventArgs e)
        {
            Prestamos prestamo = new Prestamos();
            prestamo.Cuota = (float)Convert.ToDecimal(montoPTextBox.Text) * (float)Convert.ToDecimal(interesDropDownList.SelectedValue);
            CuotaPTextBox.Text = prestamo.Cuota.ToString();

            prestamo.PagoTotal = (float)Convert.ToDecimal(CuotaPTextBox.Text) * (int)Convert.ToDecimal(cantidadCuotaDropDownList.SelectedValue);
            PagoTotalPTextBox.Text = prestamo.PagoTotal.ToString();

        }

        protected void clientePDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}