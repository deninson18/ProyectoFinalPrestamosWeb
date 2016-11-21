<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="ConsultaPrestamos.aspx.cs" Inherits="PrestamosWeb.Consultas.ConsultaPrestamos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br/>
     <br/>
     <br/>
     <br/>
     <br/>
    Buscar Por:<asp:DropDownList ID="ConsultaPrestamosDropDownList" runat="server" Height="16px" Width="101px">
        <asp:ListItem Value="PrestamoId">Prestamo Id</asp:ListItem>
        <asp:ListItem Value="Nombres">Nombre</asp:ListItem>
        <asp:ListItem Value="FechaInicial">Fecha Inicial</asp:ListItem>
        <asp:ListItem Value="Monto">Monto</asp:ListItem>
    </asp:DropDownList>
    <asp:TextBox ID="PrestamoFTextBox" runat="server" Width="181px"></asp:TextBox>
    <asp:Button ID="consultaPrestamoButton" runat="server" Text="Buscar" OnClick="consultaPrestamoButton_Click" />
    <asp:GridView ID="PrestamosGridView" runat="server">
    </asp:GridView>
    <br />
    <asp:Button ID="imprimirPrestamoButton" runat="server" OnClick="imprimirPrestamoButton_Click" Text="IMPRIMIR" />

</asp:Content>
