using System;

using System.ComponentModel.DataAnnotations;


namespace Entidades
{
    public class EntradadeInversiones
    {
        [Key]
        public int InversionId { get; set; }
        public int EfectivoId { get; set; }
        public DateTime Fecha { get; set; }        
        public string Motivo { get; set; }
        public decimal Monto { get; set; }

        public EntradadeInversiones()
        {
            InversionId = 0;
            Fecha = DateTime.Now;
            EfectivoId = 0;
            Motivo = string.Empty;
            Monto = 0;
        }
    }
}
