Public Class Clientesin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Private Sub btnguardar_Click(sender As Object, e As EventArgs) Handles btnguardar.Click
        Try
            SqlDataSource1.Insert()
            ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "alertme()", True)
        Catch ex As Exception
            ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "errorme()", True)
        End Try

        Dim limpiar As New Limpiar
        limpiar.CleanControls(Me.Controls)
    End Sub
End Class