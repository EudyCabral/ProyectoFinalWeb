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
                 <asp:TextBox ID="usuarioid" runat="server" class="form-control " type="number"></asp:TextBox>

                <label for="nombreTextbox">Nombre :</label>
                <asp:TextBox ID="nombreTextbox" runat="server" class="form-control" type="text"></asp:TextBox>
              

                <label for="cedulatextbox">Cedula :</label>
                <asp:TextBox class="form-control" runat="server" id="cedulatextbox" type="text"></asp:TextBox>

                <label for="Telefonoinput">Telefono :</label>
                <asp:TextBox runat="server" class="form-control" id="Telefonoinput" type="tel"></asp:TextBox>

                <label for="Usuarioinput">Nombre Usuario :</label>
                <asp:TextBox runat="server" class="form-control" id="Usuarioinput" type="text" ></asp:TextBox>

         
                 
                <label for="TipodeAccesodrop">TipodeAcceso :</label>
                  <asp:DropDownList class="form-control" ID="TipodeAccesodrop" runat="server" for="TipodeAccesolb">
                    <asp:ListItem>Administrador</asp:ListItem>
                    <asp:ListItem>Usuario</asp:ListItem>
                    
                </asp:DropDownList>
             
                <label for="pwd">Contraseña:</label>
                <asp:TextBox runat="server" type="password" class="form-control" id="pwd" placeholder="Digite Contraseña"></asp:TextBox>

                <label for="confirmarpwd">Confirmar Contraseña:</label>
                
                <asp:TextBox type="password" runat="server" class="form-control" id="confirmarpwd" placeholder="Digite Contraseña"></asp:TextBox>
                    
            </div> 

        </div>

       
    </div>

       <div class="panel">
                <div class="text-center">
                    <asp:Label  id="ErrorLabel" runat="server" Text=""></asp:Label>
                    <div class="form-group">
                      
                
                  
                
                <asp:Button  ID="ButtonNuevo" runat="server" Text="Nuevo" class="btn btn-info" OnClick="ButtonNuevo_Click"    />

               
                <asp:Button ID="ButtonGuardar" runat="server" Text="Guardar" class="btn btn-success" OnClick="ButtonGuardar_Click"    />
                     
                <asp:Button ID="ButtonEliminar" runat="server"  Text="Eliminar" class="btn btn-danger" OnClick="ButtonEliminar_Click"   />
                     
                       
                 </div>  </div>    
           </div>

</asp:Content>
