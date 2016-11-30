<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="ConsultaCliente.aspx.cs" Inherits="PrestamosWeb.Consultas.ConsultaCliente" %>

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
                    <h4 class="text-center">CONSULTA DE CLIENTES</h4>
                </div>
                <div class="panel-body">
                    <div class="form-group col-md-offset-1">
                        <div class="form-inline">
                            <asp:Label ID="Label1" runat="server" Text="BUSCAR POR:"></asp:Label>
                            <asp:DropDownList ID="consultaClienteDropDownList" runat="server" class="btn btn-success dropdown-toggle" Width="300px" Height="32px">
                                <asp:ListItem Value="ClienteId">Id</asp:ListItem>
                                <asp:ListItem Value="Nombres">Nombre</asp:ListItem>
                                <asp:ListItem Value="Apellidos">Apellido</asp:ListItem>
                                <asp:ListItem Value="Direccion">Direccion</asp:ListItem>
                                <asp:ListItem Value="Cedula">Cedula</asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="ClienteFTextBox" runat="server" CssClass="form-control" Width="350px" Height="32px"></asp:TextBox>
                            <asp:Button ID="consultarClienteButton" runat="server" Text="Buscar" class="btn btn-warning" Width="84px" OnClick="consultarClienteButton_Click" />
                        </div>
                    </div>
                    <div class="form-group col-md-offset-1">
                        <asp:GridView ID="ClientesGridView" runat="server" Width="850px" CssClass="mGrid" AlternatingRowStyle-CssClass="alt" GridLines="Vertical" PageSize="10">
                            <AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                            <HeaderStyle BackColor="#99FF99" BorderColor="Black" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" />
                            <PagerStyle CssClass="pgr"></PagerStyle>
                        </asp:GridView>
                    </div>
                     <div class="form-group col-md-offset-1">
                        <asp:Button ID="impClienteButton" runat="server" class="btn btn-warning" Text="IMPRIMIR" Width="84px" OnClick="impClienteButton_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
