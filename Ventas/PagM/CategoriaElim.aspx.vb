Public Class CategoriaElim
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GridView1.DataSourceID = "SqlDataSource1"
    End Sub

    Private Sub btnbusqueda_Click(sender As Object, e As EventArgs) Handles btnbusqueda.Click
        Select Case RadioButtonList3.SelectedValue
            Case 1
                GridView1.DataSourceID = "SqlDataSource1"
            Case 2
                Try
                    GridView1.DataSourceID = "SqlDataSource2"
                Catch ex As Exception
                    ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "errorme()", True)
                End Try
            Case 3
                Try
                    GridView1.DataSourceID = "SqlDataSource3"
                Catch ex As Exception
                    ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "errorme()", True)
                End Try
        End Select
    End Sub

    Private Sub btnselecion_Click(sender As Object, e As EventArgs) Handles btnselecion.Click
        Try
            SqlDataSource1.Delete()
            ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "alertme()", True)
        Catch ex As Exception
            ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "errorme()", True)
        End Try

    End Sub

End Class