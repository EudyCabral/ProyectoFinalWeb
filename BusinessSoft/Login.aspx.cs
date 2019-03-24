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

namespace BusinessSoft.Login
{
    public partial class Login : System.Web.UI.Page
    {
        private Repositorio<Usuarios> BLL = new Repositorio<Usuarios>();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

     
        protected void ButtonLogin_Click1(object sender, EventArgs e)
        {
            Expression<Func<Usuarios, bool>> filtrar = x => true;

            Usuarios user = new Usuarios();

            filtrar = t => t.Usuario.Equals(TextBoxenterUsuario.Text) && t.Contraseña.Equals(TextBoxcontrasena.Text);

            if (BLL.GetList(filtrar).Count() != 0)
                FormsAuthentication.RedirectFromLoginPage(user.Usuario, true);
            else
            {
                return;
            }
        }
    }
}