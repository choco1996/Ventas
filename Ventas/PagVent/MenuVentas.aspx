﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagVent/MenuV.Master" CodeBehind="MenuVentas.aspx.vb" Inherits="Ventas.MenuVentas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Menu Ventas</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container-fluid jumbotron justify-content-center">
        <h1 class="display-4 text-center">Ventas</h1>
    </div>
    <br />
    <div class="row justify-content-center align-items-center">
        <!--Inicio de las Cartas-->
        <div class="card-deck">
            <div class="card" style="max-width: 20rem;">
                <div class="card-header">Menu</div>
                <div class="card-body text-center">
                    <h5 class="card-title">Ventas al Contado</h5>
                    <p class="card-text">Submenu para realizar Ventas al contado</p>
                </div>
                <div class="card-footer text-center"><a class="btn btn-outline-info" href="VentasContado.aspx" role="button">Entrar</a></div>
            </div>
            <div class="card" style="max-width: 20rem;">
                <div class="card-header">Menu</div>
                <div class="card-body text-center">
                    <h5 class="card-title">Ventas al credito</h5>
                    <p class="card-text">Submenu para realizar Ventas al credito</p>
                </div>
                <div class="card-footer text-center"><a class="btn btn-outline-info" href="VentasCredito.aspx" role="button">Entrar</a></div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>