<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/PagM.Master" CodeBehind="Clientesmod.aspx.vb" Inherits="Ventas.Clientesmod" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Modificar Clientes</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="jumbotron row justify-content-center">
     <h1 class="display-4 text-center">Modificacion Clientes</h1>
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
                 <asp:Button ID="btnbusqueda" Text="Buscar" runat="server" CssClass="btn btn-primary" OnClick="boton"/>
                 <asp:Button ID="btnselecion" Text="Selecionar" runat="server" CssClass="btn btn-primary"/>
            </div>
          
        
</div>
         <div class="row">
             <div class="form-group col-sm-4 text-center"></div>
             <div class="form-group col-sm-4 text-center">
                 <label>Escriba la identidad del cliente</label>
                 <label class="alert alert-warning" role="alert">"Completa"</label>
             </div>
                 <div class="form-group col-sm-4 text-center"></div>
</div>
 
         <asp:GridView ID="GridView1" runat="server"   AllowPaging="True" AutoGenerateColumns="False"  CssClass="table table-striped" >
             <Columns>
                 <asp:BoundField DataField="idclientes" HeaderText="Identidad" ReadOnly="True" SortExpression="idclientes" />
                 <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
                 <asp:BoundField DataField="apellido" HeaderText="Apellido" SortExpression="apellido" />
                 <asp:BoundField DataField="rtn" HeaderText="RTN" SortExpression="rtn" />
                 <asp:BoundField DataField="direccion" HeaderText="Direccion" SortExpression="direccion" />
                 <asp:BoundField DataField="telefono" HeaderText="Telefono" SortExpression="telefono" />
                 <asp:BoundField DataField="correo" HeaderText="Correo" SortExpression="correo" />
             </Columns>

         </asp:GridView>
  </div>        

         
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" SelectCommand="SELECT [idclientes], [nombre], [apellido], [rtn], [direccion], [telefono], [correo] FROM [clientes] WHERE ([idclientes] LIKE '%' + @idclientes + '%')">
    <SelectParameters>
        <asp:ControlParameter ControlID="txtbusqueda" Name="idclientes" PropertyName="Text" Type="String" />
    </SelectParameters>
        </asp:SqlDataSource>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" SelectCommand="SELECT [idclientes], [nombre], [apellido], [rtn], [direccion], [telefono], [correo] FROM [clientes]">
         </asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" DeleteCommand="DELETE FROM [clientes] WHERE [idclientes] = @idclientes" InsertCommand="INSERT INTO [clientes] ([nombre], [apellido], [rtn], [direccion], [telefono], [correo], [idclientes]) VALUES (@nombre, @apellido, @rtn, @direccion, @telefono, @correo, @idclientes)" SelectCommand="SELECT [nombre], [apellido], [rtn], [direccion], [telefono], [correo], [idclientes] FROM [clientes]" UpdateCommand="UPDATE [clientes] SET [nombre] = @nombre, [apellido] = @apellido, [rtn] = @rtn, [direccion] = @direccion, [telefono] = @telefono, [correo] = @correo WHERE [idclientes] = @idclientes">
             <UpdateParameters>
                 <asp:controlParameter ControlID="txtnombre" Name="nombre" Type="String" />
                 <asp:controlParameter ControlID="txtapellido" Name="apellido" Type="String" />
                 <asp:controlParameter ControlID="txtrtn" Name="rtn" Type="String" />
                 <asp:controlParameter ControlID="txtdireccion" Name="direccion" Type="String" />
                 <asp:controlParameter ControlID="txttelefono" Name="telefono" Type="String" />
                 <asp:controlParameter ControlID="txtcorreo" Name="correo" Type="String" />
                 <asp:controlParameter ControlID="txtbusqueda" Name="idclientes" Type="String" />
             </UpdateParameters>
         </asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" SelectCommand="SELECT idclientes, nombre, apellido, rtn, direccion, telefono, correo FROM clientes WHERE (apellido LIKE '%' + @apellido + '%')">
    <SelectParameters>
        <asp:ControlParameter ControlID="txtbusqueda" Name="apellido" PropertyName="Text" Type="String" DefaultValue="" />
    </SelectParameters>
         </asp:SqlDataSource>
 
 <div class="container-sm"> <!-- Formulario -->
        <h3>Edicion de Datos</h3>
     <hr />
   </div>
 <div class="row"> <!-- Formulario centrado --> 
 <div class="col-md-3"></div>
     <div  class="col-md-6">
        <div class="row">
             <div class="form-group col-sm-6">
             <label>Nombre</label>
             <asp:TextBox ID="txtnombre" runat="server" CssClass="form-control input-sm"/>
             </div>
             <div class="form-group col-sm-6">
             <label>Apellido</label>
             <asp:TextBox ID="txtapellido" runat="server" CssClass="form-control input-sm"/>
            </div>
            
        <div class="form-group col-sm-6">
             <label>RTN</label>
             <asp:TextBox ID="txtrtn" runat="server" CssClass="form-control"/>
         </div>
         <div class="form-group col-sm-6">
             <label>Telefono</label>
             <asp:TextBox ID="txttelefono" runat="server" CssClass="form-control"/>
         </div>
          <div class="form-group col-sm-12">
             <label>Correo Electronico</label>
             <asp:TextBox ID="txtcorreo" runat="server" CssClass="form-control"/>
         </div>
         <div class="form-group col-sm-12">
             <label>Direccion</label>
             <asp:TextBox ID="txtdireccion" runat="server" CssClass="form-control"/>
         </div>

                 
 </div>
       <div class="text-center">
              <asp:Button Text="Editar" ID="btneditar" runat="server"  CssClass="btn btn-primary"/>
       </div> 

 </div>
 <div  class="col-md-3"></div>
     </div>
</asp:Content>

