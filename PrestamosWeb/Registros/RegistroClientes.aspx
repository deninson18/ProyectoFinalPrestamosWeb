<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="RegistroClientes.aspx.cs" Inherits="PrestamosWeb.Registros.RegistroClientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class=" panel panel-success">
                <div class="panel-heading">
                    <h4 class="text-center color-bg-one ">REGISTRO CLIENTES</h4>
                </div>
                <div class="panel-body">
                    <div class="form-group col-md-offset-1">
                        <div class="form-inline">

                            <asp:Label ID="Label1" runat="server" Text="CLIENTE ID:" Font-Bold="True"></asp:Label>
                            <asp:TextBox ID="idClienteTextBox" runat="server" placeholder="ID" CssClass="form-control" Width="230px" Height="26px" MaxLength="8"></asp:TextBox>
                            <asp:Button class="btn btn-warning" ID="buscarCliButton" runat="server" Text="BUSCAR" OnClick="buscarCliButton_Click" />
                        </div>
                    </div>
                    <div class="form-group col-md-offset-1">
                        <asp:Label ID="Label2" runat="server" Text="NOMBRE:" Font-Bold="True"></asp:Label>
                        <asp:Label ID="Label7" class="col-md-offset-4" runat="server" Text="RUTA:" Font-Bold="True"></asp:Label>
                        <div class="form-inline">
                            <asp:TextBox ID="nombreCliTextBox" runat="server" placeholder="Nombres" CssClass="form-control" Width="400px" Height="26px" MaxLength="30"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="nombreCliTextBox" ErrorMessage="Formato Incorrecto" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$" ValidationGroup="A">*</asp:RegularExpressionValidator>
                            <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nombreCliTextBox" ErrorMessage="INGRESE SU NOMBRE" ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>--%>
                            <asp:DropDownList ID="rutaPDropDownList" runat="server" CssClass="form-control" Width="500px" Height="30px"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group col-md-offset-1">
                        <asp:Label ID="Label3" runat="server" Text="APELLIDO:" Font-Bold="True"></asp:Label>
                        <asp:Label ID="Label9" class="col-md-offset-4" runat="server" Text="CEDULA:" Font-Bold="True"></asp:Label>
                        <div class="form-inline">
                            <asp:TextBox ID="apellidoCliTextBox" runat="server" placeholder="Apellidos" CssClass="form-control" Width="400px" Height="26px" MaxLength="30"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="apellidoCliTextBox" ErrorMessage="Formato Incorrecto" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$" ValidationGroup="A">*</asp:RegularExpressionValidator>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="apellidoCliTextBox" ErrorMessage="INGRESE SU APELLIDO" ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>--%>
                            <asp:TextBox ID="cedulaCliTextBox" runat="server" placeholder="Cedula" CssClass="form-control" Width="500px" Height="26px" MaxLength="14"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="cedulaCliTextBox" ForeColor="Red" ValidationExpression="^[0-9]*" ValidationGroup="A">*</asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="INGRESE SU CEDULA" ControlToValidate="cedulaCliTextBox" ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group col-md-offset-1">
                        <asp:Label ID="Label4" runat="server" Text="APODO:" Font-Bold="True"></asp:Label>
                        <asp:Label ID="Label5" runat="server" class="col-md-offset-4" Text="DIRECCION:" Font-Bold="True"></asp:Label>
                        <div class="form-inline">
                            <asp:TextBox ID="apodoCliTextBox" runat="server" placeholder="Apodos" CssClass="form-control" Width="400px" Height="26px" MaxLength="30"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="apodoCliTextBox" ErrorMessage="Formato Incorrecto" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$" ValidationGroup="A">*</asp:RegularExpressionValidator>
                            <asp:TextBox ID="direccionCliTextBox" runat="server" placeholder="Direccion" CssClass="form-control" Width="500px" Height="26px" MaxLength="50"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="direccionCliTextBox" ErrorMessage="INGRESE SU DIRECCION" ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group col-md-offset-1">
                        <asp:Label ID="Label6" runat="server" Text="REFERENCIA:" Font-Bold="True"></asp:Label>
                        <asp:Label ID="Label10" class="col-md-offset-4" runat="server" Text="TELEFONO:" Font-Bold="True"></asp:Label>
                        <div class="form-inline">
                            <asp:TextBox ID="referenciaCliTextBox" runat="server" placeholder="Referencia" CssClass="form-control" Width="400px" Height="26px" MaxLength="50"></asp:TextBox>
                            <%--       <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="referenciaCliTextBox" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationGroup="A"></asp:RegularExpressionValidator> ME QUITA EL DISENO Y NO TENIA TIEMPO--%>
                            <asp:TextBox ID="telefonoCliTextBox" runat="server" placeholder="Telefono" CssClass="form-control" Width="500px" Height="26px" MaxLength="14"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="telefonoCliTextBox" ErrorMessage="Formato Incorrecto" ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ValidationGroup="A">*</asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="form-group col-md-offset-1">
                        <asp:Label ID="Label11" runat="server" Text="CELULAR:" Font-Bold="True"></asp:Label>
                        <asp:Label ID="Label8" class="col-md-offset-4" runat="server" Text="SEXO:" Font-Bold="True"></asp:Label>
                        <div class="form-inline">
                            <fieldset>
                                <asp:TextBox ID="celularCliTextBox" runat="server" placeholder="Celular" CssClass="form-control" Width="400px" Height="26px" MaxLength="14"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="celularCliTextBox" ErrorMessage="Formato Incorrecto" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" Text="*" ValidationGroup="A" ForeColor="Red"></asp:RegularExpressionValidator>
                                <asp:RadioButton ID="mRadioButton" class="radio-inline" runat="server" Text="MASCULINO" GroupName="SEXOGROUP"></asp:RadioButton>
                                <asp:RadioButton ID="fRadioButton" runat="server" class="radio-inline" Text="FEMENINO" GroupName="SEXOGROUP"></asp:RadioButton>
                            </fieldset>
                        </div>
                    </div>
                    <div class="text-center">
                        <asp:Button class="btn btn-info" ID="nuevoCliButton" runat="server" Text="NUEVO" OnClick="nuevoCliButton_Click" />
                        <asp:Button class="btn btn-success" ID="guardarCliButton" runat="server" Text="GUARDAR" OnClick="guardarCliButton_Click" ValidationGroup="A" />
                        <asp:Button class="btn btn-danger " ID="eliminarCliButton" runat="server" Text="ELIMINAR" OnClick="eliminarCliButton_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
