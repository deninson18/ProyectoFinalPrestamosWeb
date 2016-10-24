using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;
using BLL;
using System.Data;

namespace PrestamosWeb.Reportes
{
    public partial class ReportesWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
   
            if (IsPostBack)
            {
                Configuracion(usuarioReportViewer);
                
            }

           
        }
        private void Configuracion(ReportViewer reportViewergenerico)
        {
            Usuarios usuario = new Usuarios();
            reportViewergenerico.LocalReport.DataSources.Clear();
            reportViewergenerico.ProcessingMode = ProcessingMode.Local;

            reportViewergenerico.LocalReport.ReportPath = @"\Rpts\UsuariosReport.rdlc";

            ReportDataSource ds = new ReportDataSource("Usuarios", usuario.ListadoDt("1=1"));
            reportViewergenerico.LocalReport.DataSources.Add(ds);

            reportViewergenerico.LocalReport.Refresh();

        }
        
    }
}