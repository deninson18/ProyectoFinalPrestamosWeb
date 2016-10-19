<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="RegistroUsuarios.aspx.cs" Inherits="PrestamosWeb.Registros.RegistroUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div>
        
    <p>
      <asp:Label AssociatedControlId="fileUploader1" runat="server"
	    Text="Seleccionar una imagen:" />
      <asp:FileUpload id="fileUploader1" runat="server" />
    </p>
    <asp:Button id="cargarImagen" runat="server"
	  Text="Cargar imágenes" OnClick="cargarImagen_Click"/>
    </div>

    USUARIO ID:<asp:TextBox ID="idUTextBox" runat="server"></asp:TextBox>
    <asp:Button ID="buscarUButton" runat="server" OnClick="buscarUButton_Click" Text="BUSCAR" />
    <br />
    NOMBRE:<asp:TextBox ID="nombreUTextBox" runat="server" Width="185px"></asp:TextBox>
    <br />
    APELLIDO:<asp:TextBox ID="apellidoUTextBox" runat="server" Width="174px"></asp:TextBox>
    <br />
    NOMBRE DE USUARIO:<asp:TextBox ID="nombreUsuarioTextBox" runat="server" Width="146px"></asp:TextBox>
    <br />
    PASSWORD:<asp:TextBox ID="contrasenaUTextBox" runat="server" Width="207px"></asp:TextBox>
    <br />
    AREA DE USUARIO:<asp:DropDownList ID="usuarioUDropDownList" runat="server" Height="16px" style="margin-left: 8px" Width="158px">
        <asp:ListItem>ADMIN</asp:ListItem>
        <asp:ListItem>USER</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:Button ID="nuevoUButton" runat="server" OnClick="nuevoUButton_Click" Text="NUEVO" />
    <asp:Button ID="guardarUButton" runat="server" OnClick="guardarUButton_Click" style="margin-left: 64px" Text="GUARDAR" Width="84px" />
    <asp:Button ID="eliminarUButton" runat="server" OnClick="eliminarUButton_Click" style="margin-left: 61px" Text="ELIMINAR" />
    <br />

</asp:Content>
