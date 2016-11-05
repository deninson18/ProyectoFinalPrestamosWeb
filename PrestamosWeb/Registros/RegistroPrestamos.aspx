<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="RegistroPrestamos.aspx.cs" Inherits="PrestamosWeb.Registros.RegistroPrestamos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
    <br/>
    <br/>
     <br />
    <asp:Label ID="Label1" runat="server" Text="Prestamo ID:"></asp:Label>
    <asp:TextBox ID="idPTextBox" runat="server"></asp:TextBox>
    <asp:Button ID="buscarPButton" runat="server" Text="BUSCAR" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="Fecha Inicial"></asp:Label>
    <asp:TextBox ID="fechaInicialPTextBox" runat="server"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Text="Fecha Vencimiento"></asp:Label>
    <asp:TextBox ID="fechaFinalPTextBox" runat="server"></asp:TextBox>
    <br />
    <br />
    Cliente:<asp:DropDownList ID="clientePDropDownList" runat="server" Height="20px" Width="141px"></asp:DropDownList>
    Ruta:<asp:DropDownList ID="rutaPDropDownList" runat="server" Height="20px" Width="141px"></asp:DropDownList>
     <br />
    <asp:Label ID="Label4" runat="server" Text="Monto"></asp:Label>
    <asp:TextBox ID="montoPTextBox" runat="server"></asp:TextBox>
     <br/>   
    <asp:Label ID="Label5" runat="server" Text="Valor Cuota:"></asp:Label>
    <asp:TextBox ID="valorCuotaPTextBox" runat="server"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" Text="NuSemana:"></asp:Label>
    <asp:TextBox ID="nuSemanaPTextBox" runat="server"></asp:TextBox>
     <br />
    <asp:Label ID="Label7" runat="server" Text="Semana"></asp:Label>
    <asp:TextBox ID="semanaPTextBox" runat="server"></asp:TextBox>
    <asp:Label ID="Label9" runat="server" Text="Interes"></asp:Label>
    <asp:TextBox ID="interesPTextBox" runat="server"></asp:TextBox>
     <br />
    <asp:Label ID="Label8" runat="server" Text="Pago Total:"></asp:Label>
    <asp:TextBox ID="PagoTotalPTextBox" runat="server"></asp:TextBox>
     <br />
     <br />
    <asp:Button ID="nuevoPButton" runat="server" Text="NUEVO" OnClick="nuevoPButton_Click" />
    <asp:Button ID="guardarPButton" runat="server" Text="GUARDAR" OnClick="guardarPButton_Click" />
    <asp:Button ID="eliminarPButton" runat="server" Text="ELIMINAR" />
</asp:Content>
