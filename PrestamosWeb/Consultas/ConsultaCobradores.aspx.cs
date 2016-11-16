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
            Cobradores cobrador = new Cobradores();
            if (!IsPostBack)
            {
                cobradoresGridView.DataSource = cobrador.Listado("*", "1=1", "");
                cobradoresGridView.DataBind();
            }
        }

        protected void consultaCobradorButton_Click(object sender, EventArgs e)
        {
            Cobradores cobrador = new Cobradores();
            string Filtro = "";

            if (consultaCoDropDownList.SelectedIndex == 0)
            {
                if (cobradorFTextBox.Text.Trim().Length == 0)
                {
                    Filtro = "1=1";
                }
                else
                {
                    int id;
                    int.TryParse(cobradorFTextBox.Text, out id);
                    Filtro = "CobradorId= " + id.ToString();

                }
            }
            else if (consultaCoDropDownList.SelectedIndex == 1)
            {
                if (cobradorFTextBox.Text.Trim().Length == 0)
                {
                    Filtro = "1=1";
                }
                else
                {
                    Filtro = "Nombres like '%" + cobradorFTextBox.Text + "%'";
                }
            }
            else if (consultaCoDropDownList.SelectedIndex == 2)
            {
                if (cobradorFTextBox.Text.Trim().Length == 0)
                {
                    Filtro = "1=1";
                }
                else
                {
                    Filtro = "Apellidos like '%" + cobradorFTextBox.Text + "%'";
                }
            }
            else if (consultaCoDropDownList.SelectedIndex == 3)
            {
                if (cobradorFTextBox.Text.Trim().Length == 0)
                {
                    Filtro = "1=1";
                }
                else
                {
                    Filtro = "Cedula like '%" + cobradorFTextBox.Text + "%'";
                }
            }

            cobradoresGridView.DataSource = cobrador.Listado(" * ", Filtro, "");
            cobradoresGridView.DataBind();

        }
    }
}