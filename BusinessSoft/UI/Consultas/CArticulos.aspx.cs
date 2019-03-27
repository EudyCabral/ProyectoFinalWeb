using _1erParcial.Utilidades;
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
    public partial class CArticulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
     
        
        Repositorio<Articulos> repositorio = new Repositorio<Articulos>();
        Expression<Func<Articulos, bool>> filtro = x => true;
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


            switch (FiltroDropDownList.SelectedIndex)
            {
                case 0://ID
                    id = util.ToInt(CriterioTextBox.Text);
                    filtro = c => c.ArticuloId == id;
                     Mensaje();

                    break;

                case 1://  nombre
                    filtro = c => c.Nombre.Contains(CriterioTextBox.Text);
                    Mensaje();
                    break;

                case 2:// Inventario

                    int inventario = util.ToInt(CriterioTextBox.Text);
                    filtro = c => c.Inventario == inventario;
                    Mensaje();
                    break;

                case 3://Todos

                    filtro = x => true;
                    Mensaje();
                     break;

            

               

            }
            var lista = repositorio.GetList(filtro);
            DatosGridView.DataSource = lista;
            Session["Articulos"] = lista ;
            DatosGridView.DataBind();
            CriterioTextBox.Text = "";


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

        protected void ImprimirButton_Click(object sender, EventArgs e)
        {


            Response.Write("<script>window.open('/UI/VentanasReportes/VReporteArticulos.aspx','_blank');</script");

        }
    }
}