using BLL;
using ENTIDADES;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace _1erParcial.Utilidades
{
    public static class util
    {

        public static int ToInt(string valor)
        {
            int retorno = 0;
            int.TryParse(valor, out retorno);

            return retorno;
        }

        public static decimal ToDecimal(string valor)
        {
            decimal retorno = 0;
            decimal.TryParse(valor, out retorno);

            return retorno;
        }

        public static void ShowToastr(this Page page, string message, string title, string type = "info")
        {

            page.ClientScript.RegisterStartupScript(page.GetType(), "toastr_message",
                  String.Format("toastr.{0}('{1}', '{2}');", type.ToLower(), message, title), addScriptTags: true);
        }

        public static string RetornarNombre(string nombre)
        {
            Repositorio<Articulos> repositorio = new Repositorio<Articulos>();
            int id = util.ToInt(nombre);
            string descripcion = string.Empty;
            var lista = repositorio.GetList(x => x.ArticuloId == id);
            foreach (var item in lista)
            {
                descripcion = item.Nombre;
            }

            return descripcion;
        }

        public static string RetornarNombreC(string nombre)
        {
            Repositorio<Clientes> repositorio = new Repositorio<Clientes>();
            int id = util.ToInt(nombre);
            string descripcion = string.Empty;
            var lista = repositorio.GetList(x => x.ClienteId == id);
            foreach (var item in lista)
            {
                descripcion = item.Nombre;
            }

            return descripcion;
        }


    }
}