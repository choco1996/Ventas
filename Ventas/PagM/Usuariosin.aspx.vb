Public Class Usuarios
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnguardar_Click(sender As Object, e As EventArgs) Handles btnguardar.Click
        SqlDataSource1.Insert()
        Dim limpiar As New Limpiar
        limpiar.CleanControls(Me.Controls)
    End Sub
End Class