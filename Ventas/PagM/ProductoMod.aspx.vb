Public Class ProductoMod
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GridView1.DataSourceID = "SqlDataSource2"
    End Sub

    'Protected Sub Prob()
    '    Dim strConnString As String = ConfigurationManager.ConnectionStrings("Ventas.My.MySettings.Conect").ConnectionString
    'End Sub
    Protected Sub GridView1_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridView1.RowDataBound
        If (e.Row.RowType = DataControlRowType.DataRow) Then
            Select Case e.Row.Cells(3).Text
                Case "1"
                    e.Row.Cells(3).Text = "Activo"
                Case "2"
                    e.Row.Cells(3).Text = "Inactivo"
            End Select
        End If
    End Sub

    Private Sub relleno()
        Dim a, b As String
        Dim datos As New GridView
        datos.DataSource = Me.SqlDataSource3
        datos.DataBind()
        If datos.Rows.Count > 0 Then
            txtnombre.Text = Page.Server.HtmlDecode(datos.Rows(0).Cells(1).Text)
            txtprecio.Text = Page.Server.HtmlDecode(datos.Rows(0).Cells(2).Text)
            a = Page.Server.HtmlDecode(datos.Rows(0).Cells(3).Text)
            If a = "1" Then
                RadioButtonList2.SelectedIndex = 0
            Else
                RadioButtonList2.SelectedIndex = 1
            End If
            txtinventario.Text = Page.Server.HtmlDecode(datos.Rows(0).Cells(4).Text)
            b = Page.Server.HtmlDecode(datos.Rows(0).Cells(5).Text)
            DropDownList1.SelectedItem.Text = b
        End If
    End Sub

    Protected Sub mood()
        Try
            SqlDataSource3.Update()
            ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "alertme()", True)
        Catch ex As Exception
            ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "errorme()", True)
        End Try
        Dim limpiar As New Limpiar
        limpiar.CleanControls(Me.Controls)
    End Sub

    Protected Sub btnguardar_Click(sender As Object, e As EventArgs) Handles btnguardar.Click
        mood()
    End Sub

    Protected Sub btnselecion_Click(sender As Object, e As EventArgs) Handles btnselecion.Click
        relleno()
    End Sub

    Protected Sub btnbusqueda_Click(sender As Object, e As EventArgs) Handles btnbusqueda.Click
        Select Case RadioButtonList3.SelectedValue
            Case 1
                GridView1.DataSourceID = "SqlDataSource2"
            Case 2
                GridView1.DataSourceID = "SqlDataSource3"
            Case 3
                GridView1.DataSourceID = "SqlDataSource4"
        End Select
    End Sub

End Class