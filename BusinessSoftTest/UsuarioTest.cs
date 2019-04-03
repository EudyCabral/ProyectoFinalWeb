using System;
using BLL;
using Entidades;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace BusinessSoftTest
{
    [TestClass]
    public class UsuarioTest
    {
        Usuarios usuarios = new Usuarios();
        Repositorio<Usuarios> BLL = new Repositorio<Usuarios>();

        [TestMethod()]
        public void GuardarTest()
        {
     
            bool paso;
            usuarios.UsuarioId = 0;
            usuarios.Nombre = "Eudy Cabral";
            usuarios.Usuario = "Eudy02";
            usuarios.Cedula = "15269522017";
            usuarios.Email = "eudy.2011@hotmail.com";
            usuarios.Telefono = "152695220";
            usuarios.Contraseña = "122017";
            usuarios.TipodeAcceso = "Admin";
            paso = BLL.Guardar(usuarios);
            Assert.AreEqual(paso, true);
           
           
      
        }


        [TestMethod()]
        public void EditarTest()
        {
          
            bool paso;
            usuarios.UsuarioId = 2;
            usuarios.Nombre = "Eudes Cabral";
            usuarios.Usuario = "Eudes02";
            usuarios.Contraseña = "122017";
            usuarios.Cedula = "15269522017";
            usuarios.Email = "eudy.2011@hotmail.com";
            usuarios.Telefono = "152695220";
            usuarios.TipodeAcceso = "Admin";
            paso = BLL.Guardar(usuarios);
            Assert.AreEqual(paso, true);
        }

        [TestMethod()]
        public void BuscarTest()
        {
            int id = 2;
            Usuarios usuarios = new Usuarios();
            usuarios = BLL.Buscar(id);
            Assert.IsNotNull(usuarios);
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
            bool paso;
            int id = 2;
            paso = BLL.Eliminar(id);
            Assert.AreEqual(paso, true);
        }
    }
}
