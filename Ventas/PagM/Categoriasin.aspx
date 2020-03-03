<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/PagM.Master" CodeBehind="Categoriasin.aspx.vb" Inherits="Ventas.Categorias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Categorias</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="jumbotron row justify-content-center">
     <h1 class="display-4 text-center">Formulario Categorias de Producto</h1>
 </div>
<br />
 <div class="container-sm"> <!-- Formulario -->
        <h3>Inserción de datos</h3>
       <hr class="my-4">
</div>
     <div class="row"> <!-- Formulario centrado --> 
<div class="col-md-3"></div>
     <div class="col-md-6 align-items-md-center">
         <div class="form-group">
             <label>Nombre</label>
             <asp:TextBox ID="txtnombre" runat="server" CssClass="form-control"/>
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
             <label>Correo</label>
             <asp:TextBox ID="txtcorreo" runat="server" CssClass="form-control"/>
        <div class="text-center">
             <asp:Button Text="Guardar" ID="btnguardar" runat="server"  CssClass="btn btn-primary"/>
        </div>
        </div>
        
 <div class="col-md-3"></div><!--pading-->
    </div>      
</div>
</asp:Content>
