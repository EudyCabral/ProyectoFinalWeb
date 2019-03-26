<%@ Page Title="Registro Cliente" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrodeCliente.aspx.cs" Inherits="BusinessSoft.Registros.RUsuario" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>


    <div class="rounded  " style="background-color: #000000; text-align: center;">
        <div class="panel-heading" style="font-family: 'Times New Roman', Times, serif; font-size: x-large; color: gold;">Registro de Cliente</div>

    </div>


    <div class="panel-body">
        <div class="form-horizontal col-md-12" role="form">


            <%--ClienteID--%>
            <div class="form-group row control-label" style="align-items: center;">

                <label style="font-size: medium;" for="Clienteid" class="col-md-3   input-sm">Cliente Id:</label>
                <div class="col-md-3 col-sm-2 col-xs-4">
                    <asp:TextBox ID="Clienteid" runat="server" placeholder="0" class="form-control input-sm" type="number" Style="font-size: medium"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="ClienteidValidator" runat="server" Text="*" ValidateRequestMode="Inherit" ControlToValidate="Clienteid" ValidationGroup="ValidacionBE" ForeColor="Red" Font-Bold="True" Font-Size="X-Large"></asp:RequiredFieldValidator>

                <div class="col-md-1 col-sm-2 col-xs-4">
                    <asp:Button ID="BuscarButton" runat="server" Text="Buscar" ValidationGroup="ValidacionBE" class="btn btn-info btn-md" OnClick="BuscarButton_Click" />
                </div>
            </div>

            <%--hasta aqui--%>




            <%--Nombres--%>
            <div class="form-group row control-label" style="align-items: center;">
                <label for="nombreTextbox" class="col-md-3 input-sm" style="font-size: medium">Nombre:</label>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <asp:TextBox ID="nombreTextbox"  MaxLenght="40" runat="server" type="text" class="form-control input-sm" Style="font-size: medium"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="NombreValidator" runat="server" Text="*" ValidateRequestMode="Inherit" ControlToValidate="nombreTextbox" ValidationGroup="ValidacionGM" ForeColor="Red" Font-Bold="True" Font-Size="X-Large"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="^[a-zA-Z ]*$" ForeColor="Red" Font-Bold="True" Font-Size="Small" runat="server" ControlToValidate="nombreTextbox" ValidationGroup="ValidacionGM" Text="Debe introducir solo letras."></asp:RegularExpressionValidator>

            </div>
            <%--hasta aqui--%>


            <%--Cedula--%>
            <div class="form-group row control-label" style="align-items: center;">
                <label for="cedulatextbox" class="col-md-3 input-sm" style="font-size: medium">Cedula:</label>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <asp:TextBox ID="cedulatextbox" runat="server" class="form-control input-sm" Style="font-size: medium"></asp:TextBox>
                    <ajaxToolkit:MaskedEditExtender ID="MaskedEditExtendercedula" BehaviorID="Cedulainput_MaskedEditExtender" MaskType="Number" ClearMaskOnLostFocus="true" runat="server" TargetControlID="cedulatextbox" Mask="999-9999999-9" />

                </div>
                <asp:RequiredFieldValidator ID="CedulaValidator" runat="server" Text="*" ValidateRequestMode="Inherit" ControlToValidate="cedulatextbox" ValidationGroup="ValidacionGM" ForeColor="Red" Font-Bold="True" Font-Size="X-Large"></asp:RequiredFieldValidator>

            </div>
            <%--hasta aqui--%>


            <%--Direccion--%>
            <div class="form-group row control-label" style="align-items: center;">
                <label for="direccioninput" class="col-md-3 input-sm" style="font-size: medium">Direccion:</label>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <asp:TextBox ID="direccioninput" runat="server" class="form-control input-sm" type="tel" Style="font-size: medium" TextMode="MultiLine"></asp:TextBox>
                </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="*" ValidateRequestMode="Inherit" ControlToValidate="direccioninput" ValidationGroup="ValidacionGM" ForeColor="Red" Font-Bold="True" Font-Size="X-Large"></asp:RequiredFieldValidator>

            </div>
            <%--hasta aqui--%>

            <%--Telefono--%>
            <div class="form-group row control-label" style="align-items: center;">
                <label for="Telefonoinput" class="col-md-3 input-sm" style="font-size: medium">Telefono:</label>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <asp:TextBox ID="Telefonoinput" type="text" runat="server" class="form-control input-sm" Style="font-size: medium"></asp:TextBox>
                    <ajaxToolkit:MaskedEditExtender ID="MaskedEditExtender" BehaviorID="Telefonoinput_MaskedEditExtender" MaskType="Number " ClearMaskOnLostFocus="true" runat="server" TargetControlID="Telefonoinput" Mask="(999)-999-9999" />

                </div>

                <asp:RequiredFieldValidator ID="Validator" runat="server" Text="*" ValidateRequestMode="Inherit" ControlToValidate="Telefonoinput" ValidationGroup="ValidacionGM" ForeColor="Red" Font-Bold="True" Font-Size="X-Large"></asp:RequiredFieldValidator>

            </div>
            <%--hasta aqui--%>
        </div>

    </div>


    <%--Botones--%>
    <div class="panel">
        <div class="text-center">
            <div class="form-group">
                <asp:Button ID="ButtonNuevo" runat="server" Text="Nuevo" class="btn btn-info" OnClick="ButtonNuevo_Click" />

                <asp:Button ID="ButtonGuardar" runat="server" ValidationGroup="ValidacionGM" Text="Guardar" class="btn btn-success" OnClick="ButtonGuardar_Click" />

                <asp:Button ID="ButtonEliminar" runat="server" Text="Eliminar" ValidationGroup="ValidacionBE" class="btn btn-danger" OnClick="ButtonEliminar_Click" />

            </div>
        </div>
    </div>





</asp:Content>
