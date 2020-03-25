<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/PagM.Master" CodeBehind="Usuarioselim.aspx.vb" Inherits="Ventas.Usuarioselim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Eliminacion Usuarios</title>
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
                    text: 'No se pudo eliminar el registro',
                })
            }
    </script>

    <div class="jumbotron row justify-content-center">
        <h1 class="display-4 text-center">Eliminacion de Usuarios</h1>
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
                <div class="form-group col-sm-5">
                    <asp:RadioButtonList ID="RadioButtonList3" runat="server" class="radio" RepeatColumns="4" CellSpacing="7" CellPadding="7">
                        <asp:ListItem Value="1" Text="Todos" Selected="True"></asp:ListItem>
                        <asp:ListItem Value="2" Text="Usuario"></asp:ListItem>
                        <asp:ListItem Value="3" Text="Identidad"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="form-group col-sm-4">
                    <asp:TextBox ID="txtbusqueda" runat="server" CssClass="form-control input-sm" />
                </div>
                <div class="form-group col-sm-3">
                    <asp:Button ID="btnbusqueda" Text="Buscar" runat="server" CssClass="btn btn-primary" />
                    <asp:Button ID="btnselecion" Text="Selecionar" runat="server" CssClass="btn btn-primary" />
                </div>
            </div>
            <div class="row">
                <div class="form-group col-sm-4 text-center"></div>
                <div class="form-group col-sm-4 text-center">
                    <label>Escriba el codigo de usuario</label>
                    <label class="alert alert-warning" role="alert">"Completo"</label>
                </div>
                <div class="form-group col-sm-4 text-center"></div>
            </div>

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="table table-striped" AllowSorting="True" DataKeyNames="idusuario" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="idusuario" HeaderText="IDusuario" ReadOnly="True" SortExpression="idusuario" />
                    <asp:BoundField DataField="contraseña" HeaderText="Contraseña" SortExpression="contraseña" />
                    <asp:BoundField DataField="activo" HeaderText="activo" SortExpression="activo" />
                    <asp:BoundField DataField="identidad" HeaderText="Identidad" SortExpression="identidad" />
                    <asp:BoundField DataField="idtipousuario" HeaderText="Tipo Usuario" SortExpression="idtipousuario" />
                </Columns>
            </asp:GridView>
        </div>
        <div class="col-md-1"></div>
        <!--pading-->
    </div>
    <div class="container-sm">
        <!-- Formulario -->
        <h3>Eliminacion de Datos</h3>
        <hr />
    </div>
    <div class="row">
        <!-- Formulario centrado -->
        <div class="col-md-1"></div>
        <!--pading-->
        <div class="col-md-10 align-items-md-center">
            <div class="row">
                <div class="form-group col-sm-4">
                    <p class="text-danger text-center h5">Introduzca el ID del Usuario:</p>
                </div>
                <div class="form-group col-sm-6">
                    <asp:TextBox ID="txteliminacion" runat="server" CssClass="form-control input-sm" />
                </div>
                <div class="form-group col-sm-2">
                    <asp:Button ID="btneliminar" Text="Eliminar" runat="server" CssClass="btn btn-primary" />
                </div>
            </div>
            <div class="col-md-1">
            </div>
            <!--pading-->
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" SelectCommand="SELECT * FROM [usuarios]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" DeleteCommand="DELETE FROM [usuarios] WHERE [idusuario] = @idusuario" InsertCommand="INSERT INTO [usuarios] ([idusuario], [contraseña], [activo], [identidad], [idtipousuario]) VALUES (@idusuario, @contraseña, @activo, @identidad, @idtipousuario)" SelectCommand="SELECT * FROM [usuarios] WHERE (([idusuario] LIKE '%' + @idusuario + '%') OR ([identidad] LIKE '%' + @identidad + '%'))" UpdateCommand="UPDATE [usuarios] SET [contraseña] = @contraseña, [activo] = @activo, [identidad] = @identidad, [idtipousuario] = @idtipousuario WHERE [idusuario] = @idusuario">
        <DeleteParameters>
            <asp:ControlParameter ControlID="txteliminacion" Name="idusuario" PropertyName="Text" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="idusuario" Type="String" />
            <asp:Parameter Name="contraseña" Type="String" />
            <asp:Parameter Name="activo" Type="Byte" />
            <asp:Parameter Name="identidad" Type="String" />
            <asp:Parameter Name="idtipousuario" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="txtbusqueda" Name="idusuario" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtbusqueda" Name="identidad" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="contraseña" Type="String" />
            <asp:Parameter Name="activo" Type="Byte" />
            <asp:Parameter Name="identidad" Type="String" />
            <asp:Parameter Name="idtipousuario" Type="Int32" />
            <asp:Parameter Name="idusuario" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>