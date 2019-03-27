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
    public partial class EntradadeInversion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            fechaTextbox.Text = DateTime.Now.ToString("yyyy-MM-dd");
        }

        RepositorioEntradadeinversionBLL repositorio = new RepositorioEntradadeinversionBLL();

        private void Limpiar()
        {
            InversionID.Text = "";
            Motivotextbox.Text = "";
            Montoinput.Text = "";
            fechaTextbox.Text = DateTime.Now.ToString("yyyy-MM-dd");

        }

        private EntradadeInversiones Llenaclase()
        {
            EntradadeInversiones entrada = new EntradadeInversiones();

            entrada.InversionId = util.ToInt(InversionID.Text);
            entrada.EfectivoId = 1;
            entrada.Fecha = Convert.ToDateTime(fechaTextbox.Text);
            entrada.Motivo = Motivotextbox.Text;
            entrada.Monto = Math.Round(util.ToDecimal(Montoinput.Text),2);


            return entrada;
        }

        private void LlenaCampos(EntradadeInversiones entrada)
        {
            
            InversionID.Text = entrada.InversionId.ToString();

            fechaTextbox.Text = entrada.Fecha.ToString("yyyy-MM-dd");
            Motivotextbox.Text = entrada.Motivo.ToString();
            Montoinput.Text = entrada.Monto.ToString();
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            int id = util.ToInt(InversionID.Text);
            EntradadeInversiones entrada = repositorio.Buscar(id);
            

            if (entrada != null)
            {
                LlenaCampos(entrada);
            }
            else
            {
                util.ShowToastr(this, "Numero de registro no fue encontrado.", "Informacion", "info");
                Limpiar();
            }

        }

        protected void ButtonEliminar_Click(object sender, EventArgs e)
        {

            int id = util.ToInt(InversionID.Text);

            if (repositorio.Eliminar(id))
            {
                util.ShowToastr(this, "Registro Eliminado.", "Eliminado!!", "Success");
                Limpiar();
            }
            else
            {
                
                util.ShowToastr(this, "No Pudo Eliminar!!", "Fallido!!", "error");
            }

        }

        protected void ButtonGuardar_Click(object sender, EventArgs e)
        {

            bool paso = false;


            EntradadeInversiones entrada = Llenaclase();

            if (entrada.InversionId == 0)
            {
                paso = repositorio.Guardar(entrada);

            }
            else
            {

                var entry = repositorio.Buscar(entrada.InversionId);

                if (entry != null)
                {
                   
                    paso = repositorio.Modificar(entrada); 
                }
                else
                {
                    util.ShowToastr(this, "Numero de registro no Existe para modificar.", "Informacion", "info");
                }


            }

            if (paso == true)
            {

                util.ShowToastr(this, "Registro Exitoso!!", "Guardado!!", "success");

                Limpiar();
            }
            else
            {
                util.ShowToastr(this, "Registro Fallido!!", "Fallo!!", "error");
            }

        }

        protected void ButtonNuevo_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

    }
}