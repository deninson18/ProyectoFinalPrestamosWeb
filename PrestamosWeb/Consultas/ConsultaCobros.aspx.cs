using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace PrestamosWeb.Consultas
{
    public partial class ConsultaCobros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Cobros cobro = new Cobros();
                CobrosGridView.DataSource = cobro.Listado("*", "1=1", "");
                CobrosGridView.DataBind();
            }
        }

        protected void consultarCobroButton_Click(object sender, EventArgs e)
        {
            Cobros cobro = new Cobros();
            string Filtro = "";

            if (CobroFTextBox.Text.Trim().Length == 0)
            {
                Filtro = "1=1";
            }
            else
            {
                Filtro = consultaCobroDropDownList.SelectedValue + " like '%" + CobroFTextBox.Text + "%'";
            }
            CobrosGridView.DataSource = cobro.Listado("*", Filtro, "");
            CobrosGridView.DataBind();
        }
    }
}