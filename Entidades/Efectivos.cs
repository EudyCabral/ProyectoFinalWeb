﻿
using System.ComponentModel.DataAnnotations;


namespace ENTIDADES
{
    public class Efectivos
    {
        [Key]
        public int  EfectivoId { get; set; }
        public string Nombre { get; set; }
        public decimal Activo { get; set; }

        public Efectivos()
        {
            EfectivoId = 0;
            Nombre = string.Empty;
            Activo = 0;
        }
    }
}
