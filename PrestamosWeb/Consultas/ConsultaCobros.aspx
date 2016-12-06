<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="ConsultaCobros.aspx.cs" Inherits="PrestamosWeb.Consultas.ConsultaCobros" %>
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
                    <h4 class="text-center">CONSULTA DE COBROS</h4>
                </div>
                <div class="panel-body">
                    <div class="form-group col-md-offset-1">
                        <div class="form-inline">
                             <asp:Label ID="Label1" runat="server" Text="BUSCAR POR:"></asp:Label>
                             <asp:DropDownList ID="consultaCobroDropDownList" runat="server" class="btn btn-success dropdown-toggle" Width="300px" Height="32px">
                                <asp:ListItem Value="C.CobroId">Id</asp:ListItem>
                                
                               
                            </asp:DropDownList>
                            <asp:TextBox ID="CobroFTextBox" runat="server" CssClass="form-control" Width="350px" Height="32px"></asp:TextBox>
                            <asp:Button ID="consultarCobroButton" runat="server" Text="Buscar" class="btn btn-warning" Width="84px" OnClick="consultarCobroButton_Click" />
                        </div>
                    </div>
                    <div class="form-group col-md-offset-1">
                        <asp:GridView ID="CobrosGridView" runat="server" Width="850px" CssClass="mGrid" AlternatingRowStyle-CssClass="alt" GridLines="Vertical" PageSize="10">
                            <AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                            <HeaderStyle BackColor="#99FF99" BorderColor="Black" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" />
                            <PagerStyle CssClass="pgr"></PagerStyle>
                        </asp:GridView>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
