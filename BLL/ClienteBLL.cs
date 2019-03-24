
using DAL;
using ENTIDADES;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;


namespace BLL
{
    public class ClienteBLL
    {

        public static bool Guardar(Clientes cliente)
        {
            bool paso = false;
            Contexto contexto = new Contexto();

            try
            {

                if (contexto.clientes.Add(cliente) != null)
                {
                    contexto.SaveChanges();
                    paso = true;
                }
                contexto.Dispose();

            }
            catch (Exception) { throw; }

            return paso;
        }


        public static bool Eliminar(int id)
        {

            bool paso = false;
            Contexto contexto = new Contexto();

            try
            {
                Clientes cliente = contexto.clientes.Find(id);

                if (cliente != null)
                {
                    contexto.Entry(cliente).State = EntityState.Deleted;
                }

                if (contexto.SaveChanges() > 0)
                {
                    paso = true;
                    contexto.Dispose();
                }


            }
            catch (Exception) { throw; }

            return paso;
        }



        public static bool Editar(Clientes cliente)
        {

            bool paso = false;
            Contexto contexto = new Contexto();

            try
            {
                contexto.Entry(cliente).State = EntityState.Modified;

                if (contexto.SaveChanges() > 0)
                {
                    paso = true;
                }
                contexto.Dispose();

            }
            catch (Exception) { throw; }

            return paso;
        }



        public static   Clientes Buscar(int id)
        {

           Clientes cliente = new Clientes();
            Contexto contexto = new Contexto();

            try
            {
                cliente = contexto.clientes.Find(id);
                contexto.Dispose();
            }
            catch (Exception) { throw; }
            return cliente;

        }



        public static List<Clientes> GetList(Expression<Func<Clientes, bool>> expression)
        {
            List<Clientes> cliente = new List<Clientes>();
            Contexto contexto = new Contexto();

            try
            {
                cliente = contexto.clientes.Where(expression).ToList();
                contexto.Dispose();

            }
            catch (Exception) { throw; }
            return cliente;
        }

        public static string RetornarNombre(string nombre)
        {
            string descripcion = string.Empty;
            var lista = GetList(x => x.Nombre.Equals(nombre));
            foreach (var item in lista)
            {
                descripcion = item.Nombre;
            }

            return descripcion;
        }
    }
}
