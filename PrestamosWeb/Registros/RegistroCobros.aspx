<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="RegistroCobros.aspx.cs" Inherits="PrestamosWeb.Registros.RegistroCobros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Cobro Id:"></asp:Label>
    <asp:TextBox ID="cobroIdTextBox" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label7" runat="server" Text="Cliente"></asp:Label>
    <asp:DropDownList ID="clienteCobroDropDownList" runat="server" Height="16px" Width="182px"></asp:DropDownList>
    <br/>
    <asp:Label ID="Label2" runat="server" Text="Semana #:"></asp:Label>
    <asp:DropDownList ID="semanaNuCobroDropDownList" runat="server">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
        <asp:ListItem>8</asp:ListItem>
        <asp:ListItem>9</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>11</asp:ListItem>
        <asp:ListItem>12</asp:ListItem>
        <asp:ListItem>13</asp:ListItem>
    </asp:DropDownList>
    <br/>
    <asp:Label ID="Label3" runat="server" Text="Cantidad de Cuota:"></asp:Label>
    <asp:TextBox ID="cantidadCuotaCobroTextBox" runat="server"></asp:TextBox>
    <br/>
    <asp:Label ID="Label4" runat="server" Text="Cuota:"></asp:Label>
    <asp:DropDownList ID="cuotaCobroDropDownList" runat="server"></asp:DropDownList>
    <asp:Label ID="Label5" runat="server" Text="Abono"></asp:Label>
    <asp:TextBox ID="abonoCobroTextBox" runat="server"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" Text="Sub-Total:"></asp:Label>
    <asp:TextBox ID="subtotalCobroTextBox" runat="server"></asp:TextBox>
    <br/>
     <asp:Button ID="Button1" runat="server" Text="Agregar" />
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
   <br/>
    <asp:Button ID="nuevoButton" runat="server" Text="NUEVO" />
    <asp:Button ID="guardarButton" runat="server" Text="GUARDAR" />
    <asp:Button ID="eliminarButton" runat="server" Text="ELIMINAR" />
</asp:Content>
