using System;

using System.ComponentModel.DataAnnotations;


namespace ENTIDADES
{
    public class EntradadeInversiones
    {
        [Key]
        public int InversionId { get; set; }
        public DateTime Fecha { get; set; }
        public int ActivodeNegocioId { get; set; }
        public string Motivo { get; set; }
        public decimal Suma { get; set; }

        public EntradadeInversiones()
        {
            InversionId = 0;
            Fecha = DateTime.Now;
            ActivodeNegocioId = 0;
            Motivo = string.Empty;
            Suma = 0;
        }
    }
}
