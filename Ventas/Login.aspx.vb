Imports System.Data.SqlClient

Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.Cache.SetCacheability(HttpCacheability.ServerAndNoCache)
        Response.Cache.SetAllowResponseInBrowserHistory(False)
        Response.Cache.SetNoStore()
    End Sub
    Private Sub consulta2()
        Dim datos As New GridView

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
                    End Select
                End If
            Else
                ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "errorme()", True)
                Me.txtclave.Text = ""

            End If

        Else
            ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "alertme()", True)
            Me.txtUsuario.Text = ""
            Me.txtclave.Text = ""

        End If
    End Sub
    Protected Sub Btnlogin_Click(sender As Object, e As EventArgs) Handles Btnlogin.Click
        consulta2()
    End Sub

End Class