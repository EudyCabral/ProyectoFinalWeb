using BLL;
using Entidades;
using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusinessSoft.UI.VentanasReportes
{
    public partial class VReporteUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Repositorio<Usuarios> repositorio = new Repositorio<Usuarios>();

                MyReportViewer.ProcessingMode = Microsoft.Reporting.WebForms.ProcessingMode.Local;
                MyReportViewer.Reset();

                MyReportViewer.LocalReport.ReportPath = Server.MapPath(@"~\Reportes\ListaUsuarios.rdlc");
                MyReportViewer.LocalReport.DataSources.Clear();
                MyReportViewer.LocalReport.DataSources.Add(new ReportDataSource("UsuarioDataSet", (List<Usuarios>)Session["usuarios"]));

                MyReportViewer.LocalReport.Refresh();
            }

        }
    }
}