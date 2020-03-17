Imports System.Data.SqlClient

Public Class VentasContado
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtfecha.Text = Date.Now.ToString("dd/MM/yyyy") + " " + Date.Now.ToString("hh:mm:ss")
        txtusuario.Text = Request.Cookies("Log").Value
        Dim con As New SqlConnection
        Try
            Using cmd As New SqlCommand
                con.ConnectionString = ConfigurationManager.ConnectionStrings("Ventas.My.MySettings.Conect").ConnectionString
                con.Open()
                cmd.Connection = con
                cmd.CommandText = "Sele"
                cmd.ExecuteNonQuery()
            End Using
        Catch ex As Exception
            con.Close()
        End Try
    End Sub

End Class