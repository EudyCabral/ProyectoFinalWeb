using _1erParcial.Utilidades;
using BLL;
using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusinessSoft.UI.Consultas
{
    public partial class CUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Expression<Func<Usuarios, bool>> filtro = x => true;
        public void Mensaje()
        {

            Repositorio<Usuarios> repositorio = new Repositorio<Usuarios>();
            if (repositorio.GetList(filtro).Count() == 0)
            {
                util.ShowToastr(this.Page, "No hay Registros", "Informacion", "info");
                return;
            }

        }
        public void RetornaLista()
        {
     
            Repositorio<Usuarios> repositorio = new Repositorio<Usuarios>();

            int id = 0 ;

     
            switch (FiltroDropDownList.SelectedIndex)
            {
                case 0://ID
                    id = util.ToInt(CriterioTextBox.Text);

                    filtro = c => c.UsuarioId == id;


                    Mensaje();

                    break;

                case 1://  nombre


                    filtro = c => c.Nombre.Contains(CriterioTextBox.Text);

                    Mensaje();
                    break; 
                 


                case 2:// Cedula

                    filtro = c => c.Cedula.Contains(CriterioTextBox.Text);


                    Mensaje();
                    break;

                case 3:// Telefono
            
                        filtro = c => c.Telefono.Contains(CriterioTextBox.Text);

                    Mensaje();

                    break;

                case 4:// E-mail

                    filtro = c => c.Email.Contains(CriterioTextBox.Text);
                    Mensaje();
                    break;

          
                case 5://Usuario

                    filtro = c => c.Usuario.Contains(CriterioTextBox.Text);


                    Mensaje();
                      break;

             

                case 6://TipodeAcceso
                    filtro = c => c.TipodeAcceso.Contains(CriterioTextBox.Text);
                    Mensaje();
                    break;

                case 7://Todos

                                      filtro = x => true;
                    Mensaje();
                    break;

            }

            var lista = repositorio.GetList(filtro);
            Session["usuarios"] = lista;

            DatosGridView.DataSource = lista;
            DatosGridView.DataBind();

            if (DatosGridView.Rows.Count > 0)
            {
                ImprimirButton.Visible = true;
            }
            else { ImprimirButton.Visible = false; }

        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            RetornaLista();
        }

        protected void ImprimirButton_Click(object sender, EventArgs e)
        {


            Response.Write("<script>window.open('/UI/VentanasReportes/VReporteUsuarios.aspx','_blank');</script");
        

        }
    }
}