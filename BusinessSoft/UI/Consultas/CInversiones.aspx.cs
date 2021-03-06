﻿using _1erParcial.Utilidades;
using BLL;
using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusinessSoft.UI.Consultas
{
    public partial class CEntradadeEfectivo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                DesdeTextBox.Text = DateTime.Now.ToString("yyyy-MM-dd");
                HastaTextBox.Text = DateTime.Now.ToString("yyyy-MM-dd");
            }
        }
        Repositorio<EntradadeInversiones> repositorio = new Repositorio<EntradadeInversiones>();

        Expression<Func<EntradadeInversiones, bool>> filtro = x => true;

        public void Mensaje()
        {

            if (repositorio.GetList(filtro).Count() == 0)
            {
                util.ShowToastr(this.Page, "No hay Registros con el Criterio Buscado", "Informacion", "info");
                return;
            }

        }


        public void RetornaLista()
        {


            int id = 0;
            DateTime desde = Convert.ToDateTime(DesdeTextBox.Text);
            DateTime hasta = Convert.ToDateTime(HastaTextBox.Text);

            switch (FiltroDropDownList.SelectedIndex)
            {
                case 0://ID
                    id = util.ToInt(CriterioTextBox.Text);
                    filtro = c => c.InversionId == id && (c.Fecha >= desde && c.Fecha <= hasta);
                    Mensaje();

                    break;

                case 1://  Nombre
                    filtro = c => c.Motivo.Contains(CriterioTextBox.Text) && (c.Fecha >= desde && c.Fecha <= hasta);
                    Mensaje();
                    break;

                case 2:// monto

                    decimal monto = util.ToDecimal(CriterioTextBox.Text);
                    filtro = c => c.Monto == monto && (c.Fecha >= desde && c.Fecha <= hasta);
                    Mensaje();
                    break;

             

                case 3://Todos

                    filtro = c => true && (c.Fecha >= desde && c.Fecha <= hasta);
                    Mensaje();
                    break;





            }
            var lista = repositorio.GetList(filtro);
            DatosGridView.DataSource = lista;
            Session["inversion"] = lista;
            CriterioTextBox.Text = "";  
            DatosGridView.DataBind();
       


            if (DatosGridView.Rows.Count > 0)
            {
                ImprimirButton.Visible = true;
            }
            else { ImprimirButton.Visible = false; }


        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            RetornaLista();
        }

        protected void DatosGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImprimirButton_Click(object sender, EventArgs e)
        {

            Response.Write("<script>window.open('/UI/VentanasReportes/VReporteEntradaCajaGeneral.aspx','_blank');</script");

        }
    }
}