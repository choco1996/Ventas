Imports System.Data.SqlClient

Public Class Clientes
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Public Sub insert()
        Dim nombre, apellido, rtn, direccion, telefono, correo, identidad As String
        nombre = txtnombre.Text
        apellido = txtapellido.Text
        identidad = txtidentidad.Text
        rtn = txtrtn.Text
        direccion = txtdireccion.Text
        telefono = txttelefono.Text
        correo = txtcorreo.Text
        Try
            Dim insertquery As String = "INSERT INTO clientes(idclientes, nombre, apellido, rtn, direccion, telefono, correo)VALUES('" & identidad & "', '" & nombre & "', '" & apellido & "', '" & rtn & "', '" & direccion & "', '" & telefono & "', '" & correo & "')"
            Conexion.Conectado()
            Conexion.ExecuteQuery(insertquery)
        Catch sqlEx As SqlException
            MsgBox(sqlEx.Message, MsgBoxStyle.Information)
        End Try

        txtnombre.Text = ""
        txtapellido.Text = ""
        txtidentidad.Text = ""
        txtrtn.Text = ""
        txtdireccion.Text = ""
        txttelefono.Text = ""
        txtcorreo.Text = ""
    End Sub

    Private Sub btnguardar_Click(sender As Object, e As EventArgs) Handles btnguardar.Click
        insert()
    End Sub

End Class