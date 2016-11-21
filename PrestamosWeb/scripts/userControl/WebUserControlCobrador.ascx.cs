using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace PrestamosWeb.userControl
{
    public partial class WebUserControlCobrador : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            Cobradores cobrador = new Cobradores();
            coDropDownList.DataSource = cobrador.Listado("*", "1=1", "");
            coDropDownList.DataTextField = "Nombres";
            coDropDownList.DataValueField = "CobradorId";
            coDropDownList.DataBind();
            }
        }
    }
}