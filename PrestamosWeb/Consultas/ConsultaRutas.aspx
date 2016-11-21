<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="ConsultaRutas.aspx.cs" Inherits="PrestamosWeb.Consultas.ConsultaRutas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
     <br/>
     <br/>
     <br/>
    <asp:Label ID="Label1" runat="server" Text="Buscar Por:"></asp:Label>
    <asp:DropDownList ID="consultaRuDropDownList" runat="server" Height="23px" Width="136px">
        <asp:ListItem Value="RutaId">ID</asp:ListItem>
        <asp:ListItem Value="NombreRuta">Nombre</asp:ListItem>
    </asp:DropDownList>
    <asp:TextBox ID="rutaFTextBox" runat="server"></asp:TextBox>
    <asp:Button ID="consultaRutaButton" runat="server" Text="BUSCAR" OnClick="consultaRutaButton_Click"  />
    <br/>
    <asp:GridView ID="rutasGridView" runat="server"></asp:GridView>
     <br/>
</asp:Content>
