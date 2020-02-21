Public Class Clientesmod
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GridView1.DataSourceID = ("SqlDataSource2")
    End Sub
    Private Sub relleno()
        Dim datos As New GridView
        datos.DataSource = Me.SqlDataSource1
        datos.DataBind()

        If datos.Rows.Count > 0 Then
            txtnombre.Text = datos.Rows(0).Cells(1).Text
            txtapellido.Text = datos.Rows(0).Cells(2).Text
            txtrtn.Text = datos.Rows(0).Cells(3).Text
            txtdireccion.Text = datos.Rows(0).Cells(4).Text
            txttelefono.Text = datos.Rows(0).Cells(5).Text
            txtcorreo.Text = datos.Rows(0).Cells(6).Text
        End If
    End Sub
    Protected Sub boton(sender As Object, e As EventArgs) Handles btnbusqueda.Click
        Select Case RadioButtonList1.SelectedValue
            Case 1
                GridView1.DataSourceID = ("SqlDataSource2")
            Case 2
                GridView1.DataSourceID = ("SqlDataSource1")
            Case Else
                GridView1.DataSourceID = ("SqlDataSource4")
        End Select
    End Sub


    Protected Sub btneditar_Click(sender As Object, e As EventArgs) Handles btneditar.Click
        SqlDataSource3.Update()
        Dim limpiar As New Limpiar
        limpiar.CleanControls(Me.Controls)
    End Sub

    Protected Sub btnselecion_Click(sender As Object, e As EventArgs) Handles btnselecion.Click
        relleno()
    End Sub
End Class