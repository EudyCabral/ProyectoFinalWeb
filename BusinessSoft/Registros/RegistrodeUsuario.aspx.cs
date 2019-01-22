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

        public Usuarios LlenaClase()

        {
            Usuarios usuario = new Usuarios();
          
            usuario.UsuarioId = Convert.ToInt32(usuarioid.Text);
            usuario.Nombre = nombreTextbox.Text;
            usuario.Cedula = cedulatextbox.Text;
            usuario.Telefono = Telefonoinput.Text;
            usuario.Usuario = Usuarioinput.Text;
            usuario.TipodeAcceso = TipodeAccesodrop.Text;
            usuario.Contraseña = pwd.Text;
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

        

        void MostrarMensaje(TiposMensaje tipo, string mensaje)

        {

            ErrorLabel.Text = mensaje;



            if (tipo == TiposMensaje.Success)

                ErrorLabel.CssClass = "alert-success";

            else

                ErrorLabel.CssClass = "alert-danger";

        }

        protected void ButtonGuardar_Click(object sender, EventArgs e)
        {
            Repositorio<Usuarios> repositorio = new Repositorio<Usuarios>();

            Usuarios usuarios = LlenaClase();

            bool paso = false;



            //todo: validaciones adicionales

            



            if (usuarios.UsuarioId == 0)

                paso = repositorio.Guardar(usuarios);

            else

                paso = repositorio.Modificar(usuarios);



            if (paso)

            {

                MostrarMensaje(TiposMensaje.Success, "Registro Exitoso!");



            }

            else

                MostrarMensaje(TiposMensaje.Error, "No fue posible Guardar el Registro");

            Limpiar();
        }
    }
}