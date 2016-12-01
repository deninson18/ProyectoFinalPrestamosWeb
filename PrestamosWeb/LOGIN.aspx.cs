using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using BLL;
using System.Web.Security;

namespace PrestamosWeb
{
    public partial class LOGIN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();
            bool retorno = true;
            if (retorno)
            {
                usuario.NombreUsuario = UsuarioTextBox.Text;
            }
            if (ContrasenaTextBox.Text.Length == 0)
            {
                Utility.ShowToastr(this, "Error", "Contraseña Invalido", "Error");
                retorno = false;
            }
            if (retorno)
            {
                usuario.Contrasena = ContrasenaTextBox.Text;
            }

            if (usuario.Acceso())
            {
                FormsAuthentication.RedirectFromLoginPage(UsuarioTextBox.Text, RecordarCheckBox.Checked);
            }
            else
            {
                Utility.ShowToastr(this.Page, "Error de Inicio", "Error", "Error");
            }
        }
    }
}