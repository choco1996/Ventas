<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/PagM.Master" CodeBehind="Usuariosbus.aspx.vb" Inherits="Ventas.Usuariosbus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Busqueda de Usuarios</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<div class="jumbotron row justify-content-center">
     <h1 class="display-4 text-center">Busqueda de Usuarios</h1>
</div>
<br />

 <div class="container-sm"> <!-- Formulario -->
        <h3>Busqueda de Datos</h3>
     <hr />
   </div>
     <div class="row"> <!-- Formulario centrado --> 
<div class="col-md-1"></div> <!--pading-->
     <div class="col-md-10 align-items-md-center">
<div class="row">
             <div class="form-group col-sm-5">
             <asp:RadioButtonList ID="RadioButtonList3" runat="server" class="radio" RepeatColumns="4"  CellSpacing="7" CellPadding="7">               
                        <asp:ListItem  Value="1" Text="Todos" Selected="True"></asp:ListItem>
                        <asp:ListItem  Value="2" Text="Usuario"></asp:ListItem>
                        <asp:ListItem  Value="3" Text="Identidad"></asp:ListItem>
             </asp:RadioButtonList>
             </div>
             <div class="form-group col-sm-4">
             <asp:TextBox ID="txtbusqueda" runat="server" CssClass="form-control input-sm"/>
            </div>
             <div class="form-group col-sm-3">
                 <asp:Button ID="btnbusqueda" Text="Buscar" runat="server" CssClass="btn btn-primary"/>
                 <asp:Button ID="btnselecion" Text="Selecionar" runat="server" CssClass="btn btn-primary"/>
            </div>
          
        
</div>
 
         <asp:GridView ID="GridView1" runat="server"   AllowPaging="True" AutoGenerateColumns="False"  CssClass="table table-striped" AllowSorting="True" DataKeyNames="idusuario" DataSourceID="SqlDataSource2" >
             <Columns>
                 <asp:BoundField DataField="idusuario" HeaderText="Usuario" ReadOnly="True" SortExpression="idusuario" />
                 <asp:BoundField DataField="contraseña" HeaderText="Contraseña" SortExpression="contraseña" />
                 <asp:BoundField DataField="activo" HeaderText="activo" SortExpression="activo" />
                 <asp:BoundField DataField="identidad" HeaderText="Identidad del Usuario" SortExpression="identidad" />
                 <asp:BoundField DataField="idtipousuario" HeaderText="Tipo de usuario" SortExpression="idtipousuario" />
             </Columns>

         </asp:GridView>
  </div>      
 <div class="col-md-1"></div> <!--pading-->
</div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>"  SelectCommand="SELECT * FROM [usuarios] WHERE (([idusuario] LIKE '%' + @idusuario + '%') OR ([identidad] LIKE '%' + @identidad + '%'))">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtbusqueda" Name="idusuario" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtbusqueda" Name="identidad" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" SelectCommand="SELECT * FROM [usuarios]"></asp:SqlDataSource>
</asp:Content>
