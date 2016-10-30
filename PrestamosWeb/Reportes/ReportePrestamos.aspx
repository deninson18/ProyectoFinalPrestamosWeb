<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="ReportePrestamos.aspx.cs" Inherits="PrestamosWeb.Reportes.ReportePrestamos" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">

    </asp:ScriptManager>
    <rsweb:ReportViewer ID="PrestamosReportViewer" runat="server">
         <LocalReport ReportPath="Rpts\PrestamosReport.rdlc">

        </LocalReport>

    </rsweb:ReportViewer>
</asp:Content>
