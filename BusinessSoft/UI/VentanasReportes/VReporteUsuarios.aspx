﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VReporteUsuarios.aspx.cs" Inherits="BusinessSoft.UI.VentanasReportes.VReporteUsuarios" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Listado de Usuarios</title>
            <style>
        html,body,form,#div1{
            height:100%
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        

     <div id="div1">
             <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
      
    <rsweb:ReportViewer ID="MyReportViewer" runat="server" Height="100%" Width="100%"></rsweb:ReportViewer>
         </div>
      </form>
</body>
</html>
