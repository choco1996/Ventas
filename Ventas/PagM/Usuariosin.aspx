<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/PagM.Master" CodeBehind="Usuariosin.aspx.vb" Inherits="Ventas.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Usuarios</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron row justify-content-center">
     <h1 class="display-4 text-center">Nuevo Usuario</h1>
 </div>
<br />
<div class="container-sm"> <!-- Formulario -->
        <h3>Creacion de nuevo usuario</h3>
     <hr />
   </div>

<!--Formulario de Edicion-->
    
     <div class="row"> <!-- Formulario centrado --> 
<div class="col-md-3"></div> <!--pading-->
     <div class="col-md-6 align-items-md-center">
         <div class="row">
             <div class="form-group col-sm-6">
             <label>Usuario</label>
             <asp:TextBox ID="txtid" runat="server" CssClass="form-control input-sm"/>
             </div>
             <div class="form-group col-sm-6">
             <label>Contraseña</label>
             <asp:TextBox ID="txtcontraseña" runat="server" type="password" CssClass="form-control input-sm tip"/>
            </div>
             <div class="form-group col-sm-6">
             <label>Identidad del Empleado</label>
             <asp:TextBox ID="txtidentidad" runat="server" CssClass="form-control input-sm tip"/>
            </div>
             <div class="form-group col-sm-12">
             <label>Activo</label>
             <asp:RadioButtonList ID="RadioButtonList1" runat="server" class="radio" RepeatColumns="4"  CellSpacing="7" CellPadding="7">               
                        <asp:ListItem  Value="1" Text="Activo" Selected="True"></asp:ListItem>
                        <asp:ListItem  Value="2" Text="Inactivo"></asp:ListItem>
                        
              </asp:RadioButtonList>
              
         </div>
          <div class="form-group col-sm-12" >
              <label>Tipo de Usuario</label>
             <asp:RadioButtonList ID="RadioButtonList2" runat="server" class="radio" RepeatColumns="6"  CellSpacing="7" CellPadding="7">               
                        <asp:ListItem  Value="1" Text="Administrador" Selected="True"></asp:ListItem>
                        <asp:ListItem  Value="2" Text="Vendedor"></asp:ListItem>
                        <asp:ListItem  Value="3" Text="Supervisor"></asp:ListItem>
                 
              </asp:RadioButtonList>
         </div>
          
      </div>
<div class="col-md-3"></div> <!--pading-->
<div class="text-center">
   <asp:Button Text="Guardar" ID="btnguardar" runat="server"  CssClass="btn btn-primary"/>
  </div>
</div>
</div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" DeleteCommand="DELETE FROM [usuarios] WHERE [idusuario] = @idusuario" InsertCommand="INSERT INTO [usuarios] ([idusuario], [contraseña], [activo], [identidad], [idtipousuario]) VALUES (@idusuario, @contraseña, @activo, @identidad, @idtipousuario)" SelectCommand="SELECT * FROM [usuarios]" UpdateCommand="UPDATE [usuarios] SET [contraseña] = @contraseña, [activo] = @activo, [identidad] = @identidad, [idtipousuario] = @idtipousuario WHERE [idusuario] = @idusuario">
        <DeleteParameters>
            <asp:Parameter Name="idusuario" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="txtid" Name="idusuario" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtcontraseña" Name="contraseña" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="RadioButtonList1" Name="activo" PropertyName="SelectedValue" Type="Byte" />
            <asp:ControlParameter ControlID="txtidentidad" Name="identidad" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="RadioButtonList2" Name="idtipousuario" PropertyName="SelectedValue" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="contraseña" Type="String" />
            <asp:Parameter Name="activo" Type="Byte" />
            <asp:Parameter Name="identidad" Type="String" />
            <asp:Parameter Name="idtipousuario" Type="Int32" />
            <asp:Parameter Name="idusuario" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

