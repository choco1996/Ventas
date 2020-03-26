<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/PagM.Master" CodeBehind="ProductoMod.aspx.vb" Inherits="Ventas.ProductoMod" %>

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
                        <asp:ListItem Value="2" Text="Nombre"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="form-group col-sm-4">
                    <asp:TextBox ID="txtbusqueda" runat="server" CssClass="form-control input-sm" />
                </div>
                <div class="form-group col-sm-3">
                    <asp:Button ID="btnbusqueda" Text="Buscar" runat="server" CssClass="btn btn-primary" CausesValidation="False" />
                    <asp:Button ID="btnselecion" Text="Selecionar" runat="server" CssClass="btn btn-primary" CausesValidation="false" />
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
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="table table-striped" AllowSorting="True" DataKeyNames="idproducto" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="idproducto" HeaderText="ID" ReadOnly="True" SortExpression="idproducto" />
                    <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="precio" HeaderText="Precio" SortExpression="precio" />
                    <asp:BoundField DataField="activo" HeaderText="Activo" SortExpression="activo" />
                    <asp:BoundField DataField="inventario" HeaderText="Inventario" SortExpression="inventario" />
                    <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
    <div class="col-md-1"></div>
    <!--pading-->
    <br />
    <div class="container-sm">
        <!-- Formulario -->
        <h3>Modificacion de datos</h3>
        <hr class="my-4">
    </div>
    <div class="row">
        <!-- Formulario centrado -->
        <div class="col-md-3"></div>
        <div class="col-md-6 align-items-md-center">
            <div class="form-group">
                <label>Nombre del Producto</label>
                <asp:TextBox ID="txtnombre" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator ControlToValidate="txtnombre" ErrorMessage="Introduzca el Nombre" runat="server" CssClass="text-danger" />
            </div>
            <div class="form-group">
                <label>Precio</label>
                <asp:TextBox ID="txtprecio" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator ControlToValidate="txtprecio" ErrorMessage="Introduzca un precio" runat="server" CssClass="text-danger" />
            </div>
            <div class="form-group">
                <label>Estado</label>
                <div class="form-group col-sm-12">
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" class="radio" RepeatColumns="6" CellSpacing="7" CellPadding="7">
                        <asp:ListItem Value="1" Text="Activo" Selected="True"></asp:ListItem>
                        <asp:ListItem Value="2" Text="Inactivo"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
            <div class="form-group">
                <label>Inventario</label>
                <asp:TextBox ID="txtinventario" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator ControlToValidate="txtinventario" ErrorMessage="Introduzca una cantidad" runat="server" CssClass="text-danger" />
            </div>
            <div class="form-group">
                <label>Categoria</label>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="idcategoria" CssClass="form-control"></asp:DropDownList>
            </div>
            <div class="text-center">
                <asp:Button Text="Modificar" ID="btnguardar" runat="server" CssClass="btn btn-primary" />
            </div>
        </div>
        <div class="col-md-3"></div>
        <!--pading-->
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" SelectCommand="SELECT idcategoria, nombre FROM categorias"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" SelectCommand="SELECT producto.idproducto, producto.nombre, producto.precio, producto.activo, producto.inventario, categorias.nombre AS Categoria FROM producto INNER JOIN categorias ON producto.idcategoria = categorias.idcategoria"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" DeleteCommand="DELETE FROM [producto] WHERE [idproducto] = @idproducto" InsertCommand="INSERT INTO [producto] ([idproducto], [nombre], [precio], [activo], [inventario], [idcategoria]) VALUES (@idproducto, @nombre, @precio, @activo, @inventario, @idcategoria)" SelectCommand="SELECT producto.idproducto, producto.nombre, producto.precio, producto.activo, producto.inventario, categorias.nombre AS Categoria FROM producto INNER JOIN categorias ON producto.idcategoria = categorias.idcategoria WHERE (producto.idproducto = @idproducto) OR (producto.nombre LIKE '%' + @nombre + '%')" UpdateCommand="UPDATE [producto] SET [nombre] = @nombre, [precio] = @precio, [activo] = @activo, [inventario] = @inventario, [idcategoria] = @idcategoria WHERE [idproducto] = @idproducto">
        <DeleteParameters>
            <asp:Parameter Name="idproducto" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="idproducto" Type="Int32" />
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="precio" Type="Double" />
            <asp:Parameter Name="activo" Type="Byte" />
            <asp:Parameter Name="inventario" Type="Int32" />
            <asp:Parameter Name="idcategoria" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="txtbusqueda" Name="idproducto" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="txtbusqueda" Name="nombre" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="txtnombre" Name="nombre" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtprecio" Name="precio" PropertyName="Text" Type="Double" />
            <asp:ControlParameter ControlID="RadioButtonList3" Name="activo" PropertyName="SelectedValue" Type="Byte" />
            <asp:ControlParameter ControlID="txtinventario" Name="inventario" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="txtbusqueda" Name="idproducto" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="DropDownList1" Name="idcategoria" PropertyName="SelectedValue" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" SelectCommand="SELECT producto.idproducto, producto.nombre, producto.activo, producto.precio, producto.inventario, categorias.nombre AS Categoria FROM categorias INNER JOIN producto ON categorias.idcategoria = producto.idcategoria WHERE (producto.nombre LIKE '%' + @nombre + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtbusqueda" Name="nombre" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>