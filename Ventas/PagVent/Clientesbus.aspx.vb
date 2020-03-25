Public Class Clientesbus1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub boton(sender As Object, e As EventArgs) Handles btnbusqueda.Click
        Select Case RadioButtonList1.SelectedValue
            Case 1
                GridView1.DataSourceID = ("SqlDataSource3")
            Case 2
                GridView1.DataSourceID = ("SqlDataSource1")
            Case Else
                GridView1.DataSourceID = ("SqlDataSource2")
        End Select

    End Sub

End Class