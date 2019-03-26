using _1erParcial.Utilidades;
using BLL;
using ENTIDADES;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusinessSoft.Registros
{
    public partial class RegistrodeArticulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Repositorio<Articulos> repositorio = new Repositorio<Articulos>();

        private void Limpiar()
        {
            articuloid.Text = "";
            nombreTextbox.Text = "";
            Inventario.Text = "";

        }



        private Articulos Llenaclase()
        {
            Articulos articulos = new Articulos();


            articulos.ArticuloId = util.ToInt(articuloid.Text);
            articulos.Nombre = nombreTextbox.Text;
            articulos.Inventario = util.ToInt(Inventario.Text);

            return articulos;
        }

        private void LlenaCampos(Articulos articulos)
        {
            articuloid.Text = articulos.ArticuloId.ToString();
            nombreTextbox.Text = articulos.Nombre;
            Inventario.Text = articulos.Inventario.ToString();


        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {

            int id = util.ToInt(articuloid.Text);
            Articulos articulos = repositorio.Buscar(id);

            if (articulos != null)
            {
                LlenaCampos(articulos);
                util.ShowToastr(this, "Registro de Articulo Encontrado", "Exito", "success");

            }
            else
            {
                util.ShowToastr(this.Page, "El Articulo con el ID que andas buscando no se encuentra Registrado!!", "Informacion!!", "info");
            }


        }

        protected void ButtonGuardar_Click(object sender, EventArgs e)
        {
            bool paso = false;

            Articulos articulos = Llenaclase();
            int id = util.ToInt(articuloid.Text);


            if (articulos.ArticuloId == 0)
            {
                paso = repositorio.Guardar(articulos);
            }
            else
            {

                var articulo = repositorio.Buscar(id);

                if (articulo != null)
                {
                    paso = repositorio.Modificar(articulos);
                }
                else

                    util.ShowToastr(this, "Registro no Existe, no puedo modificar", "Informacion", "info");
            }


            Limpiar();

            if (paso)
            {

                util.ShowToastr(this, "Registro Exitoso", "Guardado", "success");

            }
            else
            {


                util.ShowToastr(this, "No Pudo Guardar", "Fallo", "error");

            }
        }


        protected void ButtonEliminar_Click(object sender, EventArgs e)
        {

            int id = util.ToInt(articuloid.Text);

            if (repositorio.Eliminar(id))
            {
                util.ShowToastr(this.Page, "Registro Eliminado con Exito!!", "Eliminado!!", "success");

                Limpiar();
            }
            else
            {

                util.ShowToastr(this.Page, "Registro de Articulo no Existe", "Fallo", "error");

            }

        }

        protected void ButtonNuevo_Click(object sender, EventArgs e)
        {
            Limpiar();
        }
    }
}