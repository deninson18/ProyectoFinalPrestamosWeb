﻿using System;
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
            //int id = Utility.ConvierteEntero(idClienteTextBox.Text);
            //cliente.ClienteId = id;
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
            if (idClienteTextBox.Text.Length == 0)
            {
                if (cliente.Insertar())
                {
                    Utility.ShowToastr(this.Page, "Guardo Correctamente", "Message", "SUCCESS");
                    Limpiar();
                }
                else
                {
                    Utility.ShowToastr(this.Page, "Error al Guardar", "Message", "Error");
                }
            }
            CargarDatos(cliente);
            if (cliente.Modificar())
            {
                Utility.ShowToastr(this, "Edito Correctamente", "Message", "SUCCESS");
                Limpiar();
            }
            else
            {
                Utility.ShowToastr(this, "Error Al Editar", "Message", "Warning");
            }
        }

        protected void nuevoCliButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void eliminarCliButton_Click(object sender, EventArgs e)
        {
            Clientes cliente = new Clientes();       
            int id = Utility.ConvierteEntero(idClienteTextBox.Text);    
            if (id > 0)
            {
                CargarDatos(cliente);
                if (cliente.Eliminar())
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

        protected void buscarCliButton_Click(object sender, EventArgs e)
        {
            Clientes cliente = new Clientes();         
            int id = Utility.ConvierteEntero(idClienteTextBox.Text);

            if (id > 0)
            {
                if (cliente.Buscar(id))
                {
                    DevolverDatos(cliente);
                }
                else
                {
                    Utility.ShowToastr(this.Page, "NO EXISTE CLIENTE ID !", "Message", "Error");
                }

            }
        }
    }
}
