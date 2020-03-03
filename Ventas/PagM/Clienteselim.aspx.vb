Public Class Clienteselim
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub boton(sender As Object, e As EventArgs) Handles btnbusqueda.Click
        Select Case RadioButtonList1.SelectedValue
            Case 1
                GridView1.DataSourceID = ("SqlDataSource3")
            Case 2
                GridView1.DataSourceID = ("SqlDataSource1")
        End Select

    End Sub

    Protected Sub eliminar(sender As Object, e As EventArgs) Handles btneliminar.Click
        Try
            SqlDataSource4.Delete()
            ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "alertme()", True)
        Catch ex As Exception
            ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "errorme()", True)
        End Try

    End Sub

End Class