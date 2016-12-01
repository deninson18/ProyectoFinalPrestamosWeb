using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using BLL;

namespace PrestamosWeb
{
    public partial class Default : System.Web.UI.MasterPage
    {
        Usuarios Usuario = new Usuarios();

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!Page.IsPostBack)
            //{
            //    if(Context.User.Identity.Name.Length == 0)
            //    {
            //        RegistrosLi.Visible = false;
            //        Logoutli.Visible = false;
            //    }
            //    else
            //    {
            //        Usuario.Comprobar();
            //        Logoutli.Visible = true;
            //        if(Usuario.TipoUsuario == "ADMIN")
            //        {
            //            RegistrosLi.Visible = true;
            //        }
            //        if (Usuario.TipoUsuario == "USER")
            //        {
            //            RegistrosLi.Visible = false;
            //        }
            //    }
            //}
        }

        protected void logoutLinkButton_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.RedirectPermanent("/LOGIN.aspx");
        }
    }
}


