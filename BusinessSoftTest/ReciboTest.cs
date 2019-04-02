using System;
using BLL;
using Entidades;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace BusinessSoftTest
{
    [TestClass]
    public class ReciboTest
    {
        Recibos recibos = new Recibos();
        ReciboBLL BLL = new ReciboBLL();

        [TestMethod()]
        public void GuardarTest()
        {
         
            bool paso;
            recibos.ReciboId = 0;
            recibos.EfectivoId = 1;
            recibos.ClienteId = 1;
            recibos.NombredeCliente = "Emilio Lopez";
            recibos.Fecha = DateTime.Now;
            recibos.MontoTotal = 5000;
            paso = BLL.Guardar(recibos);
            Assert.AreEqual(paso, true);
        }

        [TestMethod()]
        public void ModificarTest()
        {
            Recibos recibos = new Recibos();
            bool paso;
            recibos.ReciboId = 1;
            recibos.EfectivoId = 1;
            recibos.ClienteId = 1;
            recibos.NombredeCliente = "albert Lopez";
            recibos.Fecha = DateTime.Now;
            recibos.MontoTotal = 10000;
            paso = BLL.Modificar(recibos);
            Assert.AreEqual(paso, true);

        }

        [TestMethod()]
        public void BuscarTest()
        {
            int id = 1;
            Recibos recibos = new Recibos();
            recibos = BLL.Buscar(id);

            Assert.IsNotNull(recibos);
        }



        [TestMethod()]
        public void GetListTest()
        {
            var listar = BLL.GetList(x => true);
            Assert.IsNotNull(listar);
        }


        [TestMethod()]
        public void EliminarTest()
        {
            int id = 1;
            bool paso;
            paso = BLL.Eliminar(id);

            Assert.AreEqual(paso, true);
        }


    }
}
