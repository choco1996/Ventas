<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/MenuM.Master" CodeBehind="Menu.aspx.vb" Inherits="Ventas.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Menu</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
      <div class="content jumbotron justify-content-center">
    <h1 class="display-4 text-center">Maxi Despensa</h1>
        <h1 class="display-4 text-center">Variedad y ahorro en grande</h1>
     </div>
   <h2 class="display-5 text-center">Menu Principal</h2>
        <br />
 <Div class="col-md-12">
    <div class="input-group-lg text-center">
      <a class="btn btn-primary btn-lg" href="MenuClientes.aspx" role="button">Clientes</a>
      <a class="btn btn-primary btn-lg" href="Producto.aspx" role="button">Producto</a>
      <a class="btn btn-primary btn-lg" href="Proveedor.aspx" role="button">Proveedor</a>
     </div>
  </Div>
        <br />
       <Div class="col-md-12">
    <div class="input-group-lg text-center">
      <a class="btn btn-primary btn-lg" href="Usuarios.aspx" role="button">Usuarios</a>
     </div>
  </Div>
</asp:Content>
