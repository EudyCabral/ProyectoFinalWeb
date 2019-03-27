<%@ Page Title="Registro Usuario" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="RegistrodeUsuario.aspx.cs" Inherits="BusinessSoft.Registros.RegistrodeUsuario" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="shortcut icon" href="../Imagenes/usuario_32.png" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>


    <div class="rounded  " style="background-color: #000000; text-align: center;">
        <div class="panel-heading" style="font-family: 'Times New Roman', Times, serif; font-size: x-large; color: gold;">Registro de Usuarios</div>

    </div>


    <div class="panel-body">
        <div class="form-horizontal col-md-12" role="form">


            <%--UsuarioID--%>
            <div class="form-group row control-label" style="align-items: center;">

                <label style="font-size: medium;" for="usuarioid" class="col-md-3 input-sm">Usuario Id:</label>

                <div class="col-md-3 col-sm-2 col-xs-4 ">
                    <asp:TextBox ID="usuarioid" runat="server" placeholder="0" class="form-control input-sm" type="number" Style="font-size: medium"></asp:TextBox>
                </div>

                <asp:RequiredFieldValidator ID="UsuarioIdValidator" runat="server"  Text="*" ValidateRequestMode="Inherit" ControlToValidate="usuarioid" ValidationGroup="ValidacionBE" ForeColor="Red" Font-Bold="True" Font-Size="X-Large"></asp:RequiredFieldValidator>


                <div class="col-md-1 col-sm-2 col-xs-4">

                    <asp:Button ID="BuscarButton" runat="server" Text="Buscar" class="btn btn-info btn-md" OnClick="BuscarButton_Click" ValidationGroup="ValidacionBE" />
                </div>

            </div>

            <%--hasta aqui--%>




            <%--Nombres--%>
            <div class="form-group control-label row" style="align-items: center;">
                <label for="nombreTextbox" class="col-md-3  input-sm" style="font-size: medium">Nombre:</label>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <asp:TextBox ID="nombreTextbox" MaxLenght="40" runat="server" type="text" class="form-control input-sm" Style="font-size: medium"></asp:TextBox>

                </div>
                <asp:RequiredFieldValidator ID="NombreValidator" runat="server"  Text="*" ValidateRequestMode="Inherit" ControlToValidate="nombreTextbox" ValidationGroup="ValidacionGM" ForeColor="Red" Font-Bold="True" Font-Size="X-Large"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="^[a-zA-Z ]*$" ForeColor="Red" Font-Bold="True" Font-Size="Small" runat="server"  ControlToValidate="nombreTextbox" ValidationGroup="ValidacionGM" Text="Debe introducir solo letras."></asp:RegularExpressionValidator>
          
            </div>
            <%--hasta aqui--%>


            <%--Cedula--%>
            <div class="form-group control-label row" style="align-items: center;">
                <label for="cedulatextbox" class="col-md-3  input-sm" style="font-size: medium">Cedula:</label>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <asp:TextBox ID="cedulatextbox" runat="server" class="form-control input-sm" Style="font-size: medium"></asp:TextBox>
                      <ajaxToolkit:MaskedEditExtender ID="MaskedEditExtendercedula" BehaviorID="Cedulainput_MaskedEditExtender" MaskType="Number" ClearMaskOnLostFocus="true" runat="server" TargetControlID="cedulatextbox" Mask="999-9999999-9" />
            
                    </div>
                  <asp:RequiredFieldValidator ID="CedulaValidator" runat="server"  Text="*" ValidateRequestMode="Inherit" ControlToValidate="cedulatextbox" ValidationGroup="ValidacionGM" ForeColor="Red" Font-Bold="True" Font-Size="X-Large"></asp:RequiredFieldValidator>

         
            </div>
            <%--hasta aqui--%>


            <%--Telefono--%>
            <div class="form-group control-label row" style="align-items: center;">
                <label for="Telefonoinput" class="col-md-3 input-sm" style="font-size: medium">Tel&eacute;fono:</label>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <asp:TextBox ID="Telefonoinput" runat="server" class="form-control input-sm" type="tel" Style="font-size: medium" TextMode="Phone"></asp:TextBox>
                    <ajaxToolkit:MaskedEditExtender ID="MaskedEditExtender" BehaviorID="Telefonoinput_MaskedEditExtender" MaskType="Number " ClearMaskOnLostFocus="true" runat="server" TargetControlID="Telefonoinput" Mask="(999)-999-9999" />
                </div>
                   <asp:RequiredFieldValidator ID="Validator" runat="server"  Text="*" ValidateRequestMode="Inherit" ControlToValidate="Telefonoinput" ValidationGroup="ValidacionGM" ForeColor="Red" Font-Bold="True" Font-Size="X-Large"></asp:RequiredFieldValidator>

            </div>
            <%--hasta aqui--%>


            <%--E-mail--%>
            <div class="form-group control-label row" style="align-items: center;">
                <label for="emailinput" class="col-md-3 control-label input-sm" style="font-size: medium">E-mail:</label>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <asp:TextBox ID="emailinput" runat="server" class="form-control input-sm" type="tel" Style="font-size: medium"></asp:TextBox>
                  
                </div>
                  <asp:RequiredFieldValidator ID="emailValidator" runat="server"  Text="*" ValidateRequestMode="Inherit" ValidationGroup="ValidacionGM" ForeColor="Red" Font-Bold="True" Font-Size="X-Large" ControlToValidate="emailinput"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" Font-Bold="True" Font-Size="Small" runat="server"  ControlToValidate="emailinput" ValidationGroup="ValidacionGM" Text="E-mail Incorrecto"></asp:RegularExpressionValidator>
            </div>
            <%--hasta aqui--%>

            <%--Nombre de usuario--%>
            <div class="form-group control-label row" style="align-items: center;">
                <label for="Usuarioinput" class="col-md-3  input-sm" style="font-size: medium">Nombre Usuario:</label>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <asp:TextBox ID="Usuarioinput" type="text" runat="server" class="form-control input-sm" Style="font-size: medium"></asp:TextBox>
                
                </div>
         <asp:RequiredFieldValidator ID="usuarioValidator" runat="server" ErrorMessage="RequiredFieldValidator" Text="*" ValidateRequestMode="Inherit" ValidationGroup="ValidacionGM" ForeColor="Red" Font-Bold="True" Font-Size="X-Large" ControlToValidate="Usuarioinput"></asp:RequiredFieldValidator>

            </div>
            <%--hasta aqui--%>



            <%--Tipo Usuario--%>
            <div class="form-group control-label row" style="align-items: center;">
                <label for="TipodeAccesodrop" class="col-md-3  input-sm" style="font-size: medium">Tipo de Acceso:</label>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <asp:DropDownList ID="TipodeAccesodrop" runat="server" Class="form-control input-sm" Style="font-size: medium">
                        <asp:ListItem Selected="True">Administrador</asp:ListItem>
                        <asp:ListItem>Usuario</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <%--hasta aqui--%>




            <%--Contraseña--%>
            <div class="form-group control-label row" style="align-items: center;">
                <label for="pwd" class="col-md-3  input-sm" style="font-size: medium">Contraseña:</label>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <asp:TextBox type="password" ID="pwd" placeholder="Digite Contraseña" runat="server" class="form-control input-sm" Style="font-size: medium"></asp:TextBox>
                  
                </div>
                 <asp:RequiredFieldValidator ID="contraseñaValidator" runat="server" Text="*" ValidateRequestMode="Inherit" ValidationGroup="ValidacionGM" ForeColor="Red" Font-Bold="True" Font-Size="X-Large" ControlToValidate="pwd"></asp:RequiredFieldValidator>

            </div>
            <%--hasta aqui--%>



            <%--Confirmar Contraseña--%>
            <div class="form-group control-label row" style="align-items: center;">
                <label for="confirmarpwd" class="col-md-3 input-sm" style="font-size: medium">Confirmar Contraseña:</label>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <asp:TextBox type="password" ID="confirmarpwd" placeholder="Digite Contraseña" runat="server" class="form-control input-sm" Style="font-size: medium"></asp:TextBox>
                </div>

                 <asp:RequiredFieldValidator ID="confirCValidator" runat="server"  Text="*" ValidateRequestMode="Inherit" ValidationGroup="ValidacionGM" ForeColor="Red" Font-Bold="True" Font-Size="X-Large" ControlToValidate="confirmarpwd"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator" runat="server" ControlToCompare="pwd" ControlToValidate="confirmarpwd"   Text="Las Claves ingresadas son distintas." ValidationGroup="ValidacionGM" ForeColor="Red" Font-Bold="True" Font-Size="Small" ></asp:CompareValidator>
            </div>
            <%--hasta aqui--%>


            
        </div>

    </div>

            <%--Botones--%>
            <div class="panel">
                <div class="text-center">
                    <div class="form-group">
                        <asp:Button ID="ButtonNuevo" runat="server" Text="Nuevo" class="btn btn-info" OnClick="ButtonNuevo_Click1" />


                        <asp:Button ID="ButtonGuardar" runat="server" Text="Guardar" class="btn btn-success" OnClick="ButtonGuardar_Click1" ValidationGroup="ValidacionGM" />

                        <asp:Button ID="ButtonEliminar" runat="server" Text="Eliminar" class="btn btn-danger" OnClick="ButtonEliminar_Click1" ValidationGroup="ValidacionBE" />

                    </div>
                </div>
            </div>




    <%--asta aqui--%>
</asp:Content>
