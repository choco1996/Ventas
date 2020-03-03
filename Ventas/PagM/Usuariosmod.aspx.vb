Public Class Usuariosmod
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GridView1.DataSourceID = ("SqlDataSource2")
    End Sub
    Private Sub relleno()
        Dim datos As New GridView
        datos.DataSource = Me.SqlDataSource1
        datos.DataBind()
        Dim rb1, rb2 As New Int32

        If datos.Rows.Count > 0 Then
            txtidentidad.Text = datos.Rows(0).Cells(3).Text
            rb1 = datos.Rows(0).Cells(2).Text
            rb2 = datos.Rows(0).Cells(4).Text
        End If
        Select Case rb1
            Case 1
                RadioButtonList1.SelectedIndex = 0
            Case Else
                RadioButtonList1.SelectedIndex = 1
        End Select
        Select Case rb2
            Case 1
                RadioButtonList2.SelectedIndex = 0
            Case 2
                RadioButtonList2.SelectedIndex = 1
            Case Else
                RadioButtonList2.SelectedIndex = 2
        End Select
    End Sub
    Private Sub btnselecion_Click(sender As Object, e As EventArgs) Handles btnselecion.Click
        relleno()
    End Sub

    Private Sub btnedicion_Click(sender As Object, e As EventArgs) Handles btnedicion.Click
        Try
            SqlDataSource1.Update()
            ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "alertme()", True)
        Catch ex As Exception
            ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "errorme()", True)
        End Try
        Dim limpiar As New Limpiar
        limpiar.CleanControls(Me.Controls)
    End Sub

    Protected Sub btnbusqueda_Click(sender As Object, e As EventArgs) Handles btnbusqueda.Click
        Select Case RadioButtonList3.SelectedValue
            Case 1
                GridView1.DataSourceID = ("SqlDataSource2")
            Case Else
                GridView1.DataSourceID = ("SqlDataSource1")
        End Select
    End Sub
End Class