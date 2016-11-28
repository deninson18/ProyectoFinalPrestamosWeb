<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="RegistroCobros.aspx.cs" Inherits="PrestamosWeb.Registros.RegistroCobros" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Cobro Id:"></asp:Label>
    <asp:TextBox ID="cobroIdTextBox" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <asp:Label ID="Label2" runat="server" Text="Fecha:"></asp:Label>
    <asp:TextBox ID="fechaCobroTextBox" runat="server" TextMode="Date"></asp:TextBox>
    <br />
    <asp:Label ID="Label7" runat="server" Text="Cliente"></asp:Label>
    <asp:DropDownList ID="clienteCobroDropDownList" runat="server" Height="16px" Width="182px" AutoPostBack="True" OnSelectedIndexChanged="clienteCobroDropDownList_SelectedIndexChanged"></asp:DropDownList>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Semana #:"></asp:Label>
    <asp:TextBox ID="SemanaNuCobroTextBox" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Cuota:"></asp:Label>
    <asp:DropDownList ID="cuotaCobroDropDownList" runat="server"></asp:DropDownList>
    <asp:Label ID="Label5" runat="server" Text="Abono"></asp:Label>
    <asp:TextBox ID="abonoCobroTextBox" runat="server"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" Text="Sub-Total:"></asp:Label>
    <asp:TextBox ID="subTotalCobroTextBox" runat="server"></asp:TextBox>
    <asp:Label ID="Label8" runat="server" Text="Total"></asp:Label>
    <asp:TextBox ID="TotalCobroTextBox" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="agregarCobroButton" runat="server" Text="Agregar" OnClick="agregarCobroButton_Click" />
    <asp:GridView ID="cobrosGridView" runat="server" AutoGenerateColumns="False">
        <Columns>         
            <asp:BoundField HeaderText="Prestamo ID" DataField="PrestamoId" />
            <asp:BoundField HeaderText="NuSemana" DataField="NuSemana" />
            <asp:BoundField HeaderText="Cuota"  DataField="Cuota"/>
        </Columns>
    </asp:GridView>
    <br />
    <asp:Button ID="nuevoButton" runat="server" Text="NUEVO" OnClick="nuevoButton_Click" />
    <asp:Button ID="guardarButton" runat="server" Text="GUARDAR" OnClick="guardarButton_Click" />
    <asp:Button ID="eliminarButton" runat="server" Text="ELIMINAR" />
</asp:Content>
