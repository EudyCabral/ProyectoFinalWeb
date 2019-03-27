using _1erParcial.Utilidades;
using BLL;
using DAL;
using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusinessSoft.UI.Registros
{
    public partial class Recibo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                FechaTextBox.Text = DateTime.Now.ToString("yyyy-MM-dd");
                LlenaCombobox();
                ViewState["Recibos"] = new Recibos();
               
            }
        }
        ReciboBLL bLL = new ReciboBLL();

        private void LlenaCombobox()
        {
            Repositorio<Clientes> clientes = new Repositorio<Clientes>();
            ClienteDropDownList.DataSource = clientes.GetList(c => true);
            ClienteDropDownList.DataValueField = "ClienteId";
            ClienteDropDownList.DataTextField = "Nombre";
            ClienteDropDownList.DataBind();
            ViewState["Clientes"] = new Clientes();

            Repositorio<Articulos> articulos = new Repositorio<Articulos>();
            ArticuloDropDownList.DataSource = articulos.GetList(c => true);
            ArticuloDropDownList.DataValueField = "ArticuloId";
            ArticuloDropDownList.DataTextField = "Nombre";
            ArticuloDropDownList.DataBind();
            ViewState["Articulos"] = new Articulos();


        }

        protected void BindGrid()
        {
            DetalleGridView.DataSource = ((Recibos)ViewState["Recibos"]).Detalle;

            DetalleGridView.DataBind();
        }

        public void Limpiar()
        {
            ReciboId.Text = "";
            FechaTextBox.Text = DateTime.Now.ToString("yyyy-MM-dd");
            Cantidadinput.Text = "";
            Descripcion.Text = "";
            Montoinput.Text = "";
            MontoTotalTextBox.Text = "";
            DetalleGridView.DataBind();
            MontoTotalTextBox.Visible = false;
            totalLabel.Visible = false;

        }

        public void LimpiarA()
        {
           
            Cantidadinput.Text = "";
            Descripcion.Text = "";
            Montoinput.Text = "";
            FechaTextBox.Text = DateTime.Now.ToString("yyyy-MM-dd");
        }
        private Recibos LlenaClase()
        {
            Recibos recibo = new Recibos();
            recibo = (Recibos)ViewState["Recibos"];
            recibo.ReciboId = util.ToInt(ReciboId.Text);
            recibo.ClienteId = util.ToInt(ClienteDropDownList.SelectedValue);
            recibo.NombredeCliente = util.RetornarNombreC(ClienteDropDownList.SelectedValue);
            recibo.Fecha = Convert.ToDateTime(FechaTextBox.Text);
            recibo.EfectivoId = 1;
            recibo.MontoTotal = util.ToDecimal(MontoTotalTextBox.Text);
            recibo.Abono = 0;
            recibo.UltimaFechadeVigencia = Convert.ToDateTime(FechaTextBox.Text).AddDays(95);

            recibo.Detalle = (List<ReciboDetalles>)ViewState["detalle"];

            return recibo;
        }

        private void LlenaCampos(Recibos recibos)
        {
           
            ReciboId.Text = recibos.ReciboId.ToString();
            FechaTextBox.Text = recibos.Fecha.ToString("yyyy-MM-dd");
            ClienteDropDownList.Text = recibos.ClienteId.ToString();
            MontoTotalTextBox.Text = recibos.MontoTotal.ToString();


            //Cargar el detalle al Grid
            ViewState["Recibos"] = recibos.Detalle;
            DetalleGridView.DataSource = ViewState["Recibos"];
            DetalleGridView.DataBind();

        }





        protected void AgregarButton_Click(object sender, EventArgs e)
        {

            Recibos recibos = new Recibos();
            List<ReciboDetalles> reciboDetalles = new List<ReciboDetalles>();
 
            //recibos = (Recibos)ViewState["Recibos"];
     
            if (DetalleGridView.Rows.Count !=0)
            {
                reciboDetalles = (List<ReciboDetalles>)ViewState["detalle"];
            }

            


                reciboDetalles.Add(new ReciboDetalles(0, util.ToInt(ReciboId.Text), util.ToInt(ArticuloDropDownList.SelectedValue), util.RetornarNombre(ArticuloDropDownList.SelectedValue), Descripcion.Text, util.ToInt(Cantidadinput.Text), util.ToDecimal(Montoinput.Text)));
              


            ViewState["detalle"] = reciboDetalles;


            DetalleGridView.DataSource = ViewState["detalle"];
            DetalleGridView.DataBind();
            

            decimal monto = 0;
            foreach (var item in reciboDetalles)
            {
                monto += item.Monto;
            }

            totalLabel.Visible = true;
            MontoTotalTextBox.Visible = true;
            MontoTotalTextBox.Text = monto.ToString();
            LimpiarA();
        }

        protected void ButtonNuevo_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void ButtonGuardar_Click(object sender, EventArgs e)
        {
            Repositorio<Efectivos> repositorio = new Repositorio<Efectivos>();
           
            if (DetalleGridView.Rows.Count == 0)
            {
                util.ShowToastr(this.Page, "Necesita Agregar un Articulo para Completar el Recibo", "Informacion", "info");
                
                return;
            }

            foreach (var item in repositorio.GetList(x => x.EfectivoId == 1))
            {

                if (item.EfectivoCapital < util.ToDecimal(Montoinput.Text))
                {
                    util.ShowToastr(this.Page, "La Compraventa No dispone de Esa Cantidad de dinero", "Informacion", "info");
                    return;
                }
            }

            Recibos recibos = LlenaClase();
            bool Paso = false;

            //Determinar si es Guardar o Modificar


            if (recibos.ReciboId == 0)
            {
                Paso = bLL.Guardar(recibos);

            }
            else
            {
                var V = bLL.Buscar(recibos.ReciboId);

                if (V != null)
                {
                    Paso = bLL.Modificar(recibos);
                }

            }



            //Informar el resultado
            if (Paso)
            {

                util.ShowToastr(this.Page, "Registro Exitoso!!", "Guardado!!", "success");
                ReportePrestamo(recibos.ReciboId);
                Response.Write("<script>window.open('/UI/VentanasReportes/VRecibo.aspx','_blank');</script");
                Limpiar();
            }
            else
            {

                util.ShowToastr(this.Page, "No se pudo guardar!!", "Fallo!!", "error");

            }
        }

        protected void ButtonEliminar_Click(object sender, EventArgs e)
        {

            int id = util.ToInt(ReciboId.Text);
            if (bLL.Eliminar(id))
            {

                util.ShowToastr(this.Page, "Eliminado con exito!!", "Eliminado!!", "success");
                Limpiar();
            }
            else
            {

                util.ShowToastr(this.Page, "No pudo eliminar!!", "Fallo!!", "error");
            }
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            int id = util.ToInt(ReciboId.Text);
            Recibos recibos = bLL.Buscar(id);

            if (recibos != null)
            {
                LlenaCampos(recibos);

            }
            else
            {
                util.ShowToastr(this.Page, "No. de Recibo no Identificado!!", "Fallo!!", "error");
                Limpiar();
            }
        }
        public void ReportePrestamo(int id)
        {
            Repositorio<Recibos> repositorio = new Repositorio<Recibos>();
            Repositorio<ReciboDetalles> repo = new Repositorio<ReciboDetalles>();

            Session["recibo"] = repositorio.GetList(x => x.ReciboId == id);
            Session["recibod"] = repo.GetList(x => x.ReciboId == id);

        }
        protected void DetalleGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {



        }



    }
}