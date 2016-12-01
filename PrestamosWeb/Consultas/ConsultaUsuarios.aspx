<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="ConsultaUsuarios.aspx.cs" Inherits="PrestamosWeb.Consultas.ConsultaUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  
        <div class="container">
            <div class="row">
                <div class=" panel panel-success">
                    <div class="panel-heading">
                        <h4 class="text-center ">CONSULTAS DE USUARIOS</h4>
                    </div>
                    <div class="panel-body">
                        <div class="form-group col-md-offset-1">
                            <div class="form-inline">
                                <asp:Label ID="Label1" runat="server" Text=" BUSCAR POR:" Font-Bold="true"></asp:Label>
                                <asp:DropDownList ID="usuarioDropDownList" class="btn btn-success dropdown-toggle" runat="server" Width="300px" Height="32px">
                                    <asp:ListItem Value="UsuarioId">Id</asp:ListItem>
                                    <asp:ListItem Value="Nombres">Nombre</asp:ListItem>
                                    <asp:ListItem Value="Apellidos">Apellido</asp:ListItem>
                                    <asp:ListItem Value="NombreUsuario">Usuario</asp:ListItem>
                                </asp:DropDownList>
                                <asp:TextBox ID="usuarioFTextBox" runat="server" CssClass="form-control" Width="350px" Height="32px"></asp:TextBox>
                                <asp:Button ID="usuarioBuscar" runat="server" class="btn btn-warning" Text="Buscar" Width="84px" OnClick="usuarioBuscar_Click" />
                            </div>
                        </div>
                        <div class="form-group col-md-offset-1">
                        <div class="row">

                            <asp:Repeater ID="usuarioRepeater" runat="server">
                                <ItemTemplate>
                                    <div class="col-md-3 col-xs-3">
                                       <div class="panel panel-primary">
                                            <asp:Label ID="NombresLabel" runat="server" Text='<%# Eval("Nombres")%>' Font-Size="Medium"></asp:Label>
                                           <asp:Label ID="ApellidosLabel" runat="server" Text='<%# Eval("Apellidos")%>' Font-Size="Medium"></asp:Label>
                                            <img class="img-circle" src='<%# Eval("Foto")%>' width="235px" height="235px">                                       
                                        <div>
                                            <asp:Label ID="NombreUsuarioLabel" runat="server" Text='<%# Eval("NombreUsuario")%>' Font-Size="Medium"></asp:Label>
                                        </div>

                                            <asp:Label ID="AreaUsuarioLabel" runat="server" Text='<%# Eval("TipoUsuario")%>' Font-Size="Medium"></asp:Label>
                                       </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        </div>
                        <div class="form-group col-md-offset-1">
                        <asp:Button ID="impUsuarioButton" runat="server" class="btn btn-warning" Text="IMPRIMIR" Width="84px"  OnClick="impUsuarioButton_Click"/> 
                     </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
