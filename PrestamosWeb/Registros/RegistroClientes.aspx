<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="RegistroClientes.aspx.cs" Inherits="PrestamosWeb.Registros.RegistroClientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    Cliente Id:<asp:TextBox ID="idClienteTextBox" runat="server"></asp:TextBox>
    <asp:Button class="btn btn-default" ID="buscarCliButton" runat="server" Text="BUSCAR" OnClick="buscarCliButton_Click" />
    <br />
    Nombre:<asp:TextBox ID="nombreCliTextBox" runat="server"></asp:TextBox>
    <br />
    Apellido:<asp:TextBox ID="apellidoCliTextBox" runat="server"></asp:TextBox>
    <br />
    Apdoo:<asp:TextBox ID="apodoCliTextBox" runat="server"></asp:TextBox>
    <br />
    Direccion:<asp:TextBox ID="direccionCliTextBox" runat="server" Width="129px"></asp:TextBox>
    <br />
    Referencia:<asp:TextBox ID="referenciaCliTextBox" runat="server"></asp:TextBox>
    <br />
    <br />
    <fieldset style="width:300px">
    <legend>SEXO</legend>
    <asp:RadioButton ID="mRadioButton" runat="server" Text="MASCULINO" GroupName="SEXOGROUP"></asp:RadioButton>
    <asp:RadioButton ID="fRadioButton" runat="server" Text="FEMENINO" GroupName="SEXOGROUP"></asp:RadioButton>
    </fieldset>
    <br/>
    <br />
    Cedula:<asp:TextBox ID="cedulaCliTextBox" runat="server"></asp:TextBox>
    <br />
    Telefono:<asp:TextBox ID="telefonoCliTextBox" runat="server"></asp:TextBox>
    <br />
    Celular:<asp:TextBox ID="celularCliTextBox" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button class="btn btn-info" ID="nuevoCliButton" runat="server" Text="NUEVO" OnClick="nuevoCliButton_Click" />
    <asp:Button class="btn btn-success" ID="guardarCliButton" runat="server" Text="GUARDAR" OnClick="guardarCliButton_Click" />
    <asp:Button class="btn btn-danger " ID="eliminarCliButton" runat="server" Text="ELIMINAR" OnClick="eliminarCliButton_Click" />
    <br />

</asp:Content>
