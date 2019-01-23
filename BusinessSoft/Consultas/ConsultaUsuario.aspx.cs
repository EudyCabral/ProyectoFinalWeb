using BLL;
using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusinessSoft.Consultar
{
    public partial class ConsultaUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        protected void ButtonBuscar_Click1(object sender, EventArgs e)
        {
            Expression<Func<Usuarios, bool>> filtro = x => true;
            Repositorio<Usuarios> repositorio = new Repositorio<Usuarios>();

            int id;
            switch (TipodeFiltro.SelectedIndex)
            {
                case 0://ID
                    id = Convert.ToInt32(TextCriterio.Text);
                    filtro = c => c.UsuarioId == id;
                    break;
                case 1:// nombre
                    filtro = c => c.Nombre.Contains(TextCriterio.Text);
                    break;
            }

            UsuarioGridView.DataSource = repositorio.GetList(filtro);
            UsuarioGridView.DataBind();
        }
    }
    
}