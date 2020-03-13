Public Class CategoriaMod
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GridView1.DataSourceID = "SqlDataSource1"
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
    Private Sub relleno()
        Dim datos As New GridView
        datos.DataSource = Me.SqlDataSource2
        datos.DataBind()
        If datos.Rows.Count > 0 Then
            txtnombre.Text = Page.Server.HtmlDecode(datos.Rows(0).Cells(1).Text)
            txtdescripcion.Text = Page.Server.HtmlDecode(datos.Rows(0).Cells(2).Text)
        End If
    End Sub

    Protected Sub btnguardar_Click(sender As Object, e As EventArgs) Handles btnguardar.Click
        Try
            SqlDataSource1.Update()
            ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "alertme()", True)
        Catch ex As Exception
            ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "errorme()", True)
        End Try
        Dim limpiar As New Limpiar
        limpiar.CleanControls(Me.Controls)
    End Sub

    Private Sub btnselecion_Click(sender As Object, e As EventArgs) Handles btnselecion.Click
        relleno()
    End Sub
End Class