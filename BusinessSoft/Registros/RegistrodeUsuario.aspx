<%@ Page Title="Registro de Usuario" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="RegistrodeUsuario.aspx.cs" Inherits="BusinessSoft.Registros.RegistrodeUsuario" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div  class="form-group container">
        <div class="row">


            <div class="col-sm-4">


                <h2 class="control-label col-sm-12">&nbsp;&nbsp;&nbsp; Registro de Usuario</h2>

                 <label for="usuarioid">UsuarioId :</label>
                <input class="form-control" id="usuarioid" type="text">

                <label for="nombreinput">Nombre :</label>
                <input class="form-control" id="nombreinput" type="text">


                <label for="cedulainput">Cedula :</label>
                <input class="form-control" id="cedulainput" type="text">

                <label for="Telefonoinput">Telefono :</label>
                <input class="form-control" id="Telefonoinput" type="tel">

                <label for="Usuarioinput">Nombre Usuario :</label>
                <input class="form-control" id="Usuarioinput" type="text">

                  <br />
                 
                <label for="TipodeAccesolb">TipodeAcceso :</label>
                  <asp:DropDownList ID="TipodeAccesolb" runat="server" for="TipodeAccesolb">
                    <asp:ListItem>Administrador</asp:ListItem>
                    <asp:ListItem>Usuario</asp:ListItem>
                
                </asp:DropDownList>
                  <br />

                <label for="pwd">Contraseña:</label>
                <input type="password" class="form-control" id="pwd" placeholder="Digite Contraseña">

                <label for="confirmarpwd">Confirmar Contraseña:</label>
                <input type="password" class="form-control" id="confirmarpwd" placeholder="Digite Contraseña">

                
            </div> 

        </div>

       
    </div>

       <div class="panel">
                <div class="text-center">
                    <div class="form-group">
        
         
              

                <button ID="ButtonLimpiar" type="button" class="btn btn-info">Limpiar</button>
                <button ID="ButtonGuardar" type="button" class="btn btn-success">Guardar</button>
                <button ID="ButtonEliminar" type="button" class="btn btn-danger">Eliminar</button>
                     
                 </div>  </div>    
           </div>

</asp:Content>
