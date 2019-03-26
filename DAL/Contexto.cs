using Entidades;
using ENTIDADES;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{

    public class Contexto : DbContext
    {


        public DbSet<Usuarios> Usuarios { get; set; }
        public DbSet<Clientes> clientes { get; set; }
        public DbSet<Articulos> articulos { get; set; }
        public DbSet<Efectivos> efectivos { get; set; }
        public DbSet<Recibos> recibos { get; set; }
        public DbSet<ReciboDetalles> recibosdetalles { get; set; }
        public DbSet<EntradadeInversiones> entradadeInversiones { get; set; }



        public Contexto() : base("ConStr")
        {
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
        }
    }

}
