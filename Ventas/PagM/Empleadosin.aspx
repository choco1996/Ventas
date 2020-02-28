<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/PagM.Master" CodeBehind="Empleadosin.aspx.vb" Inherits="Ventas.Empleadosin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Inserción Empleados</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
             <asp:TextBox ID="txtnombre" runat="server" CssClass="form-control input-sm"/>
             </div>
             <div class="form-group col-sm-6">
             <label>Apellido</label>
             <asp:TextBox ID="txtapellido" runat="server" CssClass="form-control input-sm"/>
            </div>
             <div class="form-group col-sm-6">
             <label>Identidad</label>
             <asp:TextBox ID="txtidentidad" TextMode="Number" runat="server" CssClass="form-control input-sm"/>
            </div>
             <div class="form-group col-sm-6">
             <label>Telefono</label>
             <asp:TextBox ID="txttelefono" runat="server" CssClass="form-control input-sm"/>
             </div><div class="form-group col-sm-12">
             <label>Direccion</label>
             <asp:TextBox ID="txtdireccion" runat="server" CssClass="form-control input-sm"/>
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
