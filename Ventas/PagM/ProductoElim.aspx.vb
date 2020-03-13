Public Class ProductoElim
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

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

    Private Sub btnbusqueda_Click(sender As Object, e As EventArgs) Handles btnbusqueda.Click
        Select Case RadioButtonList3.SelectedValue
            Case 1
                GridView1.DataSourceID = "SqlDataSource1"
            Case 2
                GridView1.DataSourceID = "SqlDataSource2"
            Case 3
                GridView1.DataSourceID = "SqlDataSource3"
        End Select
    End Sub

    Private Sub btnselecion_Click(sender As Object, e As EventArgs) Handles btnselecion.Click
        Try
            SqlDataSource2.Delete()
            ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "alertme()", True)

        Catch ex As Exception
            ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "errorme()", True)
        End Try

    End Sub
End Class