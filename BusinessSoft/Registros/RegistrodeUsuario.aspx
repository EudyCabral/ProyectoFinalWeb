<%@ Page Title="Registro de Usuario" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="RegistrodeUsuario.aspx.cs" Inherits="BusinessSoft.Registros.RegistrodeUsuario" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="dropdown">
    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Registros
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="../Registros/RegistrodeUsuario.aspx">Usuario</a></li>
      <li><a href="#">Cliente</a></li>
      <li><a href="#">Articulos</a></li>
    </ul>
  </div>
 

   <div class="row">
        
           <h2 class="control-label col-sm-12">&nbsp;&nbsp;&nbsp; Registro de Usuario</h2>
      </div>

    <div class="column">         
         
    <div class="col-xs-4">



         <label for="nombrelb">Nombre :</label>
        <input class="form-control" id="nombreinput" type="text">
     

        <label for="Cedulalb">Cedula :</label>
        <input class="form-control" id="cedulainput" type="text">

         <label for="Telefonolb">Telefono :</label>
        <input class="form-control" id="Telefonoinput" type="text">

        <label for="Usuariolb">Nombre Usuario :</label>
        <input class="form-control" id="Usuarioinput" type="text">

       <label for="TipodeAccesolb">TipodeAcceso :</label>
         <div class="dropdown">
    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Seleccione Tipo
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="#">Administrador</a></li>
      <li><a href="#">Usuario</a></li>
       </ul>
  </div>

      <label for="pwd">Contraseña:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Digite Contraseña">
      
        <label for="pwd">Confirmar Contraseña:</label>
      <input type="password" class="form-control" id="confirmarpwd" placeholder="Digite Contraseña">
        
        
            
           <div class="container">
      <div class="row">         
         <div class="col-sm-offset-6">
          <button type="button" class="btn btn-info">Limpiar</button>
            <button type="button" class="btn btn-success">Guardar</button>
          <button type="button" class="btn btn-danger">Eliminar</button>
        </div>
              
        </div>

        </div>

      </div>

       </div>
      
     
      



</asp:Content>