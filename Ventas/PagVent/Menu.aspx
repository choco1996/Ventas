<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagVent/MenuV.Master" CodeBehind="Menu.aspx.vb" Inherits="Ventas.Menu1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>
        Menu Principal
    </title>
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
      <h5 class="card-title">Vacio</h5>
    <p class="card-text">Submenu para interactuar con los datos </p>
    </div>
      <div class="card-footer text-center"><a class="btn btn-outline-info" href="MenuVentas.aspx" role="button">Entrar</a></div>
</div>

</div>
</div>
</asp:Content>
