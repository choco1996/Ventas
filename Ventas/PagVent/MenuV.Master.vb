Public Class MenuV
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.Cookies("Log") Is Nothing Then
            Response.Redirect("/Login.aspx")
        Else
            If Request.Cookies("Logtip").Value <> "2" Then
                Response.Redirect("/Login.aspx")
            End If
        End If
    End Sub

End Class