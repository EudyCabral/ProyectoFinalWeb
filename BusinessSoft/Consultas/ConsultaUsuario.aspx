<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultaUsuario.aspx.cs" Inherits="BusinessSoft.Consultar.ConsultaUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
                  <div class="container form-group"> 
                      
                <label for="TipodeFiltro">Filtro:</label>
                  <asp:DropDownList class="form-control" ID="TipodeFiltro" runat="server" for="TipodeFiltro" Width="350px" >
                    <asp:ListItem>ID</asp:ListItem>
                    <asp:ListItem>Usuario</asp:ListItem>
                      <asp:ListItem>Nombre</asp:ListItem>
                      <asp:ListItem>Cedula</asp:ListItem>
                      <asp:ListItem>Telefono</asp:ListItem>
                      <asp:ListItem>Tipo de Acceso</asp:ListItem>
                    
                </asp:DropDownList>
                      </div>
             
</asp:Content>
