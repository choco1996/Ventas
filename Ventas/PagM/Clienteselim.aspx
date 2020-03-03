<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/PagM.Master" CodeBehind="Clienteselim.aspx.vb" Inherits="Ventas.Clienteselim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Eliminacion de Clientes</title>
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
                text: 'No se pudo agregar el registro',
            })
        }
     </script>
         <div class="jumbotron row justify-content-center">
     <h1 class="display-4 text-center">Eliminacion de Clientes</h1>
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
                 <asp:Button ID="btnbusqueda" Text="Busqueda" runat="server" CssClass="btn btn-primary" OnClick="boton"/>
            </div>
</div>
         <asp:GridView ID="GridView1" runat="server"   AllowPaging="True" AutoGenerateColumns="False" CssClass="table table-striped" DataSourceID = "SqlDataSource3">
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
         <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" SelectCommand="SELECT [idclientes], [nombre], [apellido], [rtn], [direccion], [telefono], [correo] FROM [clientes]">
         </asp:SqlDataSource>





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
            <p class="text-danger text-center h5">Introduzca identidad del cliente:</p>
             </div>
             <div class="form-group col-sm-6">
             <asp:TextBox ID="txteliminacion" runat="server" CssClass="form-control input-sm"/>
            </div>
             <div class="form-group col-sm-2">
                 <asp:Button ID="btneliminar" Text="Eliminar" runat="server" CssClass="btn btn-primary" OnClick="boton"/>
            </div>
</div>
          <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" DeleteCommand="DELETE FROM clientes WHERE (idclientes = @original_idclientes)" InsertCommand="INSERT INTO [clientes] ([idclientes], [nombre], [apellido], [rtn], [direccion], [telefono], [correo]) VALUES (@idclientes, @nombre, @apellido, @rtn, @direccion, @telefono, @correo)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [clientes]" UpdateCommand="UPDATE [clientes] SET [nombre] = @nombre, [apellido] = @apellido, [rtn] = @rtn, [direccion] = @direccion, [telefono] = @telefono, [correo] = @correo WHERE [idclientes] = @original_idclientes">
             <DeleteParameters>
                 <asp:ControlParameter ControlID="txteliminacion" Name="original_idclientes" Type="String" />
             </DeleteParameters>
         </asp:SqlDataSource>

<div class="col-md-1"></div> <!--pading-->
    </div>      
</div>

</asp:Content>
