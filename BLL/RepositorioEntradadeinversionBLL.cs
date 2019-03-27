
using DAL;
using Entidades;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;


namespace BLL
{
    public class RepositorioEntradadeinversionBLL : Repositorio<EntradadeInversiones>
    {
        public override bool Guardar(EntradadeInversiones entrada)
        {
            bool paso = false;
            Contexto contexto = new Contexto();

            try
            {

                if (contexto.entradadeInversiones.Add(entrada) != null)
                {

                    var activo = contexto.efectivos.Find(entrada.EfectivoId);
                    //Incrementar la cantidad
                    activo.EfectivoCapital += entrada.Monto;


                    contexto.SaveChanges();
                    paso = true;
                }
                contexto.Dispose();

            }
            catch (Exception) { throw; }

            return paso;
        }


        public override bool Eliminar(int id)
        {

            bool paso = false;
            Contexto contexto = new Contexto();

            try
            {
                EntradadeInversiones entrada = contexto.entradadeInversiones.Find(id);

                if (entrada != null)
                {
                    var activo = contexto.efectivos.Find(entrada.EfectivoId);
                    //Incrementar la cantidad
                    activo.EfectivoCapital -= entrada.Monto;

                    contexto.Entry(entrada).State = EntityState.Deleted;
                 
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



        public override bool Modificar(EntradadeInversiones entrada)
        {

            bool paso = false;
            Repositorio<EntradadeInversiones> repositorio = new Repositorio<EntradadeInversiones>();
            
            try
            {


                _contexto = new Contexto();

                var EntradaAnterior = repositorio.Buscar(entrada.InversionId);
                //identificar la diferencia ya sea restada o sumada
                decimal diferencia;
                diferencia = entrada.Monto - EntradaAnterior.Monto;

                //Buscar
                var capitaldeNegocios = _contexto.efectivos.Find(EntradaAnterior.EfectivoId);

                //aplicar diferencia al inventario 
                capitaldeNegocios.EfectivoCapital += diferencia;


                _contexto.Entry(entrada).State = EntityState.Modified;

                if (_contexto.SaveChanges() > 0)
                {
                    paso = true;
                }
                _contexto.Dispose();

            }
            catch (Exception) { throw; }

            return paso;
        }



    }
}
