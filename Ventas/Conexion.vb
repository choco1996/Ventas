Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Configuration
Public Class Conexion
    Public Shared con As New SqlConnection
    Public Shared Function Conectado()
        Try
            con = New SqlConnection("Server=DESKTOP-OVIL7IO\SQLEXPRESS; Database=Ventas; Integrated Security=true")
            con.Open()
            Return True
        Catch ex As Exception
            MsgBox(ex.Message)
            Return False
        End Try
    End Function
    Public Shared Function Desconectado()
        Try
            If con.State = ConnectionState.Open Then
                con.Close()
                Return True
            Else
                Return False
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
            Return False
        End Try
    End Function
    Public Shared Function ExecuteQuery(query As String)
        Dim command As New SqlCommand(query, con)
        Conectado()
        command.ExecuteNonQuery()
        Desconectado()
    End Function

End Class
