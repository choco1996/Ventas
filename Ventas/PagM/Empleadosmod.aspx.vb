Public Class Empleadosmod
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GridView1.DataSourceID = ("SqlDataSource1")
    End Sub

    Private Sub relleno()
        Dim datos As New GridView
        datos.DataSource = Me.SqlDataSource2
        datos.DataBind()

        If datos.Rows.Count > 0 Then
            txtnombre.Text = datos.Rows(0).Cells(1).Text
            txtapellido.Text = datos.Rows(0).Cells(2).Text
            txtdireccion.Text = datos.Rows(0).Cells(3).Text
            txttelefono.Text = datos.Rows(0).Cells(4).Text
        End If
    End Sub

    Private Sub btnbusqueda_Click(sender As Object, e As EventArgs) Handles btnbusqueda.Click
        Select Case RadioButtonList1.SelectedValue
            Case 1
                GridView1.DataSourceID = ("SqlDataSource1")
            Case Else
                GridView1.DataSourceID = ("SqlDataSource2")
        End Select
    End Sub

    Private Sub btnselecion_Click(sender As Object, e As EventArgs) Handles btnselecion.Click
        relleno()
    End Sub

    Private Sub btneditar_Click(sender As Object, e As EventArgs) Handles btneditar.Click
        Try
            SqlDataSource1.Update()
            ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "alertme()", True)
        Catch ex As Exception
            ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "errorme()", True)
        End Try

        Dim limpiar As New Limpiar
        limpiar.CleanControls(Me.Controls)
    End Sub

End Class