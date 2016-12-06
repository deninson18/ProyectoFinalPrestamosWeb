<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="RegistroCobros.aspx.cs" Inherits="PrestamosWeb.Registros.RegistroCobros" %>

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
                    <h4 class="text-center color-bg-one ">COBROS</h4>
                </div>
                <div class="panel-body">
                    <div class="form-group col-md-offset-1">
                        <asp:Label ID="Label1" runat="server" Text="Cobro Id:" Font-Bold="True"></asp:Label>
                        <asp:Label ID="Label2" runat="server" class="col-md-offset-5" Text="Fecha:" Font-Bold="True"></asp:Label>
                        <div class="form-inline">
                            <asp:TextBox ID="cobroIdTextBox" runat="server" placeholder="ID" CssClass="form-control" Width="390px" Height="26px" MaxLength="8"></asp:TextBox>
                            <asp:Button ID="BuscarCobroButton" CssClass="btn btn-warning" runat="server" Text="BUSCAR" Width="84px" OnClick="BuscarCobroButton_Click" />
                            <asp:TextBox ID="fechaCobroTextBox" runat="server" placeholder="Fecha Inicial" CssClass="form-control" Width="390px" Height="26px" TextMode="Date"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group col-md-offset-1">
                        <asp:Label ID="Label7" runat="server" Text="Cliente" Font-Bold="True"></asp:Label>
                        <asp:Label ID="Label3" runat="server" class="col-md-offset-5" Text="Semana #:" Font-Bold="True"></asp:Label>
                        <div class="form-inline">
                            <asp:DropDownList ID="clienteCobroDropDownList" runat="server" placeholder="Cliente" CssClass="form-control" Width="470px" Height="32px" AutoPostBack="True" OnSelectedIndexChanged="clienteCobroDropDownList_SelectedIndexChanged1"></asp:DropDownList>
                            <asp:TextBox ID="SemanaNuCobroTextBox" runat="server" placeholder="Semana #" CssClass="form-control" Width="405px" Height="32px" MaxLength="8"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="SemanaNuCobroTextBox" ErrorMessage="Formato Incorrecto" ForeColor="Red" ValidationExpression="^[0-9]*" ValidationGroup="A">*</asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="SemanaNuCobroTextBox" ErrorMessage="INGRESE NUMERO DE SEMANA" ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group col-md-offset-1">
                        <asp:Label ID="Label4" runat="server" Text="Cuota:" Font-Bold="True"></asp:Label>
                        <asp:Label ID="Label5" runat="server" class="col-md-offset-3" Text="Abono" Font-Bold="True"></asp:Label>
                        <asp:Label ID="Label6" runat="server" class="col-md-offset-2" Text="Total:" Font-Bold="True"></asp:Label>
                        <div class="form-inline">
                            <asp:DropDownList ID="cuotaCobroDropDownList" runat="server" placeholder="Cuota" CssClass="form-control" Width="280px" Height="32px"></asp:DropDownList>
                            <asp:TextBox ID="abonoCobroTextBox" runat="server" placeholder="Abono" CssClass="form-control" Width="230px" Height="32px" MaxLength="8"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="abonoCobroTextBox" ErrorMessage="Formato Incorrecto" ForeColor="Red" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="subTotalCobroTextBox" runat="server" placeholder="Sub-Total" CssClass="form-control" Width="275px" Height="32px" Enabled="False"></asp:TextBox>
                            <asp:Button ID="agregarCobroButton" class="btn btn-primary" runat="server" Text="Agregar" Width="70px" OnClick="agregarCobroButton_Click" />
                        </div>
                    </div>
                    <div class="form-group col-md-offset-1">
                        <asp:GridView ID="cobrosGridView" runat="server" Width="525px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                        </asp:GridView>
                    </div>
                    <div class="form-group col-md-offset-4">
                        <div class="form-inline">
                        </div>
                    </div>
                    <div class="text-center">
                        <asp:Button ID="nuevoButton" class="btn btn-info" runat="server" Text="NUEVO" Width="84px" OnClick="nuevoButton_Click" />
                        <asp:Button ID="guardarButton" class="btn btn-success" runat="server" Text="GUARDAR" Width="84px" OnClick="guardarButton_Click" ValidationGroup="A" />
                        <asp:Button ID="eliminarButton" class="btn btn-danger" runat="server" Text="ELIMINAR" Width="84px" OnClick="eliminarButton_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
