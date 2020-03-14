<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/PagM.Master" CodeBehind="Empleadosmod.aspx.vb" Inherits="Ventas.Empleadosmod" fileEncoding="utf-8"
    requestEncoding="utf-8"
    ResponseEncoding="utf-8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Empleados</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('#<%=txttelefono.ClientID%>').inputmask("9999-9999");
        });
    </script>
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
        <h1 class="display-4 text-center">Modificacion Empleados</h1>
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
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" class="radio" RepeatColumns="4" CellSpacing="7" CellPadding="7">
                        <asp:ListItem Value="1" Text="Todos" Selected="True"></asp:ListItem>
                        <asp:ListItem Value="2" Text="Identidad"></asp:ListItem>
                        <asp:ListItem Value="3" Text="Apellido"></asp:ListItem>
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
                    <label>Escriba la identidad del Empleado</label>
                    <label class="alert alert-warning" role="alert">"Completa"</label>
                </div>
                <div class="form-group col-sm-4 text-center"></div>
            </div>

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="table table-striped" AllowSorting="True" DataKeyNames="identidad" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="identidad" HeaderText="Identidad" ReadOnly="True" SortExpression="identidad" />
                    <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="apellido" HeaderText="Apellido" SortExpression="apellido" />
                    <asp:BoundField DataField="direccion" HeaderText="Direccion" SortExpression="direccion" />
                    <asp:BoundField DataField="telefono" HeaderText="Telefono" SortExpression="telefono" />
                </Columns>
            </asp:GridView>
        </div>
        <div class="col-md-1"></div>
        <!--pading-->
    </div>
    <div class="container-sm">
        <!-- Formulario -->
        <h3>Edicion de Datos</h3>
        <hr />
    </div>
    <div class="row">
        <!-- Formulario centrado -->
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <div class="row">
                <div class="form-group col-sm-6">
                    <label>Nombre</label>
                    <asp:TextBox ID="txtnombre" runat="server" CssClass="form-control input-sm" />
                </div>
                <div class="form-group col-sm-6">
                    <label>Apellido</label>
                    <asp:TextBox ID="txtapellido" runat="server" CssClass="form-control input-sm" />
                </div>
                <div class="form-group col-sm-6">
                    <label>Telefono</label>
                    <asp:TextBox ID="txttelefono" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group col-sm-12">
                    <label>Direccion</label>
                    <asp:TextBox ID="txtdireccion" runat="server" CssClass="form-control" />
                </div>
            </div>
            <div class="text-center">
                <asp:Button Text="Editar" ID="btneditar" runat="server" CssClass="btn btn-primary" />
            </div>
        </div>
        <div class="col-md-3"></div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" DeleteCommand="DELETE FROM [empleado] WHERE [identidad] = @identidad" InsertCommand="INSERT INTO [empleado] ([identidad], [nombre], [apellido], [direccion], [telefono]) VALUES (@identidad, @nombre, @apellido, @direccion, @telefono)" SelectCommand="SELECT * FROM [empleado]" UpdateCommand="UPDATE [empleado] SET [nombre] = @nombre, [apellido] = @apellido, [direccion] = @direccion, [telefono] = @telefono WHERE [identidad] = @identidad">
        <DeleteParameters>
            <asp:Parameter Name="identidad" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="identidad" Type="String" />
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="apellido" Type="String" />
            <asp:Parameter Name="direccion" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="txtnombre" Name="nombre" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtapellido" Name="apellido" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtdireccion" Name="direccion" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txttelefono" Name="telefono" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtbusqueda" Name="identidad" PropertyName="Text" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" SelectCommand="SELECT * FROM [empleado] WHERE (([identidad] = @identidad) OR ([apellido] LIKE '%' + @apellido + '%'))">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtbusqueda" Name="identidad" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtbusqueda" Name="apellido" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>