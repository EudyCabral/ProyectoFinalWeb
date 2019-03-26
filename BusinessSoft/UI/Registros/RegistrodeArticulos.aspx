<%@ Page Title="Registro Articulo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrodeArticulos.aspx.cs" Inherits="BusinessSoft.Registros.RegistrodeArticulos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="rounded  " style="background-color: #000000; text-align: center;">
        <div class="panel-heading" style="font-family: 'Times New Roman', Times, serif; font-size: x-large; color: gold;">Registro de Articulo</div>

    </div>


    <div class="panel-body">
        <div class="form-horizontal col-md-12" role="form">


            <%--ArticuloID--%>
            <div class="form-group control-label row" style="align-items: center;">

                <label style="font-size: medium;" for="articuloid" class="col-md-3 input-sm">Articulo Id:</label>
                <div class="col-md-3 col-sm-2 col-xs-4">
                    <asp:TextBox ID="articuloid" runat="server" placeholder="0" class="form-control input-sm" type="number" Style="font-size: medium"></asp:TextBox>
                </div>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  Text="*" ValidateRequestMode="Inherit" ControlToValidate="articuloid" ValidationGroup="ValidacionBE" ForeColor="Red" Font-Bold="True" Font-Size="X-Large"></asp:RequiredFieldValidator>
      
                <div class="col-md-1 col-sm-2 col-xs-4">
                    <asp:Button ID="BuscarButton" runat="server" Text="Buscar" ValidationGroup="ValidacionBE" class="btn btn-info btn-md" OnClick="BuscarButton_Click" />
                </div>
            </div>

            <%--hasta aqui--%>




            <%--Nombres--%>
            <div class="form-group control-label row" style="align-items: center;">
                <label for="nombreTextbox" class="col-md-3  input-sm" style="font-size: medium">Nombre:</label>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <asp:TextBox ID="nombreTextbox" runat="server" type="text" class="form-control input-sm" Style="font-size: medium"></asp:TextBox>
                  </div>
                      <asp:RequiredFieldValidator ID="NombreValidator" runat="server"  Text="*" ValidateRequestMode="Inherit" ControlToValidate="nombreTextbox" ValidationGroup="ValidacionGM" ForeColor="Red" Font-Bold="True" Font-Size="X-Large"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="^[a-zA-Z ]*$" ForeColor="Red" Font-Bold="True" Font-Size="Small" runat="server"  ControlToValidate="nombreTextbox" ValidationGroup="ValidacionGM" Text="Debe introducir solo letras."></asp:RegularExpressionValidator>
          

            </div>
            <%--hasta aqui--%>


            <%--Inventario--%>
            <div class="form-group control-label row" style="align-items: center;">
                <label for="Inventario" class="col-md-3  input-sm" style="font-size: medium">Inventario:</label>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <asp:TextBox ID="Inventario" runat="server" class="form-control input-sm" Style="font-size: medium" ReadOnly="True"></asp:TextBox>
                  </div>
            </div>
            <%--hasta aqui--%>

        </div>

    </div>



            <%--Botones--%>
            <div class="panel">
                <div class="text-center">
                    <div class="form-group">
                        <asp:Button ID="ButtonNuevo" runat="server" Text="Nuevo" class="btn btn-info" OnClick="ButtonNuevo_Click"  />


                        <asp:Button ID="ButtonGuardar" runat="server" Text="Guardar" ValidationGroup="ValidacionGM" class="btn btn-success" OnClick="ButtonGuardar_Click"  />

                        <asp:Button ID="ButtonEliminar" runat="server" Text="Eliminar" ValidationGroup="ValidacionBE" class="btn btn-danger" OnClick="ButtonEliminar_Click"  />

                    </div>
                </div>
            </div>

 
</asp:Content>
