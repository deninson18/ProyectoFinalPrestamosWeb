using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.IO;

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
            try
            {
                if (fileUploader1.HasFile)
                {
                    // Se verifica que la extensión sea de un formato válido
                    string ext = fileUploader1.PostedFile.FileName;
                    ext = ext.Substring(ext.LastIndexOf(".") + 1).ToLower();
                    string[] formatos =
                      new string[] { "jpg", "jpeg", "bmp", "png", "gif" };
                    if (Array.IndexOf(formatos, ext) < 0)

                        Response.Write("<scrip>alert('Formato de imagen inválido.')</script>");
                        GuardarArchivo(fileUploader1.PostedFile);
                        usuario.Foto= @"C:\Users\walle1\Desktop\Aplicada II\PrestamosWebAp2\PrestamosWeb\PrestamosWeb\temp\" + fileUploader1.FileName;
                }
                else
                    Response.Write("<scrip>alert('Seleccione un archivo del disco duro.')</script>");

            }
            catch (Exception ex)
            {
                throw ex;
            }
           
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

        private void GuardarArchivo(HttpPostedFile file)
        {
            // Se carga la ruta física de la carpeta temp del sitio
            string ruta = Server.MapPath("~/temp");

            // Si el directorio no existe, crearlo
            if (!Directory.Exists(ruta))
                Directory.CreateDirectory(ruta);

            string archivo = String.Format("{0}\\{1}", ruta, file.FileName);

            // Verificar que el archivo no exista
            if (File.Exists(archivo))
                Response.Write("<script>alert('Ya existe una imagen con nombre," + file.FileName + "')</script>");
            else {
                file.SaveAs(archivo);
                Response.Write("<script>alert('" + "/temp/" + file.FileName + "')</script>");
            }

        }

        protected void cargarImagen_Click(object sender, EventArgs e)
        {

            try
            {
                if (fileUploader1.HasFile)
                {
                    // Se verifica que la extensión sea de un formato válido
                    string ext = fileUploader1.PostedFile.FileName;
                    ext = ext.Substring(ext.LastIndexOf(".") + 1).ToLower();
                    string[] formatos =
                      new string[] { "jpg", "jpeg", "bmp", "png", "gif" };
                    if (Array.IndexOf(formatos, ext) < 0)

                        Response.Write("<scrip>alert('Formato de imagen inválido.')</script>");
                    GuardarArchivo(fileUploader1.PostedFile);

                    // GuardarBD(fileUploader1.PostedFile);
                }
                else
                    Response.Write("<scrip>alert('Seleccione un archivo del disco duro.')</script>");

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}