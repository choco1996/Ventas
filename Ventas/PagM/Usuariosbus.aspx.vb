Public Class Usuariosbus
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GridView1.DataSourceID = ("SqlDataSource2")
    End Sub

    Private Sub btnbusqueda_Click(sender As Object, e As EventArgs) Handles btnbusqueda.Click
        Select Case RadioButtonList3.SelectedValue
            Case 1
                GridView1.DataSourceID = ("SqlDataSource2")
            Case Else
                GridView1.DataSourceID = ("SqlDataSource1")
        End Select
    End Sub
    Protected Sub GridView1_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridView1.RowDataBound
        If (e.Row.RowType = DataControlRowType.DataRow) Then
            Select Case e.Row.Cells(2).Text
                Case "1"
                    e.Row.Cells(2).Text = "Activo"
                Case "2"
                    e.Row.Cells(2).Text = "Inactivo"
            End Select
        End If
    End Sub
End Class