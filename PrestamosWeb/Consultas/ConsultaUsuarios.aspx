<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="ConsultaUsuarios.aspx.cs" Inherits="PrestamosWeb.Consultas.ConsultaUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Buscar Por:<asp:DropDownList ID="usuarioDropDownList" runat="server" Height="16px" Width="131px">
        <asp:ListItem>Id</asp:ListItem>
        <asp:ListItem>Nombre</asp:ListItem>
        <asp:ListItem>Apellido</asp:ListItem>
        <asp:ListItem>Usuario</asp:ListItem>
    </asp:DropDownList>

    <asp:TextBox ID="usuarioFTextBox" runat="server" Width="160px"></asp:TextBox>
    <asp:Button ID="usuarioBuscar" runat="server" Text="Buscar" OnClick="usuarioBuscar_Click" />   
   
    <asp:Repeater ID="usuarioRepeater" runat="server">
        <ItemTemplate>
          
           
            <div>
             <asp:Label ID="NombresLabel" runat="server" Text='<%# Eval("Nombres")%>'></asp:Label>
            </div>
            <div<>
                 <asp:Label ID="ApellidosLabel" runat="server" Text='<%# Eval("Apellidos")%>'></asp:Label>
            </div>
            <div>
                <asp:Label ID="NombreUsuarioLabel" runat="server" Text='<%# Eval("NombreUsuario")%>'></asp:Label>
            </div>
            <div>
                <asp:Label ID="AreaUsuarioLabel" runat="server" Text='<%# Eval("AreaUsuario")%>'></asp:Label>
            </div>

        </ItemTemplate>

    </asp:Repeater>  
   
    <asp:Button ID="impUsuarioButton" runat="server" Text="IMPRIMIR" OnClick="impUsuarioButton_Click" />
   
</asp:Content>
