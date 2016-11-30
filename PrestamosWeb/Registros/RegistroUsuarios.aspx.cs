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
            int id = Utility.ConvierteEntero(idUTextBox.Text);
            usuario.UsuarioId = id;

            usuario.Nombres = nombreUTextBox.Text;
            usuario.Apellidos = apellidoUTextBox.Text;
            usuario.NombreUsuario = nombreUsuarioTextBox.Text;
            usuario.Contrasena = contrasenaUTextBox.Text;
            usuario.TipoUsuario = usuarioUDropDownList.SelectedValue;
            usuario.Foto = Fotos.ImageUrl;
        }
        public void DevolverDatos(Usuarios usuario)
        {
            idUTextBox.Text = usuario.UsuarioId.ToString();
            nombreUTextBox.Text = usuario.Nombres;
            apellidoUTextBox.Text = usuario.Apellidos;
            nombreUsuarioTextBox.Text = usuario.NombreUsuario;
            contrasenaUTextBox.Text = usuario.Contrasena;
            usuarioUDropDownList.SelectedValue = usuario.TipoUsuario;
            Fotos.ImageUrl = usuario.Foto;
        }
        public void Limpiar()
        {
            idUTextBox.Text = string.Empty;
            nombreUTextBox.Text = string.Empty;
            apellidoUTextBox.Text = string.Empty;
            nombreUsuarioTextBox.Text = string.Empty;
            contrasenaUTextBox.Text = string.Empty;
            confirmarContrasenaTextBox.Text = string.Empty;
            usuarioUDropDownList.SelectedIndex = 0;
            Fotos.ImageUrl = "/Fotos/images.png";
        }

        protected void nuevoUButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void guardarUButton_Click(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();

            CargarDatos(usuario);
            if (idUTextBox.Text.Length <= 0)
            {
                if (usuario.Insertar())
                {
                    Utility.ShowToastr(this.Page, "Guardo Correctamente", "Message", "SUCCESS");
                    Limpiar();
                    nombreUTextBox.Focus();
                }
                else
                {
                    Utility.ShowToastr(this.Page, "Error al Guardar", "Message", "Error");
                }
            }
            if (idUTextBox.Text.Length > 0)
            {
                CargarDatos(usuario);

                if (usuario.Modificar())
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
        protected void eliminarUButton_Click(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();
            int id = Utility.ConvierteEntero(idUTextBox.Text);
            if (id > 0)
            {
                CargarDatos(usuario);
                if (usuario.Eliminar())
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
        protected void buscarUButton_Click(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();
            int id = Utility.ConvierteEntero(idUTextBox.Text);

            if (id > 0)
            {
                
                if (usuario.Buscar(id))
                {
                    DevolverDatos(usuario);
                }
                else
                {
                    Utility.ShowToastr(this.Page, "NO EXISTE USUARIO ID", "Message", "Error");
                }

            }
        }

        //private void GuardarArchivo(HttpPostedFile file)
        //{
        //    // Se carga la ruta física de la carpeta temp del sitio
        //    string ruta = Server.MapPath("~/temp");

        //    // Si el directorio no existe, crearlo
        //    if (!Directory.Exists(ruta))
        //        Directory.CreateDirectory(ruta);

        //    string archivo = String.Format("{0}\\{1}", ruta, file.FileName);

        //    // Verificar que el archivo no exista
        //    if (File.Exists(archivo))
        //        Response.Write("<script>alert('Ya existe una imagen con nombre," + file.FileName + "')</script>");
        //    else {
        //        file.SaveAs(archivo);
        //        Response.Write("<script>alert('" + "/temp/" + file.FileName + "')</script>");
        //    }

        //}


        //try
        //{
        //    if (fileUploader1.HasFile)
        //    {
        //        // Se verifica que la extensión sea de un formato válido
        //        string ext = fileUploader1.PostedFile.FileName;
        //        ext = ext.Substring(ext.LastIndexOf(".") + 1).ToLower();
        //        string[] formatos =new string[] { "jpg", "jpeg", "bmp", "png", "gif" };
        //        if (Array.IndexOf(formatos, ext) < 0)

        //            Response.Write("<scrip>alert('Formato de imagen inválido.')</script>");
        //        GuardarArchivo(fileUploader1.PostedFile);

        //        // GuardarBD(fileUploader1.PostedFile);
        //    }
        //    else
        //        Response.Write("<scrip>alert('Seleccione un archivo del disco duro.')</script>");

        //}
        //catch (Exception ex)
        //{
        //    throw ex;
        //}
        protected void cargarImagen_Click1(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();
            usuario.Foto = "/Fotos/" + fotoFileUpload.FileName;
            fotoFileUpload.SaveAs(Server.MapPath("/Fotos/" + fotoFileUpload.FileName));
            if (fotoFileUpload.HasFile)
            {

                Fotos.ImageUrl = "/Fotos/" + fotoFileUpload.FileName;
            }
        }

    }
}