<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/PagM.Master" CodeBehind="Empleadosbus.aspx.vb" Inherits="Ventas.Empleadosbus1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Busqueda Empleados</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                  <div class="jumbotron row justify-content-center">
     <h1 class="display-4 text-center">Busqueda Empleados</h1>
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
             <asp:RadioButtonList ID="RadioButtonList1" runat="server" class="radio" RepeatColumns="4"  CellSpacing="7" CellPadding="7">               
                        <asp:ListItem  Value="1" Text="Todos" Selected="True"></asp:ListItem>
                        <asp:ListItem  Value="2" Text="Identidad"></asp:ListItem>
                        <asp:ListItem  Value="3" Text="Apellido"></asp:ListItem>
             </asp:RadioButtonList>
             </div>
             <div class="form-group col-sm-4">
             <asp:TextBox ID="txtbusqueda" runat="server" CssClass="form-control input-sm"/>
            </div>
             <div class="form-group col-sm-3">
                 <asp:Button ID="btnbusqueda" Text="Buscar" runat="server" CssClass="btn btn-primary"/>

            </div>
          
        
</div>
         <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="identidad" DataSourceID="SqlDataSource1" CssClass="table table-striped">
             <Columns>
                 <asp:BoundField DataField="identidad" HeaderText="identidad" ReadOnly="True" SortExpression="identidad" />
                 <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                 <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
                 <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
                 <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
             </Columns>
         </asp:GridView>
  </div>      
 <div class="col-md-1">
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" SelectCommand="SELECT * FROM [empleado]"></asp:SqlDataSource>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" SelectCommand="SELECT * FROM [empleado] WHERE (([identidad] LIKE '%' + @identidad + '%') OR([apellido] LIKE '%' + @apellido + '%'))">
         <SelectParameters>
             <asp:ControlParameter ControlID="txtbusqueda" Name="identidad" PropertyName="Text" />
             <asp:ControlParameter ControlID="txtbusqueda" Name="apellido" PropertyName="Text" />
         </SelectParameters>
     </asp:SqlDataSource>
         </div> <!--pading-->
</div>
</asp:Content>
