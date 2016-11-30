<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="ConsultaRutas.aspx.cs" Inherits="PrestamosWeb.Consultas.ConsultaRutas" %>

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
                    <h4 class="text-center">CONSULTA DE RUTAS</h4>
                </div>
                <div class="panel-body">
                    <div class="form-group col-md-offset-1">
                        <div class="form-inline">
                            <asp:Label ID="Label1" runat="server" Text="BUSCAR POR:" Font-Bold="true"></asp:Label>
                            <asp:DropDownList ID="consultaRuDropDownList" class="btn btn-success dropdown-toggle" runat="server" Width="300px" Height="32px">
                                <asp:ListItem Value="RutaId">ID</asp:ListItem>
                                <asp:ListItem Value="NombreRuta">Nombre</asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="rutaFTextBox" runat="server" CssClass="form-control" Width="350px" Height="32px"></asp:TextBox>
                            <asp:Button ID="consultaRutaButton" runat="server" Text="BUSCAR" class="btn btn-warning" Width="84px" OnClick="consultaRutaButton_Click" />
                        </div>
                    </div>
                    <div class="form-group col-md-offset-1">
                        <asp:GridView ID="rutasGridView" runat="server" Width="760px" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" GridLines="Vertical" PageSize="7">
                            <AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                            <HeaderStyle BackColor="#99FF99" BorderColor="Black" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" />
                            <PagerStyle CssClass="pgr"></PagerStyle>
                        </asp:GridView>
                    </div>
                    <div class="form-group col-md-offset-1">
                        <asp:Button ID="impRutaButton" runat="server" class="btn btn-warning" Text="IMPRIMIR" Width="84px" OnClick="impRutaButton_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
