<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/PagM.Master" CodeBehind="ProductoElim.aspx.vb" Inherits="Ventas.ProductoElim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Producto</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        function alertme() {
            Swal.fire({
                icon: 'success',
                title: 'Accion ejecutada corretamente',

            })
        }
        function errorme() {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'No se pudo agregar el registro',
            })
        }
    </script>
    <div class="jumbotron row justify-content-center">
        <h1 class="display-4 text-center">Categorias de Producto</h1>
    </div>
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
                <div class="form-group col-sm-5">
                    <asp:RadioButtonList ID="RadioButtonList3" runat="server" class="radio" RepeatColumns="4" CellSpacing="7" CellPadding="7">
                        <asp:ListItem Value="1" Text="Todos" Selected="True"></asp:ListItem>
                        <asp:ListItem Value="2" Text="Codigo"></asp:ListItem>
                        <asp:ListItem Value="3" Text="Nombre"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="form-group col-sm-4">
                    <asp:TextBox ID="txtbusqueda" runat="server" CssClass="form-control input-sm" />
                </div>
                <div class="form-group col-sm-3">
                    <asp:Button ID="btnbusqueda" Text="Buscar" runat="server" CssClass="btn btn-primary" CausesValidation="False" />
                    <asp:Button ID="btnselecion" Text="Eliminar" runat="server" CssClass="btn btn-primary" />
                </div>
            </div>
            <div class="row">
                <div class="form-group col-sm-4 text-center"></div>
                <div class="form-group col-sm-4 text-center">
                    <label>Escriba el codigo</label>
                    <label class="alert alert-warning" role="alert">"Completo"</label>
                </div>
                <div class="form-group col-sm-4 text-center"></div>
            </div>

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="table table-striped" AllowSorting="True" DataKeyNames="idproducto" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" ReadOnly="True" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="activo" HeaderText="activo" SortExpression="activo" />
                    <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
                    <asp:BoundField DataField="inventario" HeaderText="inventario" SortExpression="inventario" />
                    <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" SelectCommand="SELECT producto.idproducto, producto.nombre, producto.activo, producto.precio, producto.inventario, categorias.nombre AS Categoria FROM categorias INNER JOIN producto ON categorias.idcategoria = producto.idcategoria"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" DeleteCommand="DELETE FROM producto FROM producto INNER JOIN categorias ON producto.idcategoria = categorias.idcategoria WHERE (producto.idproducto = @idproducto)" SelectCommand="SELECT producto.idproducto,producto.nombre,  producto.activo, producto.precio, producto.inventario, categorias.nombre AS Categoria FROM categorias INNER JOIN producto ON categorias.idcategoria = producto.idcategoria WHERE (producto.idproducto = @idproducto)">
        <DeleteParameters>
            <asp:ControlParameter ControlID="txtbusqueda" Name="idproducto" PropertyName="Text" />
        </DeleteParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="txtbusqueda" Name="idproducto" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" SelectCommand="SELECT producto.idproducto, producto.nombre, producto.activo, producto.precio, producto.inventario, categorias.nombre AS Categoria FROM categorias INNER JOIN producto ON categorias.idcategoria = producto.idcategoria WHERE (producto.nombre LIKE '%' + @nombre + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtbusqueda" Name="nombre" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>