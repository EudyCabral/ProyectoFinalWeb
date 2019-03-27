using _1erParcial.Utilidades;
using BLL;
using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusinessSoft.Registros
{
    public partial class RUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Repositorio<Clientes> repositorio = new Repositorio<Clientes>();
        private void Limpiar()
        {
            Clienteid.Text = "";
            nombreTextbox.Text = "";
            cedulatextbox.Text = "";
            direccioninput.Text = "";
            Telefonoinput.Text = "";
        }

        private Clientes Llenaclase()
        {
            Clientes clientes = new Clientes();


            clientes.ClienteId = util.ToInt(Clienteid.Text);
            clientes.Nombre = nombreTextbox.Text;
            clientes.Cedula = cedulatextbox.Text;
            clientes.Direccion = direccioninput.Text;
            clientes.Telefono = Telefonoinput.Text;

            return clientes;
        }

        private void Llenacampo(Clientes clientes)
        {
            Clienteid.Text = clientes.ClienteId.ToString();
            nombreTextbox.Text = clientes.Nombre;
            cedulatextbox.Text = clientes.Cedula;
            direccioninput.Text = clientes.Direccion;
            Telefonoinput.Text = clientes.Telefono;

        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            int id = util.ToInt(Clienteid.Text);
            
            Clientes clientes = repositorio.Buscar(id);
            bool paso = false;
            if (clientes != null)
            {
                Llenacampo(clientes);
                paso = true;
            }
           
            if(paso)
            {
                util.ShowToastr(this, "Busqueda Exitosa", "Felicidades", "Success");
            }
            else
            {
                util.ShowToastr(this, "Registro no Existe", "Informacion", "info");
                Limpiar();
            }

        }

        protected void ButtonNuevo_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void ButtonGuardar_Click(object sender, EventArgs e)
        {
            bool paso = false;
            Clientes clientes = Llenaclase();
            int id = util.ToInt(Clienteid.Text);

            if (clientes.ClienteId == 0)
            {
                paso = repositorio.Guardar(clientes);
            }
            else
            {

                var cliente = repositorio.Buscar(id);

                if (cliente != null)
                {
                    paso = repositorio.Modificar(clientes);
                }
                else
                {

                    util.ShowToastr(this, "Articulo Id no existe para ser Modificado", "Informacion", "info");

                    return;
                }
            }



            if (paso)
            {


                util.ShowToastr(this, "Registrado satisfactoriamente", "Guardado!!", "success");
                Limpiar();

            }
            else
            {
                util.ShowToastr(this, "No pudo ser Registrado", "Fallo!!", "error");

            }

        }

        protected void ButtonEliminar_Click(object sender, EventArgs e)
        {

            int id = util.ToInt(Clienteid.Text);

            if (repositorio.Eliminar(id))
            {
                util.ShowToastr(this, "Articulo Eliminado", "Eliminado", "success");
                Limpiar();
            }
            else
            {
                util.ShowToastr(this, "No se pudo Eliminar", "Fallo", "error");
            }


        }
    }
}