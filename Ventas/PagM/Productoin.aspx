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
 <div class="container-sm"> <!-- Formulario -->
        <h3>Inserción de datos</h3>
     <hr />
     <div class="row"> <!-- Formulario centrado --> 
<div class="col-md-3"></div>
     <div class="col-md-6 align-items-md-center">
         <div class="form-group">
             <label>ID del Producto</label>
             <asp:TextBox ID="txtidproducto" runat="server" CssClass="form-control"/>
         </div>
          <div class="form-group">
             <label>Nombre del Producto</label>
             <asp:TextBox ID="txtnombreproducto" runat="server" CssClass="form-control"/>
         </div>
          <div class="form-group">
             <label>Precio del Producto</label>
             <asp:TextBox ID="txtprecio" runat="server" CssClass="form-control"/>
         </div>
          <div class="form-group">
             <label>Cantidad del Producto</label>
             <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"/>
         </div>
          <div class="form-group">
             <label>Categoria</label>
              <asp:ListView runat="server">
                  <ItemTemplate>Comestibles</ItemTemplate>
                  <ItemTemplate>Otros</ItemTemplate>
              </asp:ListView>
         </div>
          <div class="text-center">
             <asp:Button Text="Guardar" ID="btnguardar" runat="server"  CssClass="btn btn-primary"/>
             
         </div>
        </div>
        
 <div class="col-md-3"></div><!--pading-->
    </div>      
</div>
</asp:Content>
