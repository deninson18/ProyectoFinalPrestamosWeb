<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="RegistroPrestamos.aspx.cs" Inherits="PrestamosWeb.Registros.RegistroPrestamos" %>

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
                    <h4 class="text-center color-bg-one ">REGISTRO PRESTAMOS</h4>
                </div>
                <div class="panel-body">
                    <div class="form-group col-md-offset-1">
                        <asp:Label ID="Label1" runat="server" Text="PRESTAMO ID:" Font-Bold="True"></asp:Label>
                        <asp:Label ID="Label2" class="col-md-offset-3" runat="server" Text="FECHA INICIAL:" Font-Bold="True"></asp:Label>
                        <asp:Label ID="Label3" runat="server" class="col-md-offset-2" Text="FECHA VENCIMIENTO:" Font-Bold="True"></asp:Label>
                        <div class="form-inline">
                            <asp:TextBox ID="idPTextBox" runat="server" placeholder="ID" CssClass="form-control" Width="250px" Height="26px" MaxLength="8"></asp:TextBox>
                            <asp:Button ID="buscarPButton" class="btn btn-warning" runat="server" Text="BUSCAR" Width="84px" OnClick="buscarPButton_Click" />
                            <asp:TextBox ID="fechaInicialPTextBox" runat="server" placeholder="Fecha Inicial" CssClass="form-control" Width="260px" Height="26px" TextMode="Date"></asp:TextBox>
                            <asp:TextBox ID="fechaFinalPTextBox" runat="server" placeholder="Fecha Vencimiento" CssClass="form-control" Width="260px" Height="26px" TextMode="Date"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group col-md-offset-1">
                        <asp:Label ID="Label10" runat="server" Text="CLIENTE:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="clientePDropDownList" runat="server" CssClass="form-control" Width="885px" Height="32px" OnSelectedIndexChanged="clientePDropDownList_SelectedIndexChanged"></asp:DropDownList>
                    </div>
                    <div class="form-group col-md-offset-1">
                        <asp:Label ID="Label4" runat="server" Text="MONTO:" Font-Bold="True"></asp:Label>
                        <asp:TextBox ID="montoPTextBox" runat="server" placeholder="Monto" CssClass="form-control" Width="885px" Height="26px" OnTextChanged="montoPTextBox_TextChanged" MaxLength="8"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="montoPTextBox" ErrorMessage="Formato Incorrecto" ForeColor="Red" ValidationExpression="^[0-9]*" ValidationGroup="A">*</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="montoPTextBox" ErrorMessage="INGRESE EL MONTO" ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group col-md-offset-1">
                        <asp:Label ID="Label5" runat="server" Text="CUOTA:" Font-Bold="True"></asp:Label>
                        <asp:Label ID="Label6" runat="server" class="col-md-offset-5" Text="SEMANA #:" Font-Bold="True"></asp:Label>
                        <div class="form-inline">
                            <asp:TextBox ID="CuotaPTextBox" runat="server" placeholder="Cuota" CssClass="form-control" Width="470px" Height="26px" Enabled="False"></asp:TextBox>
                            <asp:TextBox ID="nuSemanaPTextBox" runat="server" placeholder="Semana #" CssClass="form-control" Width="405px" Height="26px" Enabled="False">1</asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group col-md-offset-1">
                        <asp:Label ID="Label7" runat="server" Text="CANTIDAD:" Font-Bold="True"></asp:Label>
                        <asp:Label ID="Label9" runat="server" class="col-md-offset-5" Text="INTERES:" Font-Bold="True"></asp:Label>
                        <div class="form-inline">
                            <asp:DropDownList ID="cantidadCuotaDropDownList" runat="server" placeholder="Cantidad de Cuotas" CssClass="form-control" Width="470px" Height="32px">
                                <asp:ListItem>13</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="interesDropDownList" runat="server" placeholder="Interes" CssClass="form-control" Width="405px" Height="32px">
                                <asp:ListItem Value="0.10 ">10%</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group col-md-offset-1">
                        <asp:Label ID="Label8" runat="server" Text="PAGO TOTAL:" Font-Bold="True"></asp:Label>
                        <asp:TextBox ID="PagoTotalPTextBox" runat="server" placeholder="Pago Total" CssClass="form-control" Width="885px" Height="26px" Enabled="False"></asp:TextBox>
                    </div>
                    <div class="text-center">
                        <asp:Button ID="nuevoPButton" class="btn btn-info" runat="server" Text="NUEVO" Width="84px" OnClick="nuevoPButton_Click" />
                        <asp:Button ID="guardarPButton" class="btn btn-success" runat="server" Text="GUARDAR" Width="84px" OnClick="guardarPButton_Click" ValidationGroup="A" />
                        <asp:Button ID="eliminarPButton" class="btn btn-danger" runat="server" Text="ELIMINAR" Width="84px" OnClick="eliminarPButton_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
