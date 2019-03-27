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
    public partial class Articulos_en_Almacen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Expression<Func<ReciboDetalles, bool>> filtro = x => true;
        Repositorio<ReciboDetalles> repositorio = new Repositorio<ReciboDetalles>();

        public void Mensaje()
        {


            if (repositorio.GetList(filtro).Count() == 0)
            {
                util.ShowToastr(this.Page, "No hay Registros", "Informacion", "info");
                return;
            }

        }
        public void RetornaLista()
        {


            int id = 0;
            //DateTime desde = Convert.ToDateTime(DesdeTextBox.Text);
            //DateTime hasta = Convert.ToDateTime(HastaTextBox.Text);
            id = util.ToInt(CriterioTextBox.Text);
            decimal money = util.ToDecimal(CriterioTextBox.Text);


            switch (FiltroDropDownList.SelectedIndex)
            {
                case 0://ID
                 
                    filtro = c => c.ID == id;


                    Mensaje();

                    break;

                case 1://Reciboid
       
                    filtro = c => c.ReciboId == id ;


                    Mensaje();

                    break;



                case 2:// ArticuloId

                    filtro = c => c.ArticuloId == id;


                    Mensaje();
                    break;

                case 3://Articulos

                    filtro = c => c.Articulo.Contains(CriterioTextBox.Text);

                    Mensaje();

                    break;


                case 4://Descripcion

                    filtro = c => c.Descripcion.Contains(CriterioTextBox.Text);

                    Mensaje();

                    break;

                case 5://Descripcion

                    filtro = c => c.Cantidad == id;

                    Mensaje();

                    break;

                case 6://

                    filtro = c => c.Monto == money;

                    Mensaje();

                    break;

                case 7://Todos

                    filtro = x => true;
                    Mensaje();
                    break;

            }

            var lista = repositorio.GetList(filtro);
            Session["recibodetalle"] = lista;
            CriterioTextBox.Text = "";
            DatosGridView.DataSource = lista;
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

        protected void ImprimirButton_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.open('/UI/VentanasReportes/VReporteAlmacen.aspx','_blank');</script");

        }
    }
}