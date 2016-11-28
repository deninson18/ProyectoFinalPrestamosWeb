<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="RegistroCobradores.aspx.cs" Inherits="PrestamosWeb.Registros.RegistroCobradores" %>

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
                        <h4 class="text-center color-bg-one ">REGISTRO COBRADORES</h4>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <div class="form-inline">
                                <div>
                                    <asp:Label ID="Label1" runat="server" Font-Bold="true" Text="COBRADOR ID:"></asp:Label>
                                </div>
                                <asp:TextBox ID="idCoTextBox" runat="server" placeholder="ID" CssClass="form-control" Width="250px" Height="32px"></asp:TextBox>
                                <asp:Button class="btn btn-warning" ID="buscarCoButton" runat="server" Text="BUSCAR" OnClick="buscarCoButton_Click" Width="84px" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="Label2" runat="server" Font-Bold="true" Text="NOMBRE:"></asp:Label>
                            </div>
                            <asp:TextBox ID="nombreCoTextBox" runat="server" placeholder="NOMBRE" CssClass="form-control" Width="356px" Height="32px"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="Label3" runat="server" Font-Bold="true" Text=" APELLIDO:"></asp:Label>
                            </div>
                            <asp:TextBox ID="apellidoCoTextBox" runat="server" placeholder="Apellido" CssClass="form-control" Width="356px" Height="32px"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="Label4" runat="server" Font-Bold="true" Text=" DIRECCION:"></asp:Label>
                            </div>
                            <asp:TextBox ID="direccionCoTextBox" runat="server" placeholder="Direccion" CssClass="form-control" Width="356px" Height="32px"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="Label5" runat="server" Font-Bold="true" Text=" TELEFONO:"></asp:Label>
                            </div>
                            <asp:TextBox ID="telefonoCoTextBox" runat="server" placeholder="Telefono" CssClass="form-control" Width="356px" Height="32px"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="Label6" runat="server" Font-Bold="true" Text="CELULAR:"></asp:Label>
                            </div>
                            <asp:TextBox ID="celularCoTextBox" runat="server" placeholder="Celular" CssClass="form-control" Width="356px" Height="32px"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="Label7" runat="server" Font-Bold="true" Text="CEDULA:"></asp:Label>
                            </div>
                            <asp:TextBox ID="cedulaCoTextBox" runat="server" placeholder="Cedula" CssClass="form-control" Width="356px" Height="32px"></asp:TextBox>
                        </div>
                        <div class="text-center">
                            <asp:Button class="btn btn-info" ID="nuevoCoButton" runat="server" Text="NUEVO" OnClick="nuevoCoButton_Click" Width="84px" />
                            <asp:Button class="btn btn-success" ID="guardarCoButton" runat="server" Text="GUARDAR" OnClick="guardarCoButton_Click" Width="84px" />
                            <asp:Button class="btn btn-danger" ID="eliminarCoButton" runat="server" Text="ELIMINAR" OnClick="eliminarCoButton_Click" Width="84px" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
