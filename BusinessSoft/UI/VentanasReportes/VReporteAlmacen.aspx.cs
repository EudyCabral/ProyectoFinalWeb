﻿using BLL;
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
    public partial class VReporteAlmacen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Repositorio<ReciboDetalles> repo = new Repositorio<ReciboDetalles>();

                MyReportViewer.ProcessingMode = Microsoft.Reporting.WebForms.ProcessingMode.Local;
                MyReportViewer.Reset();

                MyReportViewer.LocalReport.ReportPath = Server.MapPath(@"~\Reportes\ListaArticulosAlmacen.rdlc");
                MyReportViewer.LocalReport.DataSources.Clear();


                MyReportViewer.LocalReport.DataSources.Add(new ReportDataSource("DetalleDataSet", (List<ReciboDetalles>)Session["recibodetalle"]));

                MyReportViewer.LocalReport.Refresh();
            }
        }
    }
}