using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;


namespace Entidades
{

    [Serializable]
    public class Recibos
    {
        [Key]
        public int ReciboId{ get; set; }
        public int EfectivoId { get; set; }
        public int ClienteId { get; set; }
        public string NombredeCliente { get; set; }
        public DateTime Fecha { get; set; }
        public decimal MontoTotal { get; set; }
        public decimal Abono { get; set; }
        public DateTime UltimaFechadeVigencia { get; set; }
        

        public virtual List<ReciboDetalles> Detalle { get; set; }

        public Recibos()
        {
            this.Detalle = new List<ReciboDetalles>();
            ReciboId = 0;
            EfectivoId = 0;
            ClienteId = 0;
            NombredeCliente = string.Empty;
            Fecha = DateTime.Now;
            MontoTotal = 0;
            Abono = 0;
            UltimaFechadeVigencia = DateTime.Now;
         
        }

        public void AgregarDetalle(int iD, int reciboId,int articuloId,string articulo, string descripcion, int cantidad, decimal monto)
        {
            Detalle.Add(new ReciboDetalles(iD,reciboId,articuloId,articulo, descripcion, cantidad, monto));
        }

    }
}
