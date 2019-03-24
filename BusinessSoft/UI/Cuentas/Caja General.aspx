<%@ Page Title="Caja General" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Caja General.aspx.cs" Inherits="BusinessSoft.UI.Cuentas.Efectivo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="rounded  " style="background-color: #000000; text-align: center;">
        <div class="panel-heading" style="font-family: 'Times New Roman', Times, serif; font-size: x-large; color: gold;">Caja General</div>

    </div>


    <div class="panel-body">
        <div class="form-horizontal col-md-12" role="form">


            <%--EfectivoID--%>
            <div class="form-group" style="text-align: center;">

                <label style="font-size: xx-large;" class="control-label input-sm">$</label>

                <label style="font-size: xx-large;" class="control-label input-sm">Efectivo</label>

            </div>

            <%--hasta aqui--%>





            <%--Botones--%>
            <div class="panel">
                <div class="text-center">
                    <div class="form-group">

                        <asp:Button ID="Buttonrefrescar" runat="server" Text="Refrescar" class="btn btn-success" />

                    </div>
                </div>
            </div>


        </div>

    </div>


</asp:Content>
