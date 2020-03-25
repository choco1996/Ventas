Imports System.Data.SqlClient

Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim cd As Int32
        Dim con As New SqlConnection
        Dim dr As SqlDataReader
        con.ConnectionString = ConfigurationManager.ConnectionStrings("Ventas.My.MySettings.Conect").ConnectionString
        Dim consult As String = "SELECT TOP 1 * FROM producto ORDER BY idproducto DESC"
        Dim cmd As New SqlCommand(consult, con)
        con.Open()
        dr = cmd.ExecuteReader
        If dr.Read() Then
            cd = dr("idproducto")
        End If
        dr.Close()
        con.Close()
        txtidproducto.Text = cd + 1
    End Sub

    Protected Sub btnguardar_Click(sender As Object, e As EventArgs) Handles btnguardar.Click
        Try
            SqlDataSource1.Insert()
            ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "alertme()", True)
        Catch ex As Exception
            ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "errorme()", True)
        End Try
        Dim limpiar As New Limpiar
        limpiar.CleanControls(Me.Controls)
    End Sub

End Class