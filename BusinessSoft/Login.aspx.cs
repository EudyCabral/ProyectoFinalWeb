using _1erParcial.Utilidades;
using BLL;
using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusinessSoft
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Loginstatus_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
        }

        protected void ButtonLogon_Click(object sender, EventArgs e)
        {
            RepositorioUsuario repositorio = new RepositorioUsuario();

            Expression<Func<Usuarios, bool>> filtrar = x => true;


            Usuarios user = new Usuarios();



            if (repositorio.Verificar(TextBoxenterUsuario.Text, TextBoxcontrasena.Text))
            {

                FormsAuthentication.RedirectFromLoginPage(user.Usuario, true);
                
            }
            else
            {

                util.ShowToastr(this.Page, "Usuario y/o Contraseña Incorrectas", "Fallido", "error");

            }

        }
    }
}