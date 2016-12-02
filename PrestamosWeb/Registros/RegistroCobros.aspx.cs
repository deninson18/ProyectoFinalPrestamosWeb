using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;

namespace PrestamosWeb.Registros
{
    public partial class RegistroCobros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                fechaCobroTextBox.Text = DateTime.Now.ToString("dd/MM/yyyy");
                CargarDropList();
                dt.Columns.AddRange(new DataColumn[3] { new DataColumn("PrestamoId"), new DataColumn("NuSemana"), new DataColumn("Cuota")});
                Session["Cobros"] = dt;
            }
        }
        private void CargarDatos(Cobros cobro)
        {
            int id;
            int.TryParse(cobroIdTextBox.Text, out id);
            cobro.CobroId = id;
            cobro.FechaCobro = fechaCobroTextBox.Text;

            float sub;
            float.TryParse(subTotalCobroTextBox.Text, out sub);
            cobro.SubTotal = sub;

            float abono;
            float.TryParse(abonoCobroTextBox.Text, out abono);
            cobro.Abono = abono;

            //float Total;
            //float.TryParse(TotalCobroTextBox.Text, out Total);
            //cobro.Total = Total;

            foreach (GridViewRow row in cobrosGridView.Rows)
            {
                cobro.AgregarCobros(int.Parse(row.Cells[0].Text), int.Parse(row.Cells[1].Text), (float)Convert.ToDecimal(row.Cells[2].Text));
            }
        }

        private void Limpiar()
        {
            clienteCobroDropDownList.SelectedIndex = 0;
            fechaCobroTextBox.Text = string.Empty;
            SemanaNuCobroTextBox.Text = string.Empty;
            cuotaCobroDropDownList.SelectedIndex = 0;
            abonoCobroTextBox.Text = string.Empty;
            subTotalCobroTextBox.Text = string.Empty;
            //TotalCobroTextBox.Text = string.Empty;
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[3] { new DataColumn("PrestamoId"), new DataColumn("NuSemana"), new DataColumn("Cuota") });
            Session["Cobros"] = dt;
            cobrosGridView.DataBind();
        }

        private void CargarDropList()
        {
            Prestamos prestamo = new Prestamos();
            clienteCobroDropDownList.DataSource = prestamo.Listado("ClienteId,Nombres", "1=1", "");
            clienteCobroDropDownList.DataTextField = "Nombres";
            clienteCobroDropDownList.DataValueField = "ClienteId";
            clienteCobroDropDownList.DataBind();
        }

        protected void guardarButton_Click(object sender, EventArgs e)
        {
            Cobros cobro = new Cobros();
            CargarDatos(cobro);
            if (cobroIdTextBox.Text.Length <= 0)
            {
                if (cobro.Insertar())
                {
                    Utility.ShowToastr(this.Page, "Guardo Correctamente", "Message", "SUCCESS");
                    Limpiar();
                }

                else
                {
                    Utility.ShowToastr(this.Page, "Error al Guardar", "Message", "Error");
                }
            }
            if (cobroIdTextBox.Text.Length > 0)
            {
                CargarDatos(cobro);

                if (cobro.Modificar())
                {
                    Utility.ShowToastr(this, "Edito Correctamente", "Message", "SUCCESS");
                    Limpiar();
                }
                else
                {
                    Utility.ShowToastr(this, "Error Al Editar", "Message", "Warning");
                }
            }
        }

        protected void agregarCobroButton_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)Session["Cobros"];
            dt.Rows.Add(clienteCobroDropDownList.SelectedValue, SemanaNuCobroTextBox.Text, cuotaCobroDropDownList.SelectedValue);
            Session["Cobros"] = dt;
            cobrosGridView.DataSource = dt;
            cobrosGridView.DataBind();
            CalcularSubTotal();

        }
        private void CalcularSubTotal()
        {
            Cobros cobro = new Cobros();
            float suma = 0,resultado=0;
            foreach (GridViewRow row in cobrosGridView.Rows)
            {
                suma = suma + (float)Convert.ToDecimal(row.Cells[2].Text);
                
            }
            float abono;
            float.TryParse(abonoCobroTextBox.Text, out abono);
            cobro.Abono = abono;
            resultado = suma + cobro.Abono;
           
            subTotalCobroTextBox.Text = resultado.ToString();
        }

        protected void nuevoButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void clienteCobroDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            Prestamos prestamo = new Prestamos();
            cuotaCobroDropDownList.DataSource = prestamo.Listado("PrestamoId,Cuota", "PrestamoId = " + clienteCobroDropDownList.SelectedValue, "");
            cuotaCobroDropDownList.DataTextField = "Cuota";
            cuotaCobroDropDownList.DataValueField = "Cuota";
            cuotaCobroDropDownList.DataBind();
        }
    }
}