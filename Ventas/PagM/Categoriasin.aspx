<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/PagM/PagM.Master" CodeBehind="Categoriasin.aspx.vb" Inherits="Ventas.Categorias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Categorias</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
        <div class="jumbotron row justify-content-center">
     <h1 class="display-4 text-center"> Categorias de Producto</h1>
 </div>
<br />
 <div class="container-sm"> <!-- Formulario -->
        <h3>Inserción de datos</h3>
       <hr class="my-4">
</div>
     <div class="row"> <!-- Formulario centrado --> 
<div class="col-md-3"></div>
     <div class="col-md-6 align-items-md-center">
         <div class="form-group">
             <label>ID de la Categoria</label>
             <asp:TextBox ID="txtid" runat="server" CssClass="form-control" TextMode="Number"/>
             <asp:RequiredFieldValidator ControlToValidate="txtid" ErrorMessage="Introduzca el ID" runat="server" CssClass="text-danger"/>
         </div>
          <div class="form-group">
             <label>Nombre de la Categoria</label>
             <asp:TextBox ID="txtnombre" runat="server" CssClass="form-control"/>
             <asp:RequiredFieldValidator ControlToValidate="txtnombre" ErrorMessage="Introduzca el Nombre" runat="server" CssClass="text-danger"/>
         </div>
          <div class="form-group">
             <label>Descripcion</label>
             <asp:TextBox ID="txtdescripcion" TextMode="multiline" Columns="50" Rows="7" runat="server" CssClass="form-control"/>
              <asp:RequiredFieldValidator ControlToValidate="txtdescripcion" ErrorMessage="Introduzca una Descripcion" runat="server" CssClass="text-danger"/>
         </div>
         <div class="text-center">
             <asp:Button Text="Guardar" ID="btnguardar" runat="server"  CssClass="btn btn-primary"/>
        </div>
        </div>   
        
 <div class="col-md-3"></div><!--pading-->
       
</div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" DeleteCommand="DELETE FROM [categorias] WHERE [idcategoria] = @idcategoria" InsertCommand="INSERT INTO [categorias] ([idcategoria], [nombre], [descripcion]) VALUES (@idcategoria, @nombre, @descripcion)" SelectCommand="SELECT * FROM [categorias]" UpdateCommand="UPDATE [categorias] SET [nombre] = @nombre, [descripcion] = @descripcion WHERE [idcategoria] = @idcategoria">
        <DeleteParameters>
            <asp:Parameter Name="idcategoria" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="txtid" Name="idcategoria" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="txtnombre" Name="nombre" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtdescripcion" Name="descripcion" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="descripcion" Type="String" />
            <asp:Parameter Name="idcategoria" Type="Int32" />
        </UpdateParameters>
        </asp:SqlDataSource>
</asp:Content>
