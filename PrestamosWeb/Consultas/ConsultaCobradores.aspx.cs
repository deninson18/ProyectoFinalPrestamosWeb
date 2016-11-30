using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace PrestamosWeb.Consultas
{
    public partial class ConsultaCobradores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                Cobradores cobrador = new Cobradores();
                cobradoresGridView.DataSource = cobrador.Listado("*", "1=1", "");
                cobradoresGridView.DataBind();
            }
        }

        protected void consultaCobradorButton_Click(object sender, EventArgs e)
        {
            Cobradores cobrador = new Cobradores();
            string Filtro = "";

           
            if (cobradorFTextBox.Text.Trim().Length == 0)
            {
                Filtro = "1=1";
            }
            else
            {
                Filtro = consultaCoDropDownList.SelectedValue + " like '%" + cobradorFTextBox.Text + "%'";
            }
            

            cobradoresGridView.DataSource = cobrador.Listado(" * ", Filtro, "");
            cobradoresGridView.DataBind();

        }

        protected void imprimirCobradorButton_Click(object sender, EventArgs e)
        {
            Cobradores cobrador = new Cobradores();
            Response.Redirect("~/Reportes/ReporteCobrador.aspx");
            Response.Clear();
        }
    }
}