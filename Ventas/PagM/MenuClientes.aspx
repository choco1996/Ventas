<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/MenuM.Master" CodeBehind="MenuClientes.aspx.vb" Inherits="Ventas.MeClientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Menu Clientes</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <div class="content jumbotron justify-content-center">
    <h1 class="display-4 text-center">Clientes</h1>
    </div>
  <!-- <h2 class="display-5 text-center">Menu Principal</h2> -->
        <br />
 <Div class="col-md-12">
    <div class="input-group-lg text-center">
      <a class="btn btn-primary btn-lg" href="Clientesin.aspx" role="button">Inserción</a>
      <a class="btn btn-primary btn-lg" href="Clientesbus.aspx" role="button">Busqueda</a>
      <a class="btn btn-primary btn-lg" href="Clientesmod.aspx" role="button">Modificar</a>
      <a class="btn btn-primary btn-lg" href="Clienteselim.aspx" role="button">Eliminar</a>
   </div>
  </Div>
        <br />
   
  
   
</asp:Content>
