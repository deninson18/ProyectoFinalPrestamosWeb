<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="RegistroUsuarios.aspx.cs" Inherits="PrestamosWeb.Registros.RegistroUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class=" panel panel-success">
                    <div class="panel-heading">
                        <h4 class="text-center color-bg-one ">REGISTRO USUARIO</h4>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <asp:Image ID="Fotos" class="img-circle" runat="server" ImageUrl="/Fotos/user.png" Width="162" Height="132" />
                            <asp:FileUpload ID="fotoFileUpload" runat="server" ViewStateMode="Enabled" />
                            <asp:Button ID="cargarImagen" runat="server" Text="Cargar imágenes" Height="23px" Width="102px" OnClick="cargarImagen_Click1" />

                        </div>
                        <div class="form-group">
                            <div class="form-inline">
                                <div>
                                    <asp:Label ID="Label7" runat="server" Text="USUARIO ID:" Font-Bold="True"></asp:Label>
                                </div>
                                <asp:TextBox ID="idUTextBox" runat="server" placeholder="ID" CssClass="form-control" Width="250px" Height="32px" MaxLength="8"></asp:TextBox>
                                <asp:Button ID="buscarUButton" class="btn btn-warning " runat="server" OnClick="buscarUButton_Click" Text="BUSCAR" Width="84px" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="idUTextBox" ErrorMessage="ID Incorrecto" Font-Size="Medium" ForeColor="Red" ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$">*</asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="Label1" runat="server" Text="NOMBRE:" Font-Bold="True"></asp:Label>
                            </div>
                            <div>
                                <asp:TextBox ID="nombreUTextBox" runat="server" placeholder="Nombres" CssClass="form-control" Width="356px" Height="32px" MaxLength="30"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="nombreUTextBox" ErrorMessage="Formato Incorrecto" ForeColor="Red" ValidationExpression="^[a-zA-Z/s]{3,60}$" Font-Size="Medium">*</asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="INGRESE SU NOMBRE" ControlToValidate="nombreUTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="Label2" runat="server" Text="APELLIDO:" Font-Bold="True"></asp:Label>
                            </div>
                            <div>
                                <asp:TextBox ID="apellidoUTextBox" runat="server" placeholder="Apellidos" Width="356px" Height="32px" CssClass="form-control" MaxLength="30"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="apellidoUTextBox" ErrorMessage="Formato Incorrecto" ValidationExpression="^[a-zA-Z/s]{3,60}$" Font-Size="Medium" ForeColor="Red">*</asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="apellidoUTextBox" ErrorMessage="INGRESE SU APELLIDO" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="Label3" runat="server" Text="Nombre de Usuario:" Font-Bold="True"></asp:Label>
                            </div>
                            <div>
                                <asp:TextBox ID="nombreUsuarioTextBox" runat="server" placeholder="Usuario" Width="356px" Height="32px" CssClass="form-control" MaxLength="40"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="nombreUsuarioTextBox" ErrorMessage="Nombre de Usuario Incorrecto" Font-Size="Medium" ForeColor="Red" ValidationExpression="[a-zA-ZñÑ\s]{2,50}">*</asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="nombreUsuarioTextBox" ErrorMessage="INGRESE SU NOMBRE DE USUARIO" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="Label4" runat="server" Text="PASSWORD:" Font-Bold="True"></asp:Label>
                            </div>
                            <div>
                                <asp:TextBox ID="contrasenaUTextBox" runat="server" placeholder="Contraseña" Width="356px" Height="32px" CssClass="form-control" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="contrasenaUTextBox" ErrorMessage="INGRESE SU CONTRASEÑA" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="Label5" runat="server" Text="CONFIRMAR CONTRASEÑA:" Font-Bold="True"></asp:Label>
                            </div>
                            <div>
                                <asp:TextBox ID="confirmarContrasenaTextBox" runat="server" placeholder="Confirmar la Contraseña" Width="356px" Height="32px" CssClass="form-control" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="CONFIRME SU CONTRASEÑA" ForeColor="Red" ControlToValidate="confirmarContrasenaTextBox"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="Label6" runat="server" Text="TIPO DE USUARIO:" Font-Bold="True"></asp:Label>
                            </div>
                            <div>
                                <asp:DropDownList ID="usuarioUDropDownList" runat="server" Width="356px" Height="32px" Style="margin-left: 8px" CssClass="form-control">
                                    <asp:ListItem>ADMIN</asp:ListItem>
                                    <asp:ListItem>USER</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div>
                            <asp:Button Class="btn btn-info" ID="nuevoUButton" runat="server" OnClick="nuevoUButton_Click" Text="NUEVO" Width="84px" />
                            <asp:Button Class="btn btn-success" ID="guardarUButton" runat="server" OnClick="guardarUButton_Click" Text="GUARDAR" Width="84px" />
                            <asp:Button Class="btn btn-danger" ID="eliminarUButton" runat="server" OnClick="eliminarUButton_Click" Text="ELIMINAR" Width="84px" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
