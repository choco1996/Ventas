<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/PagM.Master" CodeBehind="Empleadoselim.aspx.vb" Inherits="Ventas.Empleadoselim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Eliminacion Empleados</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <script type="text/javascript">
        $(document).ready(function () {
            $('#<%=txteliminacion.ClientID%>').inputmask("9999-9999-99999");
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
                text: 'No se pudo eliminar el registro',
            })
        }
     </script>
             <div class="jumbotron row justify-content-center">
     <h1 class="display-4 text-center">Eliminacion de Empleados</h1>
 </div>
<br />
   
 <div class="container-sm"> <!-- Formulario -->
        <h3>Busqueda de Datos</h3>
     <hr />
   </div>
     <div class="row"> <!-- Formulario centrado --> 
<div class="col-md-1"></div> <!--pading-->
     <div class="col-md-10 align-items-md-center">
<div class="row">
             <div class="form-group col-sm-4">
             <asp:RadioButtonList ID="RadioButtonList1" runat="server" class="radio" RepeatColumns="4"  CellSpacing="7" CellPadding="7">               
                        <asp:ListItem  Value="1" Text="Todos" Selected="True"></asp:ListItem>
                        <asp:ListItem  Value="2" Text="Identidad"></asp:ListItem>
              </asp:RadioButtonList>
             </div>
             <div class="form-group col-sm-6">
             <asp:TextBox ID="txtbusqueda" runat="server" CssClass="form-control input-sm"/>
            </div>
             <div class="form-group col-sm-2">
                 <asp:Button ID="btnbusqueda" Text="Busqueda" runat="server" CssClass="btn btn-primary"/>
            </div>
</div>
         <asp:GridView ID="GridView1" runat="server"   AllowPaging="True" AutoGenerateColumns="False" CssClass="table table-striped" DataSourceID = "SqlDataSource1" DataKeyNames="identidad">
             <Columns>
                 <asp:BoundField DataField="identidad" HeaderText="Identidad" ReadOnly="True" SortExpression="identidad" />
                 <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
                 <asp:BoundField DataField="apellido" HeaderText="Apellido" SortExpression="apellido" />
                 <asp:BoundField DataField="direccion" HeaderText="Direccion" SortExpression="direccion" />
                 <asp:BoundField DataField="telefono" HeaderText="Telefono" SortExpression="telefono" />
             </Columns>

         </asp:GridView>

<div class="col-md-1"></div> <!--pading-->
    </div>      
</div>

 <div class="container-sm"> <!-- Formulario -->
        <h3>Eliminacion de Datos</h3>
     <hr />
   </div>
      <div class="row"> <!-- Formulario centrado --> 
<div class="col-md-1"></div> <!--pading-->
     <div class="col-md-10 align-items-md-center">
<div class="row">
             <div class="form-group col-sm-4">
            <p class="text-danger text-center h5">Introduzca identidad del Empleado:</p>
             </div>
             <div class="form-group col-sm-6">
             <asp:TextBox ID="txteliminacion" runat="server" CssClass="form-control input-sm"/>
            </div>
             <div class="form-group col-sm-2">
                 <asp:Button ID="btneliminar" Text="Eliminar" runat="server" CssClass="btn btn-primary"/>
            </div>
</div>
<div class="col-md-1"></div> <!--pading-->
    </div>      
</div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" SelectCommand="SELECT * FROM [empleado]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" DeleteCommand="DELETE FROM empleado WHERE (identidad = @identidad)" InsertCommand="INSERT INTO [empleado] ([identidad], [nombre], [apellido], [direccion], [telefono]) VALUES (@identidad, @nombre, @apellido, @direccion, @telefono)" SelectCommand="SELECT * FROM [empleado] WHERE ([identidad] = @identidad)" UpdateCommand="UPDATE [empleado] SET [nombre] = @nombre, [apellido] = @apellido, [direccion] = @direccion, [telefono] = @telefono WHERE [identidad] = @identidad">
        <DeleteParameters>
            <asp:ControlParameter ControlID="txteliminacion" Name="identidad" PropertyName="Text" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="identidad" Type="String" />
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="apellido" Type="String" />
            <asp:Parameter Name="direccion" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="txtbusqueda" Name="identidad" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="apellido" Type="String" />
            <asp:Parameter Name="direccion" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
            <asp:Parameter Name="identidad" Type="String" />
        </UpdateParameters>
             </asp:SqlDataSource>
</asp:Content>
