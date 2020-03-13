Imports System.Data.SqlClient
Imports System.Web
Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.Cookies("log") Is Nothing Then
        Else
            Response.Cookies("log").Expires = DateTime.Now.AddDays(-1)
            Response.Cookies("logtip").Expires = DateTime.Now.AddDays(-1)
        End If
    End Sub
    Private Sub consulta2()
        Dim us, tip As String
        Dim datos As New GridView


        datos.DataSource = Me.SqlDataSource1
        datos.DataBind()
        If datos.Rows.Count > 0 Then
            Session("idusuario") = datos.Rows(0).Cells(0).Text
            Session("contraseña") = datos.Rows(0).Cells(1).Text
            Session("activo") = datos.Rows(0).Cells(2).Text
            Session("idtipousuario") = datos.Rows(0).Cells(3).Text
            us = datos.Rows(0).Cells(0).Text
            tip = datos.Rows(0).Cells(3).Text
            If Session("contraseña") = txtclave.Text Then
                If Session("activo") = "1" Then
                    Select Case Session("idtipousuario")
                        Case "1"
                            Response.Cookies("log").Value = us
                            Response.Cookies("logtip").Value = tip
                            Response.Redirect("PagM/Menu.aspx")
                        Case "2"
                            Response.Cookies("log").Value = us
                            Response.Cookies("logtip").Value = tip
                            Response.Redirect("PagVent/Menu.aspx")
                        Case "3"
                            Response.Cookies("log").Value = us
                            Response.Cookies("logtip").Value = tip
                            Response.Redirect("PagVisor/Menu.aspx")
                    End Select
                End If
            Else
                ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "errorme()", True)


            End If

        Else
            ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "alertme()", True)


        End If
    End Sub
    Protected Sub Btnlogin_Click(sender As Object, e As EventArgs) Handles Btnlogin.Click
        consulta2()
    End Sub

End Class