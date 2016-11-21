using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace PrestamosWeb.Consultas
{
    public partial class ConsultaCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Clientes cliente = new Clientes();
                ClientesGridView.DataSource = cliente.Listado("*", "1=1", "");
                ClientesGridView.DataBind();
            }
           
        }

        protected void consultarClienteButton_Click(object sender, EventArgs e)
        {
            Clientes cliente = new Clientes();
            string Filtro = "";

            if (ClienteFTextBox.Text.Trim().Length == 0)
            {
                Filtro = "1=1";
            }
            else
            {
                Filtro = consultaClienteDropDownList.SelectedValue + " like '%" + ClienteFTextBox.Text + "%'";
            }
            ClientesGridView.DataSource = cliente.Listado("*", Filtro, "");
            ClientesGridView.DataBind();
        }
    }
}