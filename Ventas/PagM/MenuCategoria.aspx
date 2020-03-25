<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/MenuM.Master" CodeBehind="MenuCategoria.aspx.vb" Inherits="Ventas.MenuCategoria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Categorias</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid jumbotron justify-content-center">
        <h1 class="display-4 text-center">Categorias</h1>
    </div>
    <!-- <h2 class="display-5 text-center">Menu Principal</h2> -->
    <br />
    <div class="row justify-content-center align-items-center">
        <!-- Inicio de las Cartas-->
        <div class="card-deck">
            <div class="card" style="max-width: 20rem;">
                <div class="card-header">Accion</div>
                <div class="card-body text-center">
                    <h5 class="card-title">Inserción</h5>
                    <p class="card-text">Agregar un nuevo Categoria al sistema</p>
                </div>
                <div class="card-footer text-center"><a class="btn btn-outline-info" href="Categoriasin.aspx" role="button">Entrar</a></div>
            </div>
            <div class="card" style="max-width: 20rem;">
                <div class="card-header">Accion</div>
                <div class="card-body text-center">
                    <h5 class="card-title">Modificar</h5>
                    <p class="card-text">Modificar un Categoria en el sistema</p>
                </div>
                <div class="card-footer text-center"><a class="btn btn-outline-info" href="CategoriaMod.aspx" role="button">Entrar</a></div>
            </div>
            <div class="card" style="max-width: 20rem;">
                <div class="card-header">Accion</div>
                <div class="card-body text-center">
                    <h5 class="card-title">Eliminar</h5>
                    <p class="card-text">Eliminar un Categoria en el sistema</p>
                </div>
                <div class="card-footer text-center"><a class="btn btn-outline-info" href="CategoriaElim.aspx" role="button">Entrar</a></div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>