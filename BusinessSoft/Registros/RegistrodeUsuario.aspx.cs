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
    public partial class RegistrodeUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public Usuarios LlenaClase(Usuarios usuario)

        {

            int id;
            bool result = int.TryParse(usuarioid.Text, out id);
            if (result == true)
            {
                usuario.UsuarioId = id;
            }
            else
            {
                usuario.UsuarioId = 0;
            }
            usuario = (Usuarios)ViewState["Usuarios"];
            usuario.Nombre = nombreTextbox.Text;
            usuario.Cedula = cedulatextbox.Text;
            usuario.Telefono = Telefonoinput.Text;
            usuario.Usuario = Usuarioinput.Text;
            usuario.TipodeAcceso = TipodeAccesodrop.Text;
            return usuario;

        }


        private void LlenaCampos(Usuarios usuarios)

        {

            usuarioid.Text = usuarios.UsuarioId.ToString();

            nombreTextbox.Text = usuarios.Nombre;

            cedulatextbox.Text = usuarios.Cedula;


            Telefonoinput.Text = usuarios.Telefono;

            Usuarioinput.Text = usuarios.Usuario;


            TipodeAccesodrop.SelectedValue = Convert.ToInt32(usuarios.TipodeAcceso).ToString();

            pwd.Text = usuarios.Contraseña;

        }

        private void Limpiar()

        {

          

            usuarioid.Text = "";

            nombreTextbox.Text = "";

            cedulatextbox.Text = "";


            Telefonoinput.Text = "";

            Usuarioinput.Text = "";


            TipodeAccesodrop.SelectedValue = null;

            pwd.Text = "";
            confirmarpwd.Text = "";
        }

        protected void ButtonNuevo_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void ButtonGuardar_Click(object sender, EventArgs e)
        {
            Repositorio<Usuarios> repositorio = new Repositorio<Usuarios>();

            Usuarios usuarios = new Usuarios();

            bool paso = false;



            //todo: validaciones adicionales

            LlenaClase(usuarios);



            if (usuarios.UsuarioId == 0)

                paso = repositorio.Guardar(usuarios);

            else

                paso = repositorio.Modificar(usuarios);



            if (paso)

            {

                MostrarMensaje(TiposMensaje.Success, "Transaccion Exitosa!");

                Limpiar();

            }

            else

                MostrarMensaje(TiposMensaje.Error, "No fue posible terminar la transacción");


        }

        void MostrarMensaje(TiposMensaje tipo, string mensaje)

        {

            ErrorLabel.Text = mensaje;



            if (tipo == TiposMensaje.Success)

                ErrorLabel.CssClass = "alert-success";

            else

                ErrorLabel.CssClass = "alert-danger";

        }
    }
}