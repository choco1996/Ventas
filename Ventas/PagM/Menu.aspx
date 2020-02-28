<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/MenuM.Master" CodeBehind="Menu.aspx.vb" Inherits="Ventas.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Menu</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div id="carouselExampleControls" class="container carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="../Imagenes/Empleados/E1.jpg">
        <div class="carousel-caption align-content-sm-center">
            <h1 class="text-primary display-4">Maxi Despensa Variedad y ahorro en grande</h1>
      </div>
    </div>
    <div class="carousel-item">
        <div class="carousel-caption">
            <h1 class="display-4 text-primary">Maxi Despensa Variedad y ahorro en grande</h1>
      </div>  
            <img class="d-block w-100" src="../Imagenes/Empleados/E2.jpg">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
  <!-- <h2 class="display-5 text-center">Menu Principal</h2> -->
    <br />   
   <h2 class="display-5 text-center">Menu Principal</h2>
    <br />
<div class="row justify-content-center align-items-center"> <!--Inicio de las Cartas-->
<div class="card-deck">
  <div class="card" style="max-width: 20rem;">
    <div class="card-header">Menu</div>
    <div class="card-body text-center">
      <h5 class="card-title">Clientes</h5>
    <p class="card-text">Submenu para interactuar con los datos del Cliente</p>
    </div>
      <div class="card-footer text-center"><a class="btn btn-outline-info" href="MenuClientes.aspx" role="button">Entrar</a></div>
</div>
 <div class="card" style="max-width: 20rem;">
    <div class="card-header">Menu</div>
    <div class="card-body text-center">
      <h5 class="card-title">Empleados</h5>
    <p class="card-text">Submenu para interactuar con los datos del Empleado</p>
    </div>
     <div class="card-footer text-center"><a class="btn btn-outline-info" href="MenuEmpleados.aspx" role="button">Entrar</a></div>
  </div>
  <div class="card" style="max-width: 20rem;">
    <div class="card-header">Menu</div>
    <div class="card-body text-center">
      <h5 class="card-title">Usuarios</h5>
    <p class="card-text">Submenu para interactuar con los datos del Usuario</p>
    </div>
      <div class="card-footer text-center"><a class="btn btn-outline-info" href="MenuUsuarios.aspx" role="button">Entrar</a></div>
  </div>
</div>
</div>
        <br />

<div class="row justify-content-center align-items-center"> <!-- Inicio de las Cartas-->
 <div class="card-deck">
  <div class="card"style="max-width: 20rem;">
    <div class="card-header">Menu</div>
    <div class="card-body text-center">
      <h5 class="card-title">Proveedor</h5>
    <p class="card-text">Submenu para interactuar con los datos del Proveedor</p>
    </div>
      <div class="card-footer text-center"><a class="btn btn-outline-info" href="" role="button">Entrar</a></div>
</div>
  <div class="card"style="max-width: 20rem;">
    <div class="card-header">Menu</div>
    <div class="card-body text-center">
      <h5 class="card-title">Producto</h5>
    <p class="card-text">Submenu para interactuar con los datos de los Productos</p>
    </div>
      <div class="card-footer text-center"><a class="btn btn-outline-info" href="MenuProductos.aspx" role="button">Entrar</a></div>
  </div>

</div>
</div>
</asp:Content>
