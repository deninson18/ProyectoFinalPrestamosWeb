<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="ConsultaCobradores.aspx.cs" Inherits="PrestamosWeb.Consultas.ConsultaCobradores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
     <br/>
     <br/>
     <br/>
    <asp:Label ID="Label1" runat="server" Text="Buscar Por:"></asp:Label>
    <asp:DropDownList ID="consultaCoDropDownList" runat="server" Height="23px" Width="136px">
        <asp:ListItem Value="CombradorId">ID</asp:ListItem>
        <asp:ListItem>Nombre</asp:ListItem>
        <asp:ListItem>Apellido</asp:ListItem>
        <asp:ListItem>Cedula</asp:ListItem>
    </asp:DropDownList>
    <asp:TextBox ID="cobradorFTextBox" runat="server"></asp:TextBox>
    <asp:Button ID="consultaCobradorButton" runat="server" Text="BUSCAR" OnClick="consultaCobradorButton_Click" />
    <br/>
    <asp:GridView ID="cobradoresGridView" runat="server"></asp:GridView>
     <br/>
</asp:Content>
