<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/PagM.Master" CodeBehind="Clientesin.aspx.vb" Inherits="Ventas.Clientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Clientes</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron row justify-content-center">
     <h1 class="display-4 text-center">Formulario Clientes</h1>
 </div>
<br />
   
 <div class="container-sm"> <!-- Formulario -->
        <h3>Inserción de datos</h3>
     <hr />
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
             
         </div>
          <div class="form-group">
             <label>Identidad</label>
             <asp:TextBox ID="txtidentidad" runat="server" CssClass="form-control"/>
         </div>
          <div class="form-group">
             <label>RTN</label>
             <asp:TextBox ID="txtrtn" runat="server" CssClass="form-control"/>
         </div>
          <div class="form-group">
             <label>Direccion</label>
             <asp:TextBox ID="txtdireccion" runat="server" CssClass="form-control"/>
         </div>
          <div class="form-group">
             <label>Telefono</label>
             <asp:TextBox ID="txttelefono" runat="server" CssClass="form-control"/>
         </div>
          <div class="form-group">
             <label>Correo Electronico</label>
             <asp:TextBox ID="txtcorreo" runat="server" CssClass="form-control"/>
         </div>
          <div class="text-center">
                 <asp:Button Text="Guardar" ID="btnguardar" runat="server"  CssClass="btn btn-primary"/>
                 </div>
</div>
<div class="col-md-3"></div> <!--pading-->
    </div>      
</div>
</asp:Content>
