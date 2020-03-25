Imports System.Data.SqlClient

Public Class VentasCredito1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtfecha.Text = Date.Now.ToString("dd/MM/yyyy") + " " + Date.Now.ToString("hh:mm:ss")
        txtusuario.Text = Request.Cookies("Log").Value
        Dim cd As Int32
        Dim con As New SqlConnection
        Dim dr As SqlDataReader
        con.ConnectionString = ConfigurationManager.ConnectionStrings("Ventas.My.MySettings.Conect").ConnectionString
        Dim consult As String = "SELECT TOP 1 * FROM ventas_credito ORDER BY idventacredito DESC"
        Dim cmd As New SqlCommand(consult, con)
        con.Open()
        dr = cmd.ExecuteReader
        If dr.Read() Then
            cd = dr("idventacredito")
        End If
        dr.Close()
        con.Close()
        txtcodigo.Text = cd + 1
        Dim sum As Int32
        If (Session("datos") IsNot Nothing) Then
            Dim dt As DataTable = Session("datos")
            GridView1.DataSource = dt
            GridView1.DataBind()
            For Each row In dt.Rows
                sum = row("SubTotal") + sum
            Next
            txttotal.Text = sum
        End If

    End Sub
    Public Function filldata() As DataTable
        Dim dt As New DataTable()
        dt.Columns.Add("Codigo Producto", GetType(String))
        dt.Columns.Add("Cantidad", GetType(Integer))
        dt.Columns.Add("Nombre del Producto", GetType(String))
        dt.Columns.Add("Precio", GetType(Integer))
        dt.Columns.Add("SubTotal", GetType(Integer))
        Return dt
    End Function

    Protected Sub agregar_Click(sender As Object, e As EventArgs) Handles agregar.Click
        Dim a As Int32
        Dim n As String
        Dim con As New SqlConnection
        Dim dr As SqlDataReader
        con.ConnectionString = ConfigurationManager.ConnectionStrings("Ventas.My.MySettings.Conect").ConnectionString
        Dim consult As String = "SELECT idproducto, nombre, precio FROM producto WHERE idproducto = @codigo"
        Dim cmd As New SqlCommand(consult, con)
        cmd.Parameters.AddWithValue("@codigo", CInt(txtcodprod.Text))
        con.Open()
        dr = cmd.ExecuteReader
        If dr.Read() Then
            a = dr("precio")
            n = dr("nombre")
        End If
        dr.Close()
        con.Close()

        'columnas
        If (Session("datos") Is Nothing) Then
            Dim sum As Int32
            Dim dt As DataTable = filldata()
            Dim row As DataRow = dt.NewRow()
            row("Codigo Producto") = txtcodprod.Text
            row("Cantidad") = txtcantidad.Text
            row("Nombre del Producto") = n
            row("Precio") = a
            row("SubTotal") = Integer.Parse(txtcantidad.Text) * a
            dt.Rows.Add(row)
            'enlazas datatable a griedview
            GridView1.DataSource = dt
            GridView1.DataBind()
            Session("datos") = dt
            For Each row In dt.Rows
                sum = row("SubTotal") + sum
            Next
            txttotal.Text = sum
        Else
            Dim sum As Int32
            Dim dt As DataTable = Session("datos")
            Dim row As DataRow = dt.NewRow()
            row("Codigo Producto") = txtcodprod.Text
            row("Cantidad") = txtcantidad.Text
            row("Nombre del Producto") = n
            row("Precio") = a
            row("SubTotal") = Integer.Parse(txtcantidad.Text) * a
            dt.Rows.Add(row)
            'enlazas datatable a griedview
            GridView1.DataSource = dt
            GridView1.DataBind()
            Session("datos") = dt
            For Each row In dt.Rows
                sum = row("SubTotal") + sum
            Next
            txttotal.Text = sum
        End If

    End Sub
    Private Sub insert()
        Dim con As New SqlConnection
        Dim dr As SqlDataReader
        con.ConnectionString = ConfigurationManager.ConnectionStrings("Ventas.My.MySettings.Conect").ConnectionString
        Dim consult As String = "INSERT INTO ventas_credito (idusuario,idclientes,fecha) VALUES (@id,@cliente,@fecha)"
        Dim cmd As New SqlCommand(consult, con)
        cmd.Parameters.AddWithValue("@id", CStr(txtusuario.Text))
        cmd.Parameters.AddWithValue("@fecha", CDate(txtfecha.Text))
        cmd.Parameters.AddWithValue("@cliente", CStr(txtidentidad.Text))
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()

    End Sub
    Private Sub insert1()
        Dim dt As DataTable = Session("datos")
        Dim row As DataRow = dt.NewRow()
        Dim con As New SqlConnection
        Dim dr As SqlDataReader
        con.ConnectionString = ConfigurationManager.ConnectionStrings("Ventas.My.MySettings.Conect").ConnectionString
        For Each row In dt.Rows
            Dim i As Int16
            i = i + 1
            Dim consult As String = "INSERT INTO ventas_creditodetalle  (num_detalle, idventacredito, idproducto, cantidad, precio)VALUES (@num,@idventacredito,@idproducto,@cantidad,@precio)"
            Dim cmd As New SqlCommand(consult, con)
            cmd.Parameters.AddWithValue("@num", CInt(i))
            cmd.Parameters.AddWithValue("@idventacredito", CInt(txtcodigo.Text))
            cmd.Parameters.AddWithValue("@idproducto", CInt(row("Codigo Producto")))
            cmd.Parameters.AddWithValue("@cantidad", CInt(row("Cantidad")))
            cmd.Parameters.AddWithValue("@precio", CDbl(row("Precio")))
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
        Next
    End Sub
    Private Sub modprod()
        Dim cd, pro As Int32
        Dim dt As DataTable = Session("datos")
        Dim row As DataRow = dt.NewRow()
        Dim con As New SqlConnection
        Dim dr As SqlDataReader
        con.ConnectionString = ConfigurationManager.ConnectionStrings("Ventas.My.MySettings.Conect").ConnectionString

        For Each row In dt.Rows
            Dim consult As String = "SELECT inventario FROM producto WHERE idproducto = @idproducto"
            Dim cmd As New SqlCommand(consult, con)
            cmd.Parameters.AddWithValue("@idproducto", CInt(row("Codigo Producto")))
            con.Open()
            dr = cmd.ExecuteReader
            If dr.Read() Then
                cd = dr("inventario")
            End If
            dr.Close()
            con.Close()
            pro = (cd - row("Cantidad"))
            Dim consult1 As String = "UPDATE producto SET inventario = @inventario WHERE  idproducto = @idproducto"
            Dim cmd1 As New SqlCommand(consult1, con)
            cmd1.Parameters.AddWithValue("@idproducto", CInt(row("Codigo Producto")))
            cmd1.Parameters.AddWithValue("@inventario", CInt(pro))
            con.Open()
            cmd1.ExecuteNonQuery()
            con.Close()
            pro = 0
            cd = 0
        Next
    End Sub

    Protected Sub delt_Click(sender As Object, e As EventArgs) Handles delt.Click
        Session.Remove("datos")
    End Sub

    Protected Sub btnCompra_Click(sender As Object, e As EventArgs) Handles btnCompra.Click
        Try
            insert()
            insert1()
            modprod()
            ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "alertme()", True)
        Catch ex As Exception
            ClientScript.RegisterStartupScript(Me.GetType, "ramdomtext", "errorme()", True)
        End Try
        Session.Remove("datos")
    End Sub

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs)
        Dim con As New SqlConnection
        Dim dr As SqlDataReader
        con.ConnectionString = ConfigurationManager.ConnectionStrings("Ventas.My.MySettings.Conect").ConnectionString
        Dim consult As String = "SELECT nombre,apellido FROM clientes WHERE idclientes = @id"
        Dim cmd As New SqlCommand(consult, con)
        cmd.Parameters.AddWithValue("@id", CStr(txtidentidad.Text))
        con.Open()
        dr = cmd.ExecuteReader
        If dr.Read() Then
            label1.Text = dr("nombre") + " " + dr("apellido")
        Else
            label1.Text = "Este cliente no existe, por favor agreguelo"
        End If
        dr.Close()
        con.Close()
    End Sub
End Class