<%@ Page Title="Entrada Inversion" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EntradadeInversion.aspx.cs" Inherits="BusinessSoft.Registros.EntradadeInversion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
  
    <div class="rounded  " style="background-color: #000000; text-align: center;">
        <div class="panel-heading" style="font-family: 'Times New Roman', Times, serif; font-size: x-large; color: gold;">Registro de Inversion</div>

    </div>


    <div class="panel-body">
        <div class="form-horizontal col-md-12" role="form">
            <%--InversionID--%>
            <div class="form-group row control-label" style="align-items: center;">

                <label style="font-size: medium;" for="InversionID" class="col-md-3   input-sm">Inversion Id:</label>
                <div class="col-md-3 col-sm-2 col-xs-4">
                    <asp:TextBox ID="InversionID" runat="server" placeholder="0" class="form-control input-sm" type="number" Style="font-size: medium"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="InversionIdValidator" runat="server"  Text="*" ValidateRequestMode="Inherit" ControlToValidate="InversionID" ValidationGroup="ValidacionBE" ForeColor="Red" Font-Bold="True" Font-Size="X-Large"></asp:RequiredFieldValidator>


                <div class="col-md-1 col-sm-2 col-xs-4">
                    <asp:Button ID="BuscarButton" runat="server" Text="Buscar" ValidationGroup="ValidacionBE" class="btn btn-info btn-md" OnClick="BuscarButton_Click" />
                </div>
                  <%--hasta aqui--%>
              
            <%--Fecha--%>
               <label for="fechaTextbox" class="col-md-2 input-sm" style="font-size: medium">Fecha:</label>
                <div class="col-md-2 col-sm-7 col-xs-7">
                    <asp:TextBox ID="fechaTextbox" runat="server"  class="form-control input-sm" Style="font-size: medium" TextMode="Date" ReadOnly="True"></asp:TextBox>
                </div>
          
            <%--hasta aqui--%>

            </div>

          






            <%--Motivo--%>
            <div class="form-group row control-label" style="align-items: center;">
                <label for="Motivotextbox" class="col-md-3 input-sm" style="font-size: medium">Motivo:</label>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <asp:TextBox ID="Motivotextbox" runat="server" class="form-control input-sm" Style="font-size: medium" TextMode="MultiLine"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  Text="*" ValidateRequestMode="Inherit" ControlToValidate="Motivotextbox" ValidationGroup="ValidacionGM" ForeColor="Red" Font-Bold="True" Font-Size="X-Large"></asp:RequiredFieldValidator>

            </div>
            <%--hasta aqui--%>


            <%--Monto--%>
            <div class="form-group row control-label" style="align-items: center;">
                <label for="Montoinput" class="col-md-3 input-sm" style="font-size: medium">Monto:</label>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <asp:TextBox ID="Montoinput" runat="server" class="form-control input-sm" type="tel" Style="font-size: medium" TextMode="Number"></asp:TextBox>
                </div>
                   <asp:RequiredFieldValidator ID="Validator" runat="server"  Text="*" ValidateRequestMode="Inherit" ControlToValidate="Montoinput" ValidationGroup="ValidacionGM" ForeColor="Red" Font-Bold="True" Font-Size="X-Large"></asp:RequiredFieldValidator>

            </div>
            <%--hasta aqui--%>



        </div>

    </div>

            <%--Botones--%>
            <div class="panel">
                <div class="text-center">
                    <div class="form-group">
                        <asp:Button ID="ButtonNuevo" runat="server" Text="Nuevo" class="btn btn-info" OnClick="ButtonNuevo_Click"  />


                        <asp:Button ID="ButtonGuardar" ValidationGroup="ValidacionGM" runat="server" Text="Guardar" class="btn btn-success" OnClick="ButtonGuardar_Click"  />

                        <asp:Button ID="ButtonEliminar" ValidationGroup="ValidacionBE" runat="server" Text="Eliminar" class="btn btn-danger" OnClick="ButtonEliminar_Click"  />

                    </div>
                </div>
            </div>



 
</asp:Content>
