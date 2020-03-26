<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/PagM.Master" CodeBehind="VentasCredito.aspx.vb" Inherits="Ventas.VentasCredito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Ventas</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('#<%=txtidentidad.ClientID%>').inputmask("9999-9999-99999");
        });
    </script>
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
                text: 'No se pudo agregar el registro',
            })
        }
    </script>
    <br />
    <div class="container">
        <div class="row">
            <%--Superior--%>
            <div class="col-md-4">
                <div class="form-group row">
                    <label class="col-3">Codigo</label>
                    <asp:TextBox ID="txtcodigo" runat="server" CssClass="form-control text-center col-4" Enabled="false" />
                </div>
            </div>

            <div class="col-md-4">
                <div class="form-group row">
                    <label class="col-3">Usuario</label>
                    <asp:TextBox ID="txtusuario" runat="server" CssClass="form-control text-center col-4" Enabled="false" />
                </div>
            </div>

            <div class="col-md-4">
                <div class="form-group row">
                    <label class="col-3">Fecha</label>
                    <asp:TextBox ID="txtfecha" runat="server" CssClass="form-control text-center col-8" Enabled="false" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-5">
                <div class="form-group row">
                    <label class="col-5">Identidad del Cliente</label>
                    <asp:TextBox ID="txtidentidad" runat="server" AutoPostBack="true" ontextchanged="TextBox1_TextChanged" CssClass="form-control text-center col-5" />
                </div>
            </div>
            <div class="col-md-5">
                <asp:Label ID="label1" runat="server" CssClass="navbar-brand text-body text-info"></asp:Label>
            </div>
            <div class="col-md-1"></div>
        </div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-4">
                <div class="form-group row">
                    <label class="col-6">Codigo del Producto</label>
                    <asp:TextBox ID="txtcodprod" runat="server" CssClass="form-control text-center col-4" />
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group row">
                    <label class="col-3">Cantidad</label>
                    <asp:TextBox ID="txtcantidad" runat="server" CssClass="form-control text-center col-4" />
                </div>
            </div>
            <div class="col-md-2">
                <asp:Button ID="agregar" runat="server" Text="Agregar" CssClass="btn btn-group-sm btn-success" />
                <asp:Button ID="delt" runat="server" Text="Reset" CssClass="btn btn-group-sm btn-danger" />
            </div>
        </div>
    </div>
    <div class="container">
        <asp:GridView runat="server" ID="GridView1" CssClass="table table-responsive-md table-striped thead-dark">
        </asp:GridView>
    </div>
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-3">
            <asp:Button ID="btnCompra" Text="Comprar" runat="server" CssClass="btn btn-lg btn-success" />
        </div>
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <div class="form-group row">
                <label class="col-3">Total</label>
                <asp:TextBox ID="txttotal" runat="server" CssClass="form-control text-center col-4" Enabled="false" />
            </div>
        </div>
    </div>
</asp:Content>