
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ENTIDADES
{

    [Serializable]
    public class ReciboDetalles
    {
        [Key]
        public int ID { get; set; }
        public int ReciboId { get; set; }
        public int ArticuloId { get; set; }
        public string Articulo { get; set; }
        public string Descripcion { get; set; }
        public int Cantidad { get; set; }
        public decimal Monto { get; set; }

 

        [ForeignKey("ArticuloId")]
        public virtual Articulos articulos { get; set; }



        public ReciboDetalles()
        {
            ID = 0;
            ReciboId = 0;
        }

        public ReciboDetalles(int iD, int reciboId,int articuloId,string articulo, string descripcion, int cantidad, decimal monto)
        {
            ID = iD;
            ReciboId = reciboId;
            ArticuloId = articuloId;
            Articulo = articulo;
            Descripcion = descripcion;
            Cantidad = cantidad;
            Monto = monto;
    
        }
    }
}
