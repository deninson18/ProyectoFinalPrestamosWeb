<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="ConsultaPrestamos.aspx.cs" Inherits="PrestamosWeb.Consultas.ConsultaPrestamos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br/>
     <br/>
     <br/>
     <br/>
     <br/>
    Buscar Por:<asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="101px">
        <asp:ListItem>Prestamo Id</asp:ListItem>
        <asp:ListItem>Nombre</asp:ListItem>
        <asp:ListItem>Apellido</asp:ListItem>
        <asp:ListItem>Fecha</asp:ListItem>
        <asp:ListItem>Monto</asp:ListItem>
    </asp:DropDownList>
    <asp:TextBox ID="TextBox1" runat="server" Width="181px"></asp:TextBox>
    <asp:Button ID="consultaPrestamoButton" runat="server" Text="Buscar" />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />
    <asp:Button ID="imprimirPrestamoButton" runat="server" OnClick="imprimirPrestamoButton_Click" Text="IMPRIMIR" />

</asp:Content>
