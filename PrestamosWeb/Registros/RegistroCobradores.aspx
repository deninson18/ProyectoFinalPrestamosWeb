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
            <div class=" panel panel-success">
                <div class="panel-heading">
                    <h4 class="text-center color-bg-one ">REGISTRO COBRADORES</h4>
                </div>
                <div class="panel-body">
                    <div class="form-group col-md-offset-2">
                        <div class="form-inline">
                            <asp:Label ID="Label1" runat="server" Font-Bold="true" Text="COBRADOR ID:"></asp:Label>
                            <asp:TextBox ID="idCoTextBox" runat="server" placeholder="ID" CssClass="form-control" Width="350px" Height="26px" MaxLength="8"></asp:TextBox>
                            <asp:Button class="btn btn-warning" ID="buscarCoButton" runat="server" Text="BUSCAR" OnClick="buscarCoButton_Click" Width="84px" />
                        </div>
                    </div>
                    <div class="form-group col-md-offset-2">
                        <asp:Label ID="Label2" runat="server" Font-Bold="true" Text="NOMBRE:"></asp:Label>
                        <asp:TextBox ID="nombreCoTextBox" runat="server" placeholder="NOMBRE" CssClass="form-control" Width="800px" Height="26px" MaxLength="30"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="nombreCoTextBox" ErrorMessage="Formato Incorrecto" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$" Font-Size="Medium" ValidationGroup="A">*</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nombreCoTextBox" ForeColor="Red" ValidationGroup="A" ErrorMessage="INGRESE SU NOMBRE"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group col-md-offset-2">
                        <asp:Label ID="Label3" runat="server" Font-Bold="true" Text=" APELLIDO:"></asp:Label>
                        <asp:TextBox ID="apellidoCoTextBox" runat="server" placeholder="Apellido" CssClass="form-control" Width="800px" Height="26px" MaxLength="30"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="apellidoCoTextBox" ErrorMessage="Formato Incorrecto" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$" Font-Size="Medium" ValidationGroup="A">*</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="apellidoCoTextBox" ForeColor="Red" ValidationGroup="A" ErrorMessage="INGRESE SU APELLIDO"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group col-md-offset-2">
                        <asp:Label ID="Label4" runat="server" Font-Bold="true" Text=" DIRECCION:"></asp:Label>
                        <asp:TextBox ID="direccionCoTextBox" runat="server" placeholder="Direccion" CssClass="form-control" Width="800px" Height="26px" MaxLength="30"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="direccionCoTextBox" ForeColor="Red" ValidationGroup="A" ErrorMessage="INGRESE SU DIRECCION"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group col-md-offset-2">
                        <asp:Label ID="Label5" runat="server" Font-Bold="true" Text=" TELEFONO:"></asp:Label>
                        <asp:TextBox ID="telefonoCoTextBox" runat="server" placeholder="Telefono" CssClass="form-control" Width="800px" Height="26px" MaxLength="30"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="telefonoCoTextBox" ErrorMessage="FORMATO INCORRECTO" ForeColor="Red" ValidationGroup="A" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group col-md-offset-2">
                        <asp:Label ID="Label6" runat="server" Font-Bold="true" Text="CELULAR:"></asp:Label>
                        <asp:TextBox ID="celularCoTextBox" runat="server" placeholder="Celular" CssClass="form-control" Width="800px" Height="26px" MaxLength="30"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="celularCoTextBox" ErrorMessage="FORMATO INCORRECTO" ForeColor="Red" ValidationGroup="A" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group col-md-offset-2">
                        <asp:Label ID="Label7" runat="server" Font-Bold="true" Text="CEDULA:"></asp:Label>
                        <asp:TextBox ID="cedulaCoTextBox" runat="server" placeholder="Cedula" CssClass="form-control" Width="800px" Height="26px" MaxLength="30"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="cedulaCoTextBox" ForeColor="Red" ValidationGroup="A" ErrorMessage="FORMATO INCORRECTO" ValidationExpression="[0-9]{3}-[0-9]{6}-[0-9A]{5}">*</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="cedulaCoTextBox" ForeColor="Red" ValidationGroup="A" ErrorMessage="INGRESE SU CEDULA"></asp:RequiredFieldValidator>
                    </div>
                    <div class="text-center">
                        <asp:Button class="btn btn-info" ID="nuevoCoButton" runat="server" Text="NUEVO" OnClick="nuevoCoButton_Click" Width="84px" />
                        <asp:Button class="btn btn-success" ID="guardarCoButton" runat="server" Text="GUARDAR" OnClick="guardarCoButton_Click" Width="84px" ValidationGroup="A" />
                        <asp:Button class="btn btn-danger" ID="eliminarCoButton" runat="server" Text="ELIMINAR" OnClick="eliminarCoButton_Click" Width="84px" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
