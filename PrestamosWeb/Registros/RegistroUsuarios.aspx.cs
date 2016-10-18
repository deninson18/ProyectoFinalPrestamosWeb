using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace PrestamosWeb.Registros
{
    public partial class RegistroUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void CargarDatos(Usuarios usuario)
        {
            int id = 0;
            int.TryParse(idUTextBox.Text, out id);
            usuario.UsuarioId = id;
            usuario.Nombres = nombreUTextBox.Text;
            usuario.Apellidos = apellidoUTextBox.Text;
            usuario.NombreUsuario = nombreUsuarioTextBox.Text;
            usuario.Contrasena = contrasenaUTextBox.Text;
            usuario.AreaUsuario = usuarioUDropDownList.SelectedValue;
        }

        public void DevolverDatos(Usuarios usuario)
        {
            idUTextBox.Text = usuario.UsuarioId.ToString();
            nombreUTextBox.Text = usuario.Nombres;
            apellidoUTextBox.Text = usuario.Apellidos;
            nombreUsuarioTextBox.Text = usuario.NombreUsuario;
            contrasenaUTextBox.Text = usuario.Contrasena;
            usuarioUDropDownList.SelectedValue = usuario.AreaUsuario;
        }

        public void Limpiar()
        {
           idUTextBox.Text = string.Empty;
            nombreUTextBox.Text = string.Empty;
            apellidoUTextBox.Text = string.Empty;
            nombreUsuarioTextBox.Text = string.Empty;
            contrasenaUTextBox.Text = string.Empty;
            usuarioUDropDownList.SelectedIndex = 0;
        }


        protected void nuevoUButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void guardarUButton_Click(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();

            CargarDatos(usuario);

            if (usuario.Insertar())
            {
                Response.Write("<script>alert('Guardo Exitosamente')</script>");
            }
            else
            {
                Response.Write("<script>alert('Error al Guardar')</script>");
            }
        }

        protected void eliminarUButton_Click(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();
            int id = 0;
            int.TryParse(idUTextBox.Text, out id);
            usuario.UsuarioId = id;


            if (id > 0)
            {
                CargarDatos(usuario);
                if (usuario.Eliminar())
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

        protected void buscarUButton_Click(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();
            int id = 0;
            int.TryParse(idUTextBox.Text, out id);

            if (id > 0)
            {
                if (usuario.Buscar(id))
                {
                    DevolverDatos(usuario);
                }
                else
                {
                    Response.Write("<script>alert('No existe Usuario ID')</script>");
                }

            }
        }
    }
}