﻿Public Class Empleadoselim
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GridView1.DataSourceID = ("SqlDataSource1")
    End Sub
    Private Sub btnbusqueda_Click(sender As Object, e As EventArgs) Handles btnbusqueda.Click
        Select Case RadioButtonList1.SelectedValue
            Case 1
                GridView1.DataSourceID = ("SqlDataSource1")
            Case Else
                GridView1.DataSourceID = ("SqlDataSource2")
        End Select
    End Sub
    Private Sub btneliminar_Click(sender As Object, e As EventArgs) Handles btneliminar.Click
        Try
            SqlDataSource2.Delete()
            ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "alertme()", True)
        Catch ex As Exception
            ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "errorme()", True)
        End Try
        Dim Limpiar As New Limpiar
        Limpiar.CleanControls(Me.Controls)

    End Sub
End Class