using System;
using BLL;
using Entidades;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace BusinessSoftTest
{
    [TestClass]
    public class ClientesTest
    {

        Repositorio<Clientes> bll = new Repositorio<Clientes>();
    
        [TestMethod]
        public void GuardarTest()
        {
    
            bool paso;
            Clientes clientes = new Clientes();
            clientes.ClienteId = 0;
            clientes.Nombre = "Eudy Cabral Burgos";
            clientes.Cedula = "402-7896542-1";
            clientes.Direccion = "Urb. Turin";
            clientes.Telefono = "809-712-4606";
            paso = bll.Guardar(clientes);
            Assert.AreEqual(paso, true);
        }


        [TestMethod()]
        public void ModificarTest()
        {
            bool paso;
            Clientes clientes = new Clientes();
            clientes.ClienteId = 2;
            clientes.Nombre = "Eudes Rafael Cabral de la Cruz Dr";
            clientes.Cedula = "402-7896542-1";
            clientes.Direccion = "Urb. Turin";
            clientes.Telefono = "809-712-4606";
            paso = bll.Guardar(clientes);
            Assert.AreEqual(paso, true);
        }

        [TestMethod()]
        public void BuscarTest()
        {
            int id = 1;
            Clientes clientes = new Clientes();
            clientes = bll.Buscar(id);
            Assert.IsNotNull(clientes);
        }

        [TestMethod()]
        public void GetListTest()
        {
            var listar = bll.GetList(x => true);
            Assert.IsNotNull(listar);
        }

        [TestMethod()]
        public void EliminarTest()
        {
            bool paso;
            int id = 2;
            paso = bll.Eliminar(id);
            Assert.AreEqual(paso, true);
        }
    }
}
