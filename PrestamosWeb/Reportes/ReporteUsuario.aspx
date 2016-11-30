<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="ReporteUsuario.aspx.cs" Inherits="PrestamosWeb.Reportes.ReportesWebForm" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
     <br />
    <br />
    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class=" panel panel-success">
                <div class="panel-heading">
                    <h4 class="text-center ">REPORTE DE USUARIOS</h4>
                </div>
                <div class="panel-body">
                    <rsweb:ReportViewer ID="usuarioReportViewer" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="700px" Height="400px">
                        <LocalReport ReportPath="Rpts\UsuariosReport.rdlc">
                        </LocalReport>
                    </rsweb:ReportViewer>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
