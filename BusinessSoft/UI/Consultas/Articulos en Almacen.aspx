﻿<%@ Page Title="Almacen de Articulos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Articulos en Almacen.aspx.cs" Inherits="BusinessSoft.UI.Consultas.Articulos_en_Almacen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="rounded  " style="background-color: #000000; text-align: center;">
        <div class="panel-heading" style="font-family: 'Times New Roman', Times, serif; font-size: x-large; color: gold;">Almacen de Articulos</div>

    </div>



    <div class="panel-body ">
        <div class="form-horizontal col-md-12" role="form">

            <%--Entradas de las consulta--%>
            <div class="form-group control-label" style="align-items: center;">

                <asp:Label ID="Labelfiltro" Style="font-size: medium;" runat="server" class="col-md-1 " Text="Filtro:"></asp:Label>

                <div class="col-md-2">
                    <asp:DropDownList ID="FiltroDropDownList" runat="server" Class="form-control input-sm" Style="font-size: medium">
                         <asp:ListItem>ID</asp:ListItem>
                        <asp:ListItem>Recibo Id</asp:ListItem>
                        <asp:ListItem>ArticuloId</asp:ListItem>
                        <asp:ListItem>Articulo</asp:ListItem>
                        <asp:ListItem>Descripcion</asp:ListItem>
                        <asp:ListItem>Cantidad</asp:ListItem>
                        <asp:ListItem>Monto</asp:ListItem>
                        <asp:ListItem Selected="True">Todo</asp:ListItem>
                    
                    </asp:DropDownList>
                </div>
                <asp:Label ID="Label1" Style="font-size: medium;" runat="server" Text="Criterio:" class="col-md-1 input-sm"></asp:Label>


                <div class="col-md-3">
                    <asp:TextBox ID="CriterioTextBox" runat="server" class="form-control input-sm" Style="font-size: medium"></asp:TextBox>

                </div>
                <div class="col-md-1">
                    <asp:Button ID="BuscarButton" runat="server" Text="Buscar" class="btn btn-info btn-md" OnClick="BuscarButton_Click"    />
                </div>
            </div>


            
          





        </div>
        </div>
    
        <%--Grid--%>
        

  
         <div class="form-horizontal col-md-12" role="form">
            <div class="table-responsive">
                <asp:GridView ID="DatosGridView" runat="server" class="table table-condensed table-responsive" CellPadding="6" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                    <AlternatingRowStyle BackColor="White" />
                     <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" />
                            <asp:BoundField DataField="ReciboId" HeaderText="Recibo Id" />
                            <asp:BoundField DataField="ArticuloId" HeaderText="Articulo Id" />
                            <asp:BoundField DataField="Articulo" HeaderText="Articulo" />
                            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" />
                         <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" />
                           <asp:BoundField DataField="Monto" HeaderText="Monto" />

                        </Columns>
                    <HeaderStyle BackColor="Black" Font-Bold="true" ForeColor="White" />
                    <RowStyle BackColor="#EFF3FB" />
                </asp:GridView>
            </div>

             
    
        <div class="form-group row" style="align-items: center;">

            <div class="col-md-3 col-sm-3 col-xl-3 col-3">
                <asp:Button ID="ImprimirButton" runat="server" Text="Imprimir" class="btn btn-success"  Enabled="True" EnableViewState="True" Visible="False"  />
            </div>

        </div>
             </div>
</asp:Content>
