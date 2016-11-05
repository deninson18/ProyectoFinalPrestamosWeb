<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="RegistroRutas.aspx.cs" Inherits="PrestamosWeb.Registros.RegistroRutas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
    <br/>
    <br/>
    <br/>

    <div>
     Ruta ID:<asp:TextBox ID="idRutaTextBox" runat="server"></asp:TextBox> 
    <asp:Button class="btn btn-default" ID="buscarRuButton" runat="server" Text="BUSCAR" OnClick="buscarRuButton_Click" />
 
    Nombre de Ruta:<asp:TextBox ID="nombreRuTextBox" runat="server" Width="195px"></asp:TextBox>
    <br />
    <br />
       
    Cobrador:<asp:DropDownList ID="cobradorRuDropDownList" runat="server" Height="16px" Width="127px">
    </asp:DropDownList>
    <br />
    <br />
    <asp:Button class="btn btn-info" ID="nuevoRuButton" runat="server" Text="NUEVO" OnClick="nuevoRuButton_Click" />
    <asp:Button class="btn btn-success" ID="guardarRuButton" runat="server" Text="GUARDAR" OnClick="guardarRuButton_Click" />
    <asp:Button class="btn btn-danger" ID="eliminarRuButton" runat="server" Text="ELIMINAR" OnClick="eliminarRuButton_Click" />
    <br />
        </div>

</asp:Content>
