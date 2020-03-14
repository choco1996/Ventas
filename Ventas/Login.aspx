<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="Ventas.Login" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
    <link href="Content/css/estiloslogin.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script type="text/javascript" src="../Scripts/perso/swalert.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
</head>
<script>
            function alertme() {
                Swal.fire({
                    icon: 'error',
                    title: 'Usuario Incorrecto',

                })
            }
            function errorme() {
                Swal.fire({
                    icon: 'error',
                    text: 'Contraseña Incorrecta',
                })
            }
</script>
<body>

    <div class="jumbotron arequipa">
        <div class="row">
            <div class="col-xl-12">
                <h2>Inicio de Sesion</h2>
            </div>
        </div>
        <form runat="server" class="form-horizontal">
            <div class="form-group">
                <asp:Label ID="lblusuario" runat="server" Text="Usuario" CssClass="control-label col-sm-2"></asp:Label>
                <div class="col-sm-12">
                    <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="lblclave" runat="server" Text="Clave" CssClass="control-label col-sm-2"></asp:Label>
                <div class="col-sm-12">
                    <asp:TextBox ID="txtclave" runat="server" type="password" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-12">
                    <asp:Button ID="Btnlogin" runat="server" Text="Login" CssClass="form-control btn btn-primary" />
                </div>
            </div>
        </form>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ventas.My.MySettings.Conect %>" SelectCommand="SELECT [idusuario], [contraseña], [activo], [idtipousuario] FROM [usuarios] WHERE ([idusuario] = @idusuario)">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtUsuario" Name="idusuario" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</body>
</html>