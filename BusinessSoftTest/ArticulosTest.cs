using System;
using BLL;
using Entidades;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace BusinessSoftTest
{
    [TestClass]
    public class UnitTest1
    {
        Articulos articulos = new Articulos();

        Repositorio<Articulos> BLL = new Repositorio<Articulos>();

        [TestMethod()]
        public void GuardarTest()
        {
            bool paso;
  
            articulos.ArticuloId = 0;
            articulos.Nombre = "Plancha";
            articulos.Inventario = 0;
            paso = BLL.Guardar(articulos);
            Assert.AreEqual(paso, true);
        }



        [TestMethod()]
        public void EditarTest()
        {
            bool paso;
            Articulos articulos = new Articulos();
            articulos.ArticuloId = 1;
            articulos.Nombre = "tanque";
            articulos.Inventario = 0;
            paso = BLL.Guardar(articulos);
            Assert.AreEqual(paso, true);
        }

        [TestMethod()]
        public void BuscarTest()
        {
            int id = 1;
            Articulos articulos = new Articulos();
            articulos = BLL.Buscar(id);

            Assert.IsNotNull(articulos);
        }

        [TestMethod()]
        public void GetListTest()
        {
            var LISTAR = BLL.GetList(X => true);
            Assert.IsNotNull(LISTAR);
        }

        [TestMethod()]
        public void EliminarTest()
        {
            bool paso;
            int id = 2;
            paso = BLL.Eliminar(id);

            Assert.AreEqual(paso, true);
        }
    }
}
