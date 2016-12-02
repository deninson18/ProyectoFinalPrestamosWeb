<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="RegistroUsuarios.aspx.cs" Inherits="PrestamosWeb.Registros.RegistroUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class=" panel panel-success">
                <div class="panel-heading ">
                    <h4 class="text-center color-bg-one ">REGISTRO USUARIOS</h4>
                </div>
                <div class="panel-body">
                    <asp:FileUpload ID="fotoFileUpload" runat="server" class="  btn btn-info col-md-offset-7" ViewStateMode="Enabled" />
                    <div class="form-group col-md-offset-2 ">
                        <div class="form-inline">
                            <asp:Label ID="Label7" runat="server" Text="USUARIO ID:" Font-Bold="True"></asp:Label>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="idUTextBox" ErrorMessage="ID Incorrecto" Font-Size="Medium" ForeColor="Red" ValidationExpression="^[0-9]*" ValidationGroup="A">*</asp:RegularExpressionValidator>
                            <asp:TextBox ID="idUTextBox" runat="server" placeholder="ID" CssClass="form-control" Width="350px" Height="26px" MaxLength="8"></asp:TextBox>
                            <asp:Button ID="buscarUButton" class="btn btn-warning " runat="server" OnClick="buscarUButton_Click" Text="BUSCAR" Width="84px" />
                            <asp:Image ID="Fotos" class="img-circle" runat="server" ImageUrl="/Fotos/user.png" Width="184" Height="130" />

                            <asp:Button ID="cargarImagen" runat="server" class="btn btn-primary" Text="CARGAR" Width="84px" OnClick="cargarImagen_Click1" />

                        </div>
                    </div>
                    <div class="form-group col-md-offset-2 ">
                        <asp:Label ID="Label1" runat="server" Text="NOMBRE:" Font-Bold="True"></asp:Label>
                        <asp:TextBox ID="nombreUTextBox" runat="server" placeholder="Nombres" CssClass="form-control" Width="800px" Height="26px" MaxLength="30"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="nombreUTextBox" ErrorMessage="Formato Incorrecto" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$" Font-Size="Medium" ValidationGroup="A">*</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="INGRESE SU NOMBRE" ControlToValidate="nombreUTextBox" ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group col-md-offset-2">
                        <asp:Label ID="Label2" runat="server" Text="APELLIDO:" Font-Bold="True"></asp:Label>
                        <asp:TextBox ID="apellidoUTextBox" runat="server" placeholder="Apellidos" Width="800px" Height="26px" CssClass="form-control" MaxLength="30"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="apellidoUTextBox" ErrorMessage="Formato Incorrecto" ValidationExpression="^[a-zA-Z ]*$" Font-Size="Medium" ForeColor="Red" ValidationGroup="A">*</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="apellidoUTextBox" ErrorMessage="INGRESE SU APELLIDO" ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>

                    </div>
                    <div class="form-group col-md-offset-2">
                        <asp:Label ID="Label3" runat="server" Text="Nombre de Usuario:" Font-Bold="True"></asp:Label>
                        <asp:TextBox ID="nombreUsuarioTextBox" runat="server" placeholder="Usuario" Width="800px" Height="26px" CssClass="form-control" MaxLength="40"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="nombreUsuarioTextBox" ErrorMessage="Nombre de Usuario Incorrecto" Font-Size="Medium" ForeColor="Red" ValidationExpression="^[a-zA-Z./s]{3,20}$" ValidationGroup="A">*</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="nombreUsuarioTextBox" ErrorMessage="INGRESE SU NOMBRE DE USUARIO" ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group col-md-offset-2">
                        <asp:Label ID="Label4" runat="server" Text="PASSWORD:" Font-Bold="True"></asp:Label>
                        <asp:TextBox ID="contrasenaUTextBox" runat="server" placeholder="Contraseña" Width="800px" Height="26px" CssClass="form-control" MaxLength="50" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="contrasenaUTextBox" ErrorMessage="INGRESE SU CONTRASEÑA" ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="contrasenaUTextBox" ControlToValidate="confirmarContrasenaTextBox" ErrorMessage="Contrasena diferente" ForeColor="Red" ValidationGroup="A"></asp:CompareValidator>

                    </div>
                    <div class="form-group col-md-offset-2">
                        <asp:Label ID="Label5" runat="server" Text="CONFIRMAR CONTRASEÑA:" Font-Bold="True"></asp:Label>
                        <asp:TextBox ID="confirmarContrasenaTextBox" runat="server" placeholder="Confirmar la Contraseña" Width="800px" Height="26px" CssClass="form-control" MaxLength="50" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="CONFIRME SU CONTRASEÑA" ForeColor="Red" ControlToValidate="confirmarContrasenaTextBox" ValidationGroup="A"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group col-md-offset-2">
                        <asp:Label ID="Label6" runat="server" Text="TIPO DE USUARIO:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="usuarioUDropDownList" runat="server" Width="800px" Height="30px" Style="margin-left: 8px" CssClass="form-control">
                            <asp:ListItem>ADMIN</asp:ListItem>
                            <asp:ListItem>USER</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="text-center">
                        <asp:Button Class="btn btn-info" ID="nuevoUButton" runat="server" OnClick="nuevoUButton_Click" Text="NUEVO" Width="84px" />
                        <asp:Button Class="btn btn-success" ID="guardarUButton" runat="server" OnClick="guardarUButton_Click" Text="GUARDAR" Width="84px" ValidationGroup="A" />
                        <asp:Button Class="btn btn-danger" ID="eliminarUButton" runat="server" OnClick="eliminarUButton_Click" Text="ELIMINAR" Width="84px" />
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
