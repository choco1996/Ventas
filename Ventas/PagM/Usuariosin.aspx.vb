Public Class Usuarios
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GridView1.DataSourceID = ("SqlDataSource2")
    End Sub

    Protected Sub btnguardar_Click(sender As Object, e As EventArgs) Handles btnguardar.Click
        SqlDataSource1.Insert()
        Dim limpiar As New Limpiar
        limpiar.CleanControls(Me.Controls)
    End Sub

    Private Sub btnbusqueda_Click(sender As Object, e As EventArgs) Handles btnbusqueda.Click
        Select Case RadioButtonList1.SelectedValue
            Case 1
                GridView1.DataSourceID = ("SqlDataSource2")
            Case Else
                GridView1.DataSourceID = ("SqlDataSource3")
        End Select
    End Sub

End Class