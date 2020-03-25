<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/MenuM.Master" CodeBehind="MenuUsuarios.aspx.vb" Inherits="Ventas.MenuUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Menu Usuarios</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
              <div class="container-fluid jumbotron justify-content-center">
    <h1 class="display-4 text-center">Usuarios</h1>
    </div>
  <!-- <h2 class="display-5 text-center">Menu Principal</h2> -->
        <br />
<div class="row justify-content-center align-items-center"> <!-- Inicio de las Cartas-->
 <div class="card-deck">
  <div class="card"style="max-width: 20rem;">
    <div class="card-header">Accion</div>
    <div class="card-body text-center">
      <h5 class="card-title">Inserción</h5>
    <p class="card-text">Agregar un nuevo Usuario al sistema</p>
    </div>
      <div class="card-footer text-center"><a class="btn btn-outline-info" href="Usuariosin.aspx" role="button">Entrar</a></div>
</div>
  <div class="card"style="max-width: 20rem;">
    <div class="card-header">Accion</div>
    <div class="card-body text-center">
      <h5 class="card-title">Busqueda</h5>
    <p class="card-text">Buscar un Usuario en el sistema</p>
    </div>
      <div class="card-footer text-center"><a class="btn btn-outline-info" href="Usuariosbus.aspx" type="button"">Entrar</a></div>
  </div>
  <div class="card"style="max-width: 20rem;">
    <div class="card-header">Accion</div>
    <div class="card-body text-center">
      <h5 class="card-title">Modificar</h5>
    <p class="card-text">Modificar un Usuario en el sistema</p>
    </div>
      <div class="card-footer text-center"><a class="btn btn-outline-info" href="Usuariosmod.aspx" role="button">Entrar</a></div>
  </div>
    <div class="card"style="max-width: 20rem;">
    <div class="card-header">Accion</div>
    <div class="card-body text-center">
      <h5 class="card-title">Eliminar</h5>
    <p class="card-text">Eliminar un Usuario en el sistema</p>
     </div>
  <div class="card-footer text-center"><a class="btn btn-outline-info" href="Usuarioselim.aspx" role="button">Entrar</a></div>
  </div>
</div>
</div>
        <br />
</asp:Content>