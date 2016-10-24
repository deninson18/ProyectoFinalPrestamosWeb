<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="ReporteUsuario.aspx.cs" Inherits="PrestamosWeb.Reportes.ReportesWebForm" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <rsweb:ReportViewer ID="usuarioReportViewer" runat="server">
        <LocalReport ReportPath="Rpts\UsuariosReport.rdlc">

        </LocalReport>
    </rsweb:ReportViewer>

</asp:Content>
