using System;
using BLL;
using Entidades;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace BusinessSoftTest
{
    [TestClass]
    public class EntradadeInversiontest
    {
        RepositorioEntradadeinversionBLL BLL = new RepositorioEntradadeinversionBLL();
        EntradadeInversiones activos = new EntradadeInversiones();

        [TestMethod()]
        public void GuardarTest()
        {
          
            bool paso;
            activos.InversionId = 0;
            activos.EfectivoId = 1;
            activos.Fecha = DateTime.Now;
            activos.Motivo = "Inicio";
            activos.Monto = 5000;
            paso = BLL.Guardar(activos);
            Assert.AreEqual(paso, true);
        }



        [TestMethod()]
        public void ModificarTest()
        {
            bool paso;
            activos.InversionId = 1;
            activos.EfectivoId = 1;
            activos.Fecha = DateTime.Now;
            activos.Motivo = "Inicio";
            activos.Monto = 2500;
            paso =  BLL.Modificar(activos);
            Assert.AreEqual(paso, true);
        }

        [TestMethod()]
        public void BuscarTest()
        {
            int id = 1;
           
            activos = BLL.Buscar(id);
            Assert.IsNotNull(activos);
        }

        [TestMethod()]
        public void GetListTest()
        {
            var activos = BLL.GetList(x => true);
            Assert.IsNotNull(activos);
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
