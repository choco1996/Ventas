Imports System.Data.SqlClient

Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Private Sub consulta2()
        Dim datos As New GridView
        Dim a, b, c, d As String
        datos.DataSource = Me.SqlDataSource1
        datos.DataBind()
        If datos.Rows.Count > 0 Then
            Session("idusuario") = datos.Rows(0).Cells(0).Text
            Session("contraseña") = datos.Rows(0).Cells(1).Text
            Session("activo") = datos.Rows(0).Cells(2).Text
            Session("idtipousuario") = datos.Rows(0).Cells(3).Text

            If Session("contraseña") = txtclave.Text Then
                If Session("activo") = "1" Then
                    Select Case Session("idtipousuario")
                        Case "1"
                            Response.Redirect("PagM/Menu.aspx")
                        Case "2"
                            Response.Redirect("PagVent/Menu.aspx")
                        Case "3"
                            Response.Redirect("PagVisor/Menu.aspx")
                        Case Else
                            Response.Redirect("PagC/Menu.aspx")
                    End Select
                End If
            Else
                MsgBox("contraseña Incorrecta", MsgBoxStyle.Critical, "Error")
                Me.txtclave.Text = ""

            End If

        Else
            MsgBox("Usuario Incorrecto", MsgBoxStyle.Critical, "Error")
            Me.txtUsuario.Text = ""
            Me.txtclave.Text = ""

        End If
    End Sub
    Private Sub consulta()
        Dim usuario, clave, a, b As String
        Dim ac, t As Int16
        usuario = txtUsuario.Text
        clave = txtclave.Text

        Try
            Dim query As String = "SELECT idusuario, contraseña, activo, idtipousuario FROM usuarios where idusuario = '" & usuario & "'"
            Conexion.Conectado()

            Dim rs As SqlDataReader = Conexion.ExecuteQuery(query)
            Do While rs.NextResult()
                a = rs.GetString(1)
                b = rs.GetString(2)
                ac = rs.GetInt16(3)
                t = rs.GetInt16(4)
            Loop

            If a Is Nothing AndAlso b Is Nothing Then
                MsgBox("usuario no existe")
                Return
            End If
            If b.Equals(value:=clave) Then
                Response.Redirect("PagM/Menu.aspx")
            End If

        Catch sqlEx As SqlException
            MsgBox(sqlEx.Message, MsgBoxStyle.Information)
        End Try

    End Sub

    Protected Sub Btnlogin_Click(sender As Object, e As EventArgs) Handles Btnlogin.Click
        consulta2()
        ''Response.Redirect("PagM/Clientes.aspx")
    End Sub

End Class