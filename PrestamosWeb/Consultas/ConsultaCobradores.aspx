<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="ConsultaCobradores.aspx.cs" Inherits="PrestamosWeb.Consultas.ConsultaCobradores" %>

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
                    <h4 class="text-center  ">CONSULTA DE COBRADORES</h4>
                </div>
                <div class="panel-body">
                    <div class="form-group col-md-offset-1">
                        <div class="form-inline">
                            <asp:Label ID="Label1" runat="server" Text="BUSCAR POR:" Font-Bold="true"></asp:Label>
                            <asp:DropDownList ID="consultaCoDropDownList" class="btn btn-success dropdown-toggle" runat="server" Width="300px" Height="32px">
                                <asp:ListItem Value="CobradorId">ID</asp:ListItem>
                                <asp:ListItem Value="Nombres">Nombre</asp:ListItem>
                                <asp:ListItem Value="Apellidos">Apellido</asp:ListItem>
                                <asp:ListItem Value="Cedula">Cedula</asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="cobradorFTextBox" runat="server" CssClass="form-control" Width="350px" Height="32px"></asp:TextBox>
                            <asp:Button ID="consultaCobradorButton" runat="server" Text="BUSCAR" class="btn btn-warning" Width="84px" OnClick="consultaCobradorButton_Click" />
                        </div>
                    </div>
                    <div class="form-group col-md-offset-1">
                        <asp:GridView ID="cobradoresGridView" runat="server" Width="760px" CssClass="mGrid" AlternatingRowStyle-CssClass="alt" GridLines="Vertical" PageSize="10">
                            <AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                            <HeaderStyle BackColor="#99FF99" BorderColor="Black" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" />
                            <PagerStyle CssClass="pgr"></PagerStyle>
                        </asp:GridView>
                    </div>
                    <div class="form-group col-md-offset-1">
                        <asp:Button ID="imprimirCobradorButton" runat="server" Text="IMPRIMIR" CssClass="btn btn-warning" Width="84px" OnClick="imprimirCobradorButton_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
