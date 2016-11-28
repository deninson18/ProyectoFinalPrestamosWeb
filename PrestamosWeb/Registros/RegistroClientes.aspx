<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="RegistroClientes.aspx.cs" Inherits="PrestamosWeb.Registros.RegistroClientes" %>

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
                        <h4 class="text-center color-bg-one ">REGISTRO CLIENTES</h4>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <div class="form-inline">
                                <div>
                                    <asp:Label ID="Label1" runat="server" Text="CLIENTE ID:" Font-Bold="True"></asp:Label>
                                </div>
                                <asp:TextBox ID="idClienteTextBox" runat="server" placeholder="ID" CssClass="form-control" Width="250px" Height="32px"></asp:TextBox>
                                <asp:Button class="btn btn-warning" ID="buscarCliButton" runat="server" Text="BUSCAR" OnClick="buscarCliButton_Click" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="Label2" runat="server" Text="NOMBRE:" Font-Bold="True"></asp:Label>
                            </div>
                            <asp:TextBox ID="nombreCliTextBox" runat="server" placeholder="Nombres" CssClass="form-control" Width="356px" Height="32px"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="Label3" runat="server" Text="APELLIDO:" Font-Bold="True"></asp:Label>
                            </div>
                            <asp:TextBox ID="apellidoCliTextBox" runat="server" placeholder="Apellidos" CssClass="form-control" Width="356px" Height="32px"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="Label4" runat="server" Text="APODO:" Font-Bold="True"></asp:Label>
                            </div>
                            <asp:TextBox ID="apodoCliTextBox" runat="server" placeholder="Apodos" CssClass="form-control" Width="356px" Height="32px"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="Label5" runat="server" Text="DIRECCION:" Font-Bold="True"></asp:Label>
                            </div>
                            <asp:TextBox ID="direccionCliTextBox" runat="server" placeholder="Direccion" CssClass="form-control" Width="356px" Height="32px"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="Label6" runat="server" Text="REFERENCIA:" Font-Bold="True"></asp:Label>
                            </div>
                            <asp:TextBox ID="referenciaCliTextBox" runat="server" placeholder="Referencia" CssClass="form-control" Width="356px" Height="32px"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="Label7" runat="server" Text="RUTA:" Font-Bold="True"></asp:Label>
                            </div>
                            <asp:DropDownList ID="rutaPDropDownList" runat="server" CssClass="form-control" Width="356px" Height="32px"></asp:DropDownList>
                        </div>
                        <div class="row">
                            <div class="panel panel-info col-md-4">
                                <fieldset>
                                    <div>
                                        <asp:Label ID="Label8" runat="server" Text="SEXO:" Font-Bold="True"></asp:Label>
                                    </div>
                                    <asp:RadioButton ID="mRadioButton" class="radio-inline" runat="server" Text="MASCULINO" GroupName="SEXOGROUP"></asp:RadioButton>
                                    <asp:RadioButton ID="fRadioButton" runat="server" class="radio-inline" Text="FEMENINO" GroupName="SEXOGROUP"></asp:RadioButton>
                                </fieldset>
                            </div>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="Label9" runat="server" Text="CEDULA:" Font-Bold="True"></asp:Label>
                            </div>
                            <asp:TextBox ID="cedulaCliTextBox" runat="server" placeholder="Cedula" CssClass="form-control" Width="356px" Height="32px"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="Label10" runat="server" Text="TELEFONO:" Font-Bold="True"></asp:Label>
                            </div>
                            <asp:TextBox ID="telefonoCliTextBox" runat="server" placeholder="Telefono" CssClass="form-control" Width="356px" Height="32px"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="Label11" runat="server" Text="CELULAR:" Font-Bold="True"></asp:Label>
                            </div>
                            <asp:TextBox ID="celularCliTextBox" runat="server" placeholder="Celular" CssClass="form-control" Width="356px" Height="32px"></asp:TextBox>
                        </div>
                        <div class="text-center">
                            <asp:Button class="btn btn-info" ID="nuevoCliButton" runat="server" Text="NUEVO" OnClick="nuevoCliButton_Click" />
                            <asp:Button class="btn btn-success" ID="guardarCliButton" runat="server" Text="GUARDAR" OnClick="guardarCliButton_Click" />
                            <asp:Button class="btn btn-danger " ID="eliminarCliButton" runat="server" Text="ELIMINAR" OnClick="eliminarCliButton_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
