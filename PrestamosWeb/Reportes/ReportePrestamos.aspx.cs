using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Microsoft.Reporting.WebForms;

namespace PrestamosWeb.Reportes
{
    public partial class ReportePrestamos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Configuracion(PrestamosReportViewer);
            }
        }

        private void Configuracion(ReportViewer reportViewergenerico)
        {
            Prestamos prestamo = new Prestamos();
            reportViewergenerico.LocalReport.DataSources.Clear();
            reportViewergenerico.ProcessingMode = ProcessingMode.Local;

            reportViewergenerico.LocalReport.ReportPath = @"Rpts\PrestamosReport.rdlc";
           

            ReportDataSource ds = new ReportDataSource("Prestamos", prestamo.ListadoDt("1=1"));

            reportViewergenerico.LocalReport.DataSources.Add(ds);

            reportViewergenerico.LocalReport.Refresh();

        }
    }
}