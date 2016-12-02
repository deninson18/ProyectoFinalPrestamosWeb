<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="RegistroRutas.aspx.cs" Inherits="PrestamosWeb.Registros.RegistroRutas" %>

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
                    <h4 class="text-center color-bg-one ">REGISTRO RUTAS</h4>
                </div>
                <div class="panel-body">
                    <div class="form-group col-md-offset-2">
                        <div class="form-inline">
                            <asp:Label ID="Label1" runat="server" Font-Bold="true" Text=" Ruta ID:"></asp:Label>
                            <asp:TextBox ID="idRutaTextBox" runat="server" placeholder="ID" CssClass="form-control" Width="350px" Height="26px" MaxLength="8"></asp:TextBox>
                            <asp:Button class="btn btn-warning" ID="buscarRuButton" runat="server" Text="BUSCAR" OnClick="buscarRuButton_Click" Width="84px" />
                        </div>
                    </div>
                    <div class="form-group col-md-offset-2">
                        <asp:Label ID="Label2" runat="server" Text=" Nombre de Ruta:" Font-Bold="True"></asp:Label>
                        <asp:TextBox ID="nombreRuTextBox" runat="server" placeholder="Ruta" CssClass="form-control" Width="800px" Height="26px" MaxLength="30"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="nombreRuTextBox" ErrorMessage="Formato Incorrecto" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$" ValidationGroup="A">*</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nombreRuTextBox" ErrorMessage="INGRESE LA RUTA" ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group col-md-offset-2">
                        <asp:Label ID="Label3" runat="server" Text="Cobrador:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="cobradorRuDropDownList" runat="server" CssClass="form-control" Width="800px" Height="30px">
                        </asp:DropDownList>
                    </div>
                    <div class="text-center">
                        <asp:Button class="btn btn-info" ID="nuevoRuButton" runat="server" Text="NUEVO" OnClick="nuevoRuButton_Click" Width="84px" />
                        <asp:Button class="btn btn-success" ID="guardarRuButton" runat="server" Text="GUARDAR" OnClick="guardarRuButton_Click" Width="84px" ValidationGroup="A" />
                        <asp:Button class="btn btn-danger" ID="eliminarRuButton" runat="server" Text="ELIMINAR" OnClick="eliminarRuButton_Click" Width="84px" />
                    </div>
                </div>
            </div>
        </div>
    </div>



</asp:Content>
