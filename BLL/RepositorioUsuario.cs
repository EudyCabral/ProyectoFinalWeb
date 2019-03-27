using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class RepositorioUsuario : Repositorio<Usuarios>
    {
        public bool Verificar(string usuario, string contrasena)
        {
            bool paso = false;

            Repositorio<Usuarios> BLL = new Repositorio<Usuarios>();
            Expression<Func<Usuarios, bool>> filtrar = x => true;

            filtrar = t => t.Usuario.Equals(usuario) && t.Contraseña.Equals(contrasena);

            if (BLL.GetList(filtrar).Count() != 0)
            {
                paso = true;
            }

            return paso;
        }
    }
}
