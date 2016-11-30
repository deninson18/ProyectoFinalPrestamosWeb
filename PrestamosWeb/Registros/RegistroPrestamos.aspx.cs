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
            int id = Utility.ConvierteEntero(idPTextBox.Text);
            prestamo.PrestamoId = id;
            prestamo.ClienteId = Convert.ToInt32(clientePDropDownList.SelectedValue);
            prestamo.FechaInicial = fechaInicialPTextBox.Text;
            prestamo.FechaVencimiento = fechaFinalPTextBox.Text;
            prestamo.CantidadCuota = (float)Convert.ToDecimal(cantidadCuotaDropDownList.SelectedValue.ToString());
            prestamo.Interes = (float)Convert.ToDecimal(interesDropDownList.SelectedValue.ToString());
         
            float idMonto = Utility.ConvierteFloat(montoPTextBox.Text);
            prestamo.Monto = idMonto;
          
            float cuotaId = Utility.ConvierteFloat(CuotaPTextBox.Text);
            prestamo.Cuota = cuotaId;
       
            float pTotal = Utility.ConvierteFloat(PagoTotalPTextBox.Text);
            prestamo.PagoTotal = pTotal;
        
            int NuSemana = Utility.ConvierteEntero(nuSemanaPTextBox.Text);
            prestamo.NuSemana = NuSemana;
        }


       private void DevolverDatos(Prestamos prestamo)
        {
            idPTextBox.Text = prestamo.PrestamoId.ToString();
            clientePDropDownList.Text = prestamo.ClienteId.ToString();
            fechaInicialPTextBox.Text = prestamo.FechaInicial.ToString();
            fechaFinalPTextBox.Text = prestamo.FechaVencimiento.ToString();
            montoPTextBox.Text = prestamo.Monto.ToString();
            CuotaPTextBox.Text = prestamo.Cuota.ToString();
            nuSemanaPTextBox.Text = prestamo.NuSemana.ToString();
            cantidadCuotaDropDownList.SelectedValue = prestamo.CantidadCuota.ToString();
            interesDropDownList.Text = prestamo.Interes.ToString();
            PagoTotalPTextBox.Text = prestamo.PagoTotal.ToString();

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
                Utility.ShowToastr(this.Page, "Guardo Correctamente", "Message", "SUCCESS");
                Limpiar();
            }
            else
            {
                Utility.ShowToastr(this.Page, "Error al Guardar", "Message", "Error");
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

        protected void eliminarPButton_Click(object sender, EventArgs e)
        {
            Prestamos prestamo = new Prestamos();
            int id = Utility.ConvierteEntero(idPTextBox.Text);

            if (id > 0)
            {
                CargarDatos(prestamo);
                if (prestamo.Eliminar())
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

        protected void buscarPButton_Click(object sender, EventArgs e)
        {
            Prestamos prestamo = new Prestamos();

            int id = Utility.ConvierteEntero(idPTextBox.Text);

            if (id > 0)
            {
                if (prestamo.Buscar(id))
                {
                    DevolverDatos(prestamo);
                }
                else
                {
                    Utility.ShowToastr(this.Page, "NO EXISTE PRESTAMO ID !", "Message", "Error");
                }

            }
        }
    }
}