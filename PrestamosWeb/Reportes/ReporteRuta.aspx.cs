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
    public partial class ReporteRuta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Configuracion(RutaReportViewer);
            }
        }
        private void Configuracion(ReportViewer reportViewergenerico)
        {
            Rutas ruta = new Rutas();
            reportViewergenerico.LocalReport.DataSources.Clear();
            reportViewergenerico.ProcessingMode = ProcessingMode.Local;

            reportViewergenerico.LocalReport.ReportPath = @"Rpts\RutasReport.rdlc";
            ReportDataSource ds = new ReportDataSource("Rutas", ruta.ListadoDt("1=1"));

            reportViewergenerico.LocalReport.DataSources.Add(ds);

            reportViewergenerico.LocalReport.Refresh();

        }
    }
}