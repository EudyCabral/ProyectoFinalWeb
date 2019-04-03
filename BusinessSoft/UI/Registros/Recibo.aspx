<%@ Page Title="Recibo" Language="C#" EnableEventValidation="false" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Recibo.aspx.cs" Inherits="BusinessSoft.UI.Registros.Recibo" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>


    <div class="rounded  " style="background-color: #000000; text-align: center;">
        <div class="panel-heading" style="font-family: 'Times New Roman', Times, serif; font-size: x-large; color: gold;">Registro de Recibo</div>

    </div>


    <div class="panel-body">
        <div class="form-horizontal col-md-12" role="form">


            <%--ReciboId--%>
            <div class="form-group row control-label" style="align-items: center;">

                <label style="font-size: medium;" for="ReciboId" class="col-md-3   input-sm">Recibo Id:</label>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <asp:TextBox ID="ReciboId" runat="server" placeholder="0" class="form-control input-sm" type="number" Style="font-size: medium"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="ClienteidValidator" runat="server" Text="*" ValidateRequestMode="Inherit" ControlToValidate="ReciboId" ValidationGroup="ValidacionBE" ForeColor="Red" Font-Bold="True" Font-Size="X-Large"></asp:RequiredFieldValidator>

                <div class="col-md-1 col-sm-2 col-xs-4">
                    <asp:Button ID="BuscarButton" runat="server" Text="Buscar" ValidationGroup="ValidacionBE" class="btn btn-info btn-md" OnClick="BuscarButton_Click" />
                </div>

                <label style="font-size: medium;" for="FechaTextbox" class="col-md-2   input-sm">Fecha:</label>

                <div class="col-md-2 col-sm-6 col-xs-6">
                    <asp:TextBox ID="FechaTextBox" runat="server" placeholder="0" class="form-control input-sm" Style="font-size: medium" TextMode="Date" ></asp:TextBox>
                </div>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidatorFecha" runat="server" Text="*" ValidateRequestMode="Inherit" ControlToValidate="FechaTextBox" ValidationGroup="ValidacionGM" ForeColor="Red" Font-Bold="True" Font-Size="X-Large"></asp:RequiredFieldValidator>

            </div>

            <%--hasta aqui--%>




            <%--Cliente--%>
            <div class="form-group row control-label" style="align-items: center;">
                <label for="ClienteDropDownList" class="col-md-3 input-sm" style="font-size: medium">Cliente:</label>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <asp:DropDownList ID="ClienteDropDownList" Style="font-size: medium" class="form-control input-sm " runat="server"></asp:DropDownList>

                </div>

            </div>
            <%--hasta aqui--%>


            <%--Articulo--%>
            <div class="form-group row control-label" style="align-items: center;">
                <label for="ArticuloDropDownList" class="col-md-3 input-sm" style="font-size: medium">Articulo:</label>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <asp:DropDownList ID="ArticuloDropDownList" class="form-control input-sm " Style="font-size: medium" runat="server"></asp:DropDownList>

                </div>

            </div>
            <%--hasta aqui--%>


            <%--Descripcion--%>
            <div class="form-group row control-label" style="align-items: center;">
                <label for="Descripcion" class="col-md-3 input-sm" style="font-size: medium">Descripci&oacute;n:</label>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <asp:TextBox ID="Descripcion" runat="server" class="form-control input-sm" type="tel" Style="font-size: medium" TextMode="MultiLine"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="*" ValidateRequestMode="Inherit" ControlToValidate="Descripcion" ValidationGroup="ValidacionGM" ForeColor="Red" Font-Bold="True" Font-Size="X-Large"></asp:RequiredFieldValidator>

            </div>
            <%--hasta aqui--%>

            <%--Cantidad--%>
            <div class="form-group row control-label" style="align-items: center;">
                <label for="Cantidadinput" class="col-md-3 input-sm" style="font-size: medium">Cantidad:</label>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <asp:TextBox ID="Cantidadinput" type="text" runat="server" class="form-control input-sm" Style="font-size: medium" TextMode="Number"></asp:TextBox>
                </div>

                <asp:RequiredFieldValidator ID="Validator" runat="server" Text="*" ValidateRequestMode="Inherit" ControlToValidate="Cantidadinput" ValidationGroup="ValidacionGM" ForeColor="Red" Font-Bold="True" Font-Size="X-Large"></asp:RequiredFieldValidator>

            </div>
            <%--hasta aqui--%>

            <%--Monto--%>


            <div class="form-group  row control-label" style="align-items: center;">

                <label style="font-size: medium;" for="Montoinput" class="col-md-3   input-sm">Monto:</label>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <asp:TextBox ID="Montoinput" runat="server" placeholder="0" class="form-control input-sm" Style="font-size: medium" TextMode="Number"></asp:TextBox>

                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="*" ValidateRequestMode="Inherit" ControlToValidate="Montoinput" ValidationGroup="ValidacionGM" ForeColor="Red" Font-Bold="True" Font-Size="X-Large"></asp:RequiredFieldValidator>

                <div class="col-md-1 col-sm-2 col-xs-4">
                    <asp:Button ID="AgregarButton" runat="server" Text="+" ValidationGroup="ValidacionGM" class="btn btn-success btn-md" Font-Size="Medium" OnClick="AgregarButton_Click" />
                </div>
            </div>


            <%--hasta aqui--%>
        </div>



    </div>


    <div class="form-group  control-label" style="align-items: center;">
        <div class="table-responsive ">
            <asp:GridView ID="DetalleGridView"  runat="server" class="table table-condensed" CellPadding="6" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" OnRowDeleting="DetalleGridView_RowDeleting"   >
                <AlternatingRowStyle BackColor="White" />

                <Columns>
                    <asp:BoundField DataField="ArticuloId" HeaderText="Articulo Id" />
                    <asp:BoundField DataField="Articulo" HeaderText="Articulo" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" />
                    <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" />
                    <asp:BoundField DataField="Monto" HeaderText="Monto" />

             <%--       OnSelectedIndexChanged="DetalleGridView_SelectedIndexChanged" OnRowDataBound="DetalleGridView_RowDataBound"--%>
           <%--         <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="EliminarButtonDetalle" CommandName="Select" CssClass="btn btn-dark form-control" runat="server"
                                    Text="Eliminar" OnClick="EliminarButtonDetalle_Click" />

                  
                            
                        </ItemTemplate>
                    </asp:TemplateField>--%>
                              
                    <asp:ButtonField ButtonType="Link" CommandName="Delete" HeaderText="Opcion" ShowHeader="True" Text="Remover" />

                </Columns>
                
                <HeaderStyle BackColor="Black" Font-Bold="true" ForeColor="White" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:GridView>
        </div>

    </div>


    <div class="panel-body ">
        <div class="form-horizontal col-md-12" role="form">


            <div class="form-group row control-label" style="align-items: center;">

                <asp:Label Style="font-size: medium;" ID="totalLabel" runat="server" for="MontoTotalTextBox" class="col-md-3   input-sm" Text="Monto Total:" Visible="False"></asp:Label>
                <div class="col-md-3 col-sm-6 col-xs-6">

                    <asp:TextBox ID="MontoTotalTextBox" runat="server" placeholder="0" class="form-control input-sm" Style="font-size: medium" ReadOnly="True" Visible="False"></asp:TextBox>
                </div>
                <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="*" ValidateRequestMode="Inherit" ControlToValidate="MontoTotalTextBox" ValidationGroup="ValidacionGM" ForeColor="Red" Font-Bold="True" Font-Size="X-Large"></asp:RequiredFieldValidator>

                --%>
            </div>
        </div>
    </div>

    <%--Botones--%>
    <div class="panel">
        <div class="text-center">
            <div class="form-group">
                <asp:Button ID="ButtonNuevo" runat="server" Text="Nuevo" class="btn btn-info" OnClick="ButtonNuevo_Click" />

                <asp:Button ID="ButtonGuardar" runat="server" Text="Guardar" class="btn btn-success" OnClick="ButtonGuardar_Click" />

                <asp:Button ID="ButtonEliminar" runat="server" Text="Eliminar" ValidationGroup="ValidacionBE" class="btn btn-danger" OnClick="ButtonEliminar_Click" />

            </div>
        </div>
    </div>



</asp:Content>
