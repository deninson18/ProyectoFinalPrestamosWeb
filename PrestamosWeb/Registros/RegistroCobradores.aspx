<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="RegistroCobradores.aspx.cs" Inherits="PrestamosWeb.Registros.RegistroCobradores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <br />
    <br />
    Cobrador Id:<asp:TextBox ID="idCoTextBox" runat="server"></asp:TextBox>
    <asp:Button class="btn btn-default" ID="buscarCoButton" runat="server" Text="BUSCAR" OnClick="buscarCoButton_Click" />
    <br />
    <br />
    Nombre:<asp:TextBox ID="nombreCoTextBox" runat="server"></asp:TextBox>
    <br />
    Apellido:<asp:TextBox ID="apellidoCoTextBox" runat="server"></asp:TextBox>
    <br />
    Direccion<asp:TextBox ID="direccionCoTextBox" runat="server"></asp:TextBox>
    <br />
    Telefono:<asp:TextBox ID="telefonoCoTextBox" runat="server"></asp:TextBox>
    <br />
    Celular<asp:TextBox ID="celularCoTextBox" runat="server"></asp:TextBox>
    <br />
    Cedula:<asp:TextBox ID="cedulaCoTextBox" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button class="btn btn-info" ID="nuevoCoButton" runat="server" Text="NUEVO" OnClick="nuevoCoButton_Click" />
    <asp:Button class="btn btn-success" ID="guardarCoButton" runat="server" Text="GUARDAR" OnClick="guardarCoButton_Click" />
    <asp:Button class="btn btn-danger" ID="eliminarCoButton" runat="server" Text="ELIMINAR" OnClick="eliminarCoButton_Click" />
    <br />
    <br />


</asp:Content>
