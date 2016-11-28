<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="RegistroPrestamos.aspx.cs" Inherits="PrestamosWeb.Registros.RegistroPrestamos" %>

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
                        <h4 class="text-center color-bg-one ">REGISTRO PRESTAMOS</h4>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <div class="form-inline">
                                <div>
                                    <asp:Label ID="Label1" runat="server" Text="PRESTAMO ID:" Font-Bold="True"></asp:Label>
                                </div>
                                <asp:TextBox ID="idPTextBox" runat="server" placeholder="ID" CssClass="form-control" Width="250px" Height="32px"></asp:TextBox>
                                <asp:Button ID="buscarPButton" class="btn btn-warning" runat="server" Text="BUSCAR" />
                                <asp:Label ID="Label2" runat="server" Text="FECHA INICIAL:" Font-Bold="True"></asp:Label>
                                <asp:TextBox ID="fechaInicialPTextBox" runat="server" placeholder="Fecha Inicial" CssClass="form-control" Width="250px" Height="32px"></asp:TextBox>
                                <asp:Label ID="Label3" runat="server" Text="FECHA VENCIMIENTO:" Font-Bold="True"></asp:Label>
                                <asp:TextBox ID="fechaFinalPTextBox" runat="server" placeholder="Fecha Vencimiento" CssClass="form-control" Width="250px" Height="32px"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="Label10" runat="server" Text="CLIENTE:" Font-Bold="True"></asp:Label>
                            </div>
                            <asp:DropDownList ID="clientePDropDownList" runat="server" CssClass="form-control" Width="356px" Height="32px" OnSelectedIndexChanged="clientePDropDownList_SelectedIndexChanged"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="Label4" runat="server" Text="MONTO:" Font-Bold="True"></asp:Label>
                            </div>
                            <asp:TextBox ID="montoPTextBox" runat="server" placeholder="Monto" CssClass="form-control" Width="356px" Height="32px" OnTextChanged="montoPTextBox_TextChanged"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <div class="form-inline">
                                <div>
                                    <asp:Label ID="Label5" runat="server" Text="CUOTA:" Font-Bold="True"></asp:Label>
                                </div>
                                <asp:TextBox ID="CuotaPTextBox" runat="server" placeholder="Cuota" CssClass="form-control" Width="356px" Height="32px"></asp:TextBox>
                                <asp:Label ID="Label6" runat="server" Text="SEMANA #:" Font-Bold="True"></asp:Label>
                                <asp:TextBox ID="nuSemanaPTextBox" runat="server" value="1" placeholder="Semana #" CssClass="form-control" Width="356px" Height="32px"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="Label7" runat="server" Text="CANTIDAD:" Font-Bold="True"></asp:Label>
                            </div>
                            <asp:DropDownList ID="cantidadCuotaDropDownList" runat="server" placeholder="Cantidad de Cuotas" CssClass="form-control" Width="356px" Height="32px">
                                <asp:ListItem>13</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="Label9" runat="server" Text="INTERES:" Font-Bold="True"></asp:Label>
                            </div>
                            <asp:DropDownList ID="interesDropDownList" runat="server" placeholder="Interes" CssClass="form-control" Width="356px" Height="32px">
                                <asp:ListItem Value="0.10 ">10%</asp:ListItem>
                            </asp:DropDownList>
                             </div>
                            <div class="form-group">
                                <div>
                                    <asp:Label ID="Label8" runat="server" Text="PAGO TOTAL:" Font-Bold="True"></asp:Label>
                                </div>
                                <asp:TextBox ID="PagoTotalPTextBox" runat="server" placeholder="Pago Total" CssClass="form-control" Width="356px" Height="32px"></asp:TextBox>
                            </div>
                            <div>
                                <asp:Button ID="nuevoPButton" runat="server" Text="NUEVO" OnClick="nuevoPButton_Click" />
                                <asp:Button ID="guardarPButton" runat="server" Text="GUARDAR" OnClick="guardarPButton_Click" />
                                <asp:Button ID="eliminarPButton" runat="server" Text="ELIMINAR" />
                            </div>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
