using BLL;
using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusinessSoft.UI.Cuentas
{
    public partial class Efectivo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ActualizaCuenta();
        }

        protected void Buttonrefrescar_Click(object sender, EventArgs e)
        {
            ActualizaCuenta();
        }


        public void ActualizaCuenta()
        {
            Repositorio<Efectivos> repositorio = new Repositorio<Efectivos>(); 
            Efectivos efectivo = repositorio.Buscar(1);
            TextBoxefectivo.Text = $"${efectivo.EfectivoCapital.ToString()}";
            
        }

    }
}