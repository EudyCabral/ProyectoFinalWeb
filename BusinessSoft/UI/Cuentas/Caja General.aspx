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
           
                   <div class="form-group control-label row" style="align-items: center;">
                <label for="TextBoxefectivo" class="col-md-5  input-sm" style="font-size: medium">Efectivo:</label>

                <div class="col-md-3 col-sm-6 col-xs-6">
                    <asp:TextBox ID="TextBoxefectivo" runat="server" type="text" Style="font-size: xx-large;"  class="form-control input-sm"  ForeColor="#00CC00" ></asp:TextBox>
                  </div>
                  

            </div>

            <%--hasta aqui--%>





            <%--Botones--%>
            <div class="panel">
                <div class="text-center">
                    <div class="form-group">

                        <asp:Button ID="Buttonrefrescar" runat="server" Text="Refrescar" class="btn btn-success" OnClick="Buttonrefrescar_Click" />

                    </div>
                </div>
            </div>


        </div>

    </div>


</asp:Content>
