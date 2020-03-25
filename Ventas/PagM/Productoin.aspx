<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/PagM.Master" CodeBehind="Productoin.aspx.vb" Inherits="Ventas.WebForm1" %>

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
                text: 'No se pudo modificar el registro',
            })
        }
    </script>
    <div class="jumbotron row justify-content-center">
        <h1 class="display-4 text-center">Formulario Producto</h1>
    </div>
    <br />
    <div class="container-sm">
        <!-- Formulario -->
        <h3>Inserción de datos</h3>
        <hr />
        <div class="row">
            <!-- Formulario centrado -->
            <div class="col-md-3"></div>
            <div class="col-md-6 align-items-md-center">
                <div class="form-group">
                    <label>ID del Producto</label>
                    <asp:TextBox ID="txtidproducto" runat="server" CssClass="form-control" Enabled="false" />
                </div>
                <div class="form-group">
                    <label>Nombre del Producto</label>
                    <asp:TextBox ID="txtnombreproducto" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <label>Precio del Producto</label>
                    <asp:TextBox ID="txtprecio" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <label>Cantidad del Producto</label>
                    <asp:TextBox ID="txtcantidad" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group col-sm-12">
                    <label>Activo</label>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" class="radio" RepeatColumns="4" CellSpacing="7" CellPadding="7">
                        <asp:ListItem Value="1" Text="Activo" Selected="True"></asp:ListItem>
                        <asp:ListItem Value="2" Text="Inactivo"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="form-group">
                    <label>Categoria</label>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="idcategoria" CssClass="form-control"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" SelectCommand="SELECT * FROM [producto]" DeleteCommand="DELETE FROM [producto] WHERE [idproducto] = @idproducto" InsertCommand="INSERT INTO [producto] ([idproducto], [nombre], [precio], [activo], [inventario], [idcategoria]) VALUES (@idproducto, @nombre, @precio, @activo, @inventario, @idcategoria)" UpdateCommand="UPDATE [producto] SET [nombre] = @nombre, [precio] = @precio, [activo] = @activo, [inventario] = @inventario, [idcategoria] = @idcategoria WHERE [idproducto] = @idproducto">
                        <DeleteParameters>
                            <asp:Parameter Name="idproducto" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="txtidproducto" Name="idproducto" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="txtnombreproducto" Name="nombre" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="txtprecio" Name="precio" PropertyName="Text" Type="Double" />
                            <asp:ControlParameter ControlID="RadioButtonList1" Name="activo" PropertyName="SelectedValue" Type="Byte" />
                            <asp:ControlParameter ControlID="txtcantidad" Name="inventario" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="DropDownList1" Name="idcategoria" PropertyName="SelectedValue" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="nombre" Type="String" />
                            <asp:Parameter Name="precio" Type="Double" />
                            <asp:Parameter Name="activo" Type="Byte" />
                            <asp:Parameter Name="inventario" Type="Int32" />
                            <asp:Parameter Name="idcategoria" Type="Int32" />
                            <asp:Parameter Name="idproducto" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" SelectCommand="SELECT * FROM [categorias]"></asp:SqlDataSource>
                </div>
                <div class="text-center">
                    <asp:Button Text="Guardar" ID="btnguardar" runat="server" CssClass="btn btn-primary" />
                </div>
            </div>

            <div class="col-md-3"></div>
            <!--pading-->
        </div>
    </div>
</asp:Content>