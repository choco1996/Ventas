<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/PagM.Master" CodeBehind="FacturaContado.aspx.vb" Inherits="Ventas.FacturaContado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Facturas</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="jumbotron row justify-content-center">
        <h1 class="display-4 text-center">Factura Contado</h1>
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
                    <asp:BoundField DataField="idventa" HeaderText="ID Venta" ReadOnly="True" SortExpression="idventa" InsertVisible="False" />
                    <asp:BoundField DataField="idusuario" HeaderText="Usuario" SortExpression="idusuario" />
                    <asp:BoundField DataField="fecha" HeaderText="Fecha" SortExpression="fecha" />
                    <asp:BoundField DataField="num_detalle" HeaderText="Num-Detalle" SortExpression="num_detalle" />
                    <asp:BoundField DataField="nombre" HeaderText="Producto" SortExpression="nombre" />
                    <asp:BoundField DataField="cantidad" HeaderText="Cantidad" SortExpression="cantidad" />
                    <asp:BoundField DataField="precio" HeaderText="Precio" SortExpression="precio" />
                </Columns>
            </asp:GridView>
        </div>
        <div class="col-md-1">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" SelectCommand="SELECT ventas_contado.idventa, ventas_contado.idusuario, ventas_contado.fecha, ventas_contadodetalle.num_detalle, producto.nombre, ventas_contadodetalle.cantidad, ventas_contadodetalle.precio FROM ventas_contado INNER JOIN ventas_contadodetalle ON ventas_contado.idventa = ventas_contadodetalle.idventa INNER JOIN producto ON ventas_contadodetalle.idproducto = producto.idproducto ORDER BY ventas_contado.idventa"></asp:SqlDataSource>
        </div>
        <!--pading-->
    </div>
    
</asp:Content>
