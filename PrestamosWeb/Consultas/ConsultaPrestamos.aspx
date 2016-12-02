<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="ConsultaPrestamos.aspx.cs" Inherits="PrestamosWeb.Consultas.ConsultaPrestamos" %>

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
                    <h4 class="text-center">CONSULTA DE PRESTAMOS</h4>
                </div>
                <div class="panel-body">
                    <div class="form-group col-md-offset-1">
                        <div class="form-inline">
                            <asp:Label ID="Label1" runat="server" Text="BUSCAR POR:" Font-Bold="true"></asp:Label>
                            <asp:DropDownList ID="ConsultaPrestamosDropDownList" class="btn btn-success dropdown-toggle" runat="server" Width="300px" Height="32px">
                                <asp:ListItem Value="PrestamoId">Prestamo Id</asp:ListItem>
                                <asp:ListItem Value="Nombres">Nombre</asp:ListItem>
                                <asp:ListItem Value="FechaInicial">Fecha Inicial</asp:ListItem>
                                <asp:ListItem Value="Monto">Monto</asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="PrestamoFTextBox" runat="server" CssClass="form-control" Width="350px" Height="32px"></asp:TextBox>
                            <asp:Button ID="consultaPrestamoButton" runat="server" Text="Buscar" class="btn btn-warning" Width="84px" OnClick="consultaPrestamoButton_Click" />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:GridView ID="PrestamosGridView" runat="server" AllowPaging="true" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" PageSize="12" Font-Names="Arial" Font-Size="Medium">
                            <AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                            <HeaderStyle BackColor="#99FF99" BorderColor="Black" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" />
                            <PagerStyle CssClass="pgr"></PagerStyle>
                        </asp:GridView>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="imprimirPrestamoButton" runat="server" Width="84px" class="btn btn-warning" OnClick="imprimirPrestamoButton_Click" Text="IMPRIMIR" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
