<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/PagM.Master" CodeBehind="Proveedorin.aspx.vb" Inherits="Ventas.Proveedor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Proveedor</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron row justify-content-center">
        <h1 class="display-4 text-center">Formulario Proveedor</h1>
    </div>
    <br />
    <div class="container-sm">
        <!-- Formulario -->
        <h3>Inserción de datos</h3>
        <hr class="my-4">

        <div class="row">
            <!-- Formulario centrado -->
            <div class="col-md-3"></div>
            <div class="col-md-6 align-items-md-center">
                <div class="form-group">
                    <label>Nombre</label>
                    <asp:TextBox ID="txtnombre" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <label>Direccion</label>
                    <asp:TextBox ID="txtdireccion" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <label>Telefono</label>
                    <asp:TextBox ID="txttelefono" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <label>Correo</label>
                    <asp:TextBox ID="txtcorreo" runat="server" CssClass="form-control" />
                    <div class="text-center">
                        <asp:Button Text="Guardar" ID="btnguardar" runat="server" CssClass="btn btn-primary" />
                        <asp:Button Text="Secundario" ID="Button1" runat="server" CssClass="btn btn-primary" />
                    </div>
                </div>

                <div class="col-md-3"></div>
                <!--pading-->
            </div>
        </div>
</asp:Content>