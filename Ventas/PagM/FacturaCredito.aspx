<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/PagM.Master" CodeBehind="FacturaCredito.aspx.vb" Inherits="Ventas.FacturaCredito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Facturas</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <div class="jumbotron row justify-content-center">
        <h1 class="display-4 text-center">Factura Credito</h1>
    </div>
    <br />

    <div class="container-sm">
        <!-- Formulario -->
        <h3>Facturas</h3>
        <hr />
    </div>
    <div class="row">
        <!-- Formulario centrado -->
        <div class="col-md-1"></div>
        <!--pading-->
        <div class="col-md-10 align-items-md-center">
            <div class="row">

            </div>

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="table table-striped" AllowSorting="True" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="idventacredito" HeaderText="ID Venta Credito" ReadOnly="True" SortExpression="idventacredito" InsertVisible="False" />
                    <asp:BoundField DataField="idusuario" HeaderText="Usuario" SortExpression="idusuario" />
                    <asp:BoundField DataField="idclientes" HeaderText="Cliente" SortExpression="idclientes" />
                    <asp:BoundField DataField="fecha" HeaderText="Fecha" SortExpression="fecha" />
                    <asp:BoundField DataField="num_detalle" HeaderText="Num Detalle" SortExpression="num_detalle" />
                    <asp:BoundField DataField="nombre" HeaderText="Nombre Producto" SortExpression="nombre" />
                    <asp:BoundField DataField="cantidad" HeaderText="Cantidad" SortExpression="cantidad" />
                    <asp:BoundField DataField="precio" HeaderText="Precio" SortExpression="precio" />
                </Columns>
            </asp:GridView>
        </div>
        <div class="col-md-1">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" SelectCommand="SELECT ventas_credito.idventacredito, ventas_credito.idusuario, ventas_credito.idclientes, ventas_credito.fecha, ventas_creditodetalle.num_detalle, producto.nombre, ventas_creditodetalle.cantidad, ventas_creditodetalle.precio FROM producto INNER JOIN ventas_creditodetalle ON producto.idproducto = ventas_creditodetalle.idproducto INNER JOIN ventas_credito ON ventas_creditodetalle.idventacredito = ventas_credito.idventacredito ORDER BY ventas_credito.idventacredito"></asp:SqlDataSource>
        </div>
        <!--pading-->
    </div>
    
</asp:Content>
