using BLL;
using ENTIDADES;
using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusinessSoft.UI.VentanasReportes
{
    public partial class VReporteArticulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                Repositorio<Articulos> repositorio = new Repositorio<Articulos>();

                MyReportViewer.ProcessingMode = Microsoft.Reporting.WebForms.ProcessingMode.Local;
                MyReportViewer.Reset();

                MyReportViewer.LocalReport.ReportPath = Server.MapPath(@"~\Reportes\ListaArticulos.rdlc");
                MyReportViewer.LocalReport.DataSources.Clear();
                MyReportViewer.LocalReport.DataSources.Add(new ReportDataSource("ListaArticulosDataSet", (List<Articulos>)Session["Articulos"]));

                MyReportViewer.LocalReport.Refresh();
            }

        }
    }
}