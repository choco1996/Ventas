<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/PagM.Master" CodeBehind="Clientesbus.aspx.vb" Inherits="Ventas.Clientesbus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Busqueda de Clientes</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron row justify-content-center">
        <h1 class="display-4 text-center">Busqueda de Clientes</h1>
    </div>
    <br />

    <div class="container-sm">
        <!-- Formulario -->
        <h3>Busqueda de Datos</h3>
        <hr />
    </div>
    <div class="row">
        <!-- Formulario centrado -->
        <div class="col-md-1"></div>
        <!--pading-->
        <div class="col-md-10 align-items-md-center">
            <div class="row">
                <div class="form-group col-sm-6">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" class="radio" RepeatColumns="4" CellSpacing="7" CellPadding="7">
                        <asp:ListItem Value="1" Text="Todos" Selected="True"></asp:ListItem>
                        <asp:ListItem Value="2" Text="Identidad"></asp:ListItem>
                        <asp:ListItem Value="3" Text="Apellido"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="form-group col-sm-4">
                    <asp:TextBox ID="txtbusqueda" runat="server" CssClass="form-control input-sm" />
                </div>
                <div class="form-group col-sm-2">
                    <asp:Button ID="btnbusqueda" Text="Busqueda" runat="server" CssClass="btn btn-primary" OnClick="boton" />
                </div>
            </div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="table table-striped">
                <Columns>
                    <asp:BoundField DataField="idclientes" HeaderText="Identidad" ReadOnly="True" SortExpression="idclientes" />
                    <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="apellido" HeaderText="Apellido" SortExpression="apellido" />
                    <asp:BoundField DataField="rtn" HeaderText="RTN" SortExpression="rtn" />
                    <asp:BoundField DataField="direccion" HeaderText="Direccion" SortExpression="direccion" />
                    <asp:BoundField DataField="telefono" HeaderText="Telefono" SortExpression="telefono" />
                    <asp:BoundField DataField="correo" HeaderText="Correo" SortExpression="correo" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" SelectCommand="SELECT [idclientes], [nombre], [apellido], [rtn], [direccion], [telefono], [correo] FROM [clientes] WHERE ([idclientes] LIKE '%' + @idclientes + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtbusqueda" Name="idclientes" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" SelectCommand="SELECT idclientes, nombre, apellido, rtn, direccion, telefono, correo FROM clientes WHERE (apellido LIKE '%' + @apellido + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtbusqueda" Name="apellido" PropertyName="Text" Type="String" DefaultValue="" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" SelectCommand="SELECT [idclientes], [nombre], [apellido], [rtn], [direccion], [telefono], [correo] FROM [clientes]"></asp:SqlDataSource>

            <div class="col-md-1"></div>
            <!--pading-->
        </div>
    </div>
</asp:Content>