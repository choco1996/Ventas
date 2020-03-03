<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/PagM.Master" CodeBehind="Empleadosin.aspx.vb" Inherits="Ventas.Empleadosin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Inserción Empleados</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('#<%=txtidentidad.ClientID%>').inputmask("9999-9999-99999");
        });
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
                text: 'No se pudo agregar el registro',
            })
        }
     </script>
 
     <div class="jumbotron row justify-content-center">
     <h1 class="display-4 text-center">Nuevo Empleado</h1>
 </div>
<br />
   
 <div class="container-sm"> <!-- Formulario -->
        <h3>Inserción de nuevo Empleado</h3>
     <hr />
   </div>

<!--Formulario de Edicion-->
    
     <div class="row"> <!-- Formulario centrado --> 
<div class="col-md-3"></div> <!--pading-->
     <div class="col-md-6 align-items-md-center">
         <div class="row">
             <div class="form-group col-sm-6">
             <label>Nombre</label>
             <asp:TextBox ID="txtnombre" runat="server" type="nombre" CssClass="form-control input-sm"/>
             <asp:RequiredFieldValidator ControlToValidate="txtnombre" ErrorMessage="Introduzca un Nombre" runat="server" CssClass="text-danger"/>
             </div>
             <div class="form-group col-sm-6">
             <label>Apellido</label>
             <asp:TextBox ID="txtapellido" runat="server" CssClass="form-control input-sm"/>
                 <asp:RequiredFieldValidator ControlToValidate="txtapellido" ErrorMessage="Introduzca un Apellido" runat="server" CssClass="text-danger"/>
            </div>
             <div class="form-group col-sm-6">
             <label>Identidad</label>
              <asp:TextBox ID="txtidentidad" runat="server" CssClass="form-control input-sm"/>
                 <asp:RequiredFieldValidator ControlToValidate="txtidentidad" ErrorMessage="Introduzca la Identidad" runat="server" CssClass="text-danger"/>
            </div>
             <div class="form-group col-sm-6">
             <label>Telefono</label>
             <asp:TextBox ID="txttelefono" runat="server" CssClass="form-control input-sm"/>
             </div><div class="form-group col-sm-12">
             <label>Direccion</label>
             <asp:TextBox ID="txtdireccion" runat="server" CssClass="form-control input-sm"/>
                 <asp:RequiredFieldValidator ControlToValidate="txtdireccion" ErrorMessage="Introduzca la direccion" runat="server" CssClass="text-danger"/>
             </div>
          
      </div>  
         <div class="text-center">
                 <asp:Button Text="Guardar" ID="btnguardar" runat="server"  CssClass="btn btn-lg btn-primary"/>
                 </div>
</div>
         </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" DeleteCommand="DELETE FROM [empleado] WHERE [identidad] = @identidad" InsertCommand="INSERT INTO [empleado] ([identidad], [nombre], [apellido], [direccion], [telefono]) VALUES (@identidad, @nombre, @apellido, @direccion, @telefono)" SelectCommand="SELECT * FROM [empleado]" UpdateCommand="UPDATE [empleado] SET [nombre] = @nombre, [apellido] = @apellido, [direccion] = @direccion, [telefono] = @telefono WHERE [identidad] = @identidad">
        <DeleteParameters>
            <asp:Parameter Name="identidad" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="txtidentidad" Name="identidad" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtnombre" Name="nombre" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtapellido" Name="apellido" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtdireccion" Name="direccion" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txttelefono" Name="telefono" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="apellido" Type="String" />
            <asp:Parameter Name="direccion" Type="String" />
            <asp:Parameter Name="telefono" Type="String" />
            <asp:Parameter Name="identidad" Type="String" />
        </UpdateParameters>
     </asp:SqlDataSource>
</asp:Content>
