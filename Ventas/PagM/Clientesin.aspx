<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/PagM.Master" CodeBehind="Clientesin.aspx.vb" Inherits="Ventas.Clientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Inserción Clientes</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron row justify-content-center">
     <h1 class="display-4 text-center">Inserción Clientes</h1>
 </div>
<br />
   
 <div class="container-sm"> <!-- Formulario -->
        <h3>Inserción de Datos</h3>
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
             <asp:TextBox ID="txtidentidad" runat="server" CssClass="form-control"/>
              
         </div>
          <div class="form-group col-sm-6">
             <label>RTN</label>
             <asp:TextBox ID="txtrtn" runat="server" CssClass="form-control"/>
         </div>
          <div class="form-group col-sm-6">
             <label>Telefono</label>
             <asp:TextBox ID="txttelefono" runat="server" CssClass="form-control"/>
         </div>
          <div class="form-group col-sm-6">
             <label>Correo Electronico</label>
             <asp:TextBox ID="txtcorreo" runat="server" CssClass="form-control"/>
         </div>
         <div class="form-group col-sm-12">
             <label>Direccion</label>
             <asp:TextBox ID="txtdireccion" runat="server" CssClass="form-control"/>
         </div>
             
         </div>
          
          <div class="text-center">
                 <asp:Button Text="Guardar" ID="btnguardar" runat="server"  CssClass="btn btn-lg btn-primary"/>
                 </div>
</div>
<div class="col-md-3">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" InsertCommand="INSERT INTO [clientes] ([idclientes], [nombre], [apellido], [rtn], [direccion], [telefono], [correo]) VALUES (@idclientes, @nombre, @apellido, @rtn, @direccion, @telefono, @correo)" SelectCommand="SELECT * FROM [clientes]" UpdateCommand="UPDATE [clientes] SET [nombre] = @nombre, [apellido] = @apellido, [rtn] = @rtn, [direccion] = @direccion, [telefono] = @telefono, [correo] = @correo WHERE [idclientes] = @idclientes">

        <InsertParameters>
            <asp:ControlParameter ControlID="txtidentidad" Name="idclientes" Type="String" />
            <asp:ControlParameter ControlID="txtnombre"  Name="nombre" Type="String" />
            <asp:ControlParameter ControlID="txtapellido" Name="apellido" Type="String" />
            <asp:ControlParameter ControlID="txtrtn" Name="rtn" Type="String" />
            <asp:ControlParameter ControlID="txtdireccion" Name="direccion" Type="String" />
            <asp:ControlParameter ControlID="txttelefono" Name="telefono" Type="String" />
            <asp:ControlParameter ControlID="txtcorreo" Name="correo" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombre" />
            <asp:Parameter Name="apellido" />
            <asp:Parameter Name="rtn" />
            <asp:Parameter Name="direccion" />
            <asp:Parameter Name="telefono" />
            <asp:Parameter Name="correo" />
            <asp:Parameter Name="idclientes" />
        </UpdateParameters>
    </asp:SqlDataSource>
         </div> <!--pading-->
    </div>      
    
</asp:Content>
