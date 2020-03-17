<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/PagM.Master" CodeBehind="VentasContado.aspx.vb" Inherits="Ventas.VentasContado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Ventas</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container">
        <div class="row"> <%--Superior--%>
            <div class="col-md-4">
                <div class="form-group row">
                    <label class="col-3">Codigo</label>
                    <asp:TextBox ID="txtcodigo" runat="server" CssClass="form-control col-6" />
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group row">
                    <label class="col-3">Usuario</label>
                    <asp:TextBox ID="txtusuario" runat="server" CssClass="form-control text-center col-6" Enabled="false" />
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group row">
                    <label class="col-3">Fecha</label>
                    <asp:TextBox ID="txtfecha" runat="server" CssClass="form-control text-center col-6" Enabled="false"/>
                </div>
            </div>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>