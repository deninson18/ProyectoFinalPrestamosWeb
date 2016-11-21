<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="ConsultaCliente.aspx.cs" Inherits="PrestamosWeb.Consultas.ConsultaCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br/>
    <asp:Label ID="Label1" runat="server" Text="Buscar Por:"></asp:Label>
    <asp:DropDownList ID="consultaClienteDropDownList" runat="server" Height="28px" Width="169px">
        <asp:ListItem Value="ClienteId">Id</asp:ListItem>
        <asp:ListItem Value="Nombres">Nombre</asp:ListItem>
        <asp:ListItem Value="Apellidos">Apellido</asp:ListItem>
        <asp:ListItem Value="Direccion">Direccion</asp:ListItem>
        <asp:ListItem Value="Cedula">Cedula</asp:ListItem>
    </asp:DropDownList>
    <asp:TextBox ID="ClienteFTextBox" runat="server" Height="22px" Width="176px"></asp:TextBox>
    <asp:Button ID="consultarClienteButton" runat="server" Text="Buscar" OnClick="consultarClienteButton_Click" />
    <br />
    <asp:GridView ID="ClientesGridView" runat="server"></asp:GridView>
</asp:Content>
