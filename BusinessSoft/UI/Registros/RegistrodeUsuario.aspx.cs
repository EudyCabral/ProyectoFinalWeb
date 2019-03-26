﻿using _1erParcial.Utilidades;
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

            usuario.UsuarioId = util.ToInt(usuarioid.Text);
            usuario.Nombre = nombreTextbox.Text;
            usuario.Cedula = cedulatextbox.Text;
            usuario.Telefono = Telefonoinput.Text;
            usuario.Email = emailinput.Text;
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
            emailinput.Text = usuarios.Email;
            Usuarioinput.Text = usuarios.Usuario;
            TipodeAccesodrop.Text = usuarios.TipodeAcceso;
            pwd.Text = usuarios.Contraseña;

        }

        private void Limpiar()
        {
            usuarioid.Text = "";
            nombreTextbox.Text = "";
            cedulatextbox.Text = "";
            Telefonoinput.Text = "";
            emailinput.Text = "";
            Usuarioinput.Text = "";
            TipodeAccesodrop.SelectedValue = null;
            pwd.Text = "";
            confirmarpwd.Text = "";
        }



        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            Repositorio<Usuarios> repositorio = new Repositorio<Usuarios>();

            Usuarios usuario = repositorio.Buscar(Convert.ToInt32(usuarioid.Text));
            if (usuario != null)
            {
                LlenaCampos(usuario);
            }
            else
            {
                util.ShowToastr(this, "Numero de registro no fue encontrado.", "Informacion", "info");
                Limpiar();
            }
        }

        protected void ButtonNuevo_Click1(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void ButtonGuardar_Click1(object sender, EventArgs e)
        {
            Repositorio<Usuarios> repositorio = new Repositorio<Usuarios>();

            Usuarios usuarios = LlenaClase();

            bool paso = false;



            //todo: validaciones adicionales

            if (usuarios.UsuarioId == 0)

                paso = repositorio.Guardar(usuarios);

            else
            {


                var user = repositorio.Buscar(usuarios.UsuarioId);

                if (user != null)
                {
                    paso = repositorio.Modificar(usuarios);
                }
                else
                {
                    util.ShowToastr(this, "Numero de registro no fue encontrado. para ser Modificado", "Informacion", "info");
                }
            }


            if (paso)

            {
                util.ShowToastr(this, "Regiistro Exitoso.", "Guardado", "success");

                Limpiar();
            }

            else
                util.ShowToastr(this, "Registro no pudo ser Almacenado.", "Fallo!!", "error");
           
        }

        protected void ButtonEliminar_Click1(object sender, EventArgs e)
        {
            Repositorio<Usuarios> repositorio = new Repositorio<Usuarios>();

            int id = Convert.ToInt32(usuarioid.Text);

            var usuario = repositorio.Buscar(id);

            if (usuario == null)

            { util.ShowToastr(this, "Usuario no existe para ser eliminado.", "Informacion", "info"); }

            else
            {

                repositorio.Eliminar(id);
                util.ShowToastr(this, "Usuario Eliminado.", "Exito", "success");
            }
        }
    }
}