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
    Protected Sub Btnlogin_Click(sender As Object, e As EventArgs) Handles Btnlogin.Click
        consulta2()
        ''Response.Redirect("PagM/Clientes.aspx")
    End Sub

End Class