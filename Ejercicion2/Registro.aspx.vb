Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlException
Imports System.Runtime.InteropServices

Public Class WebForm1
    Inherits System.Web.UI.Page


    Protected Sub Registrar_Click(sender As Object, e As EventArgs) Handles Registrar.Click

        Dim numero As Integer
        Dim dvSql As DataView = DirectCast(SqlDataSource1.Select(DataSourceSelectArguments.Empty), DataView)
        numero = CInt(dvSql(0).Item(0))
        Dim conexion = "Data Source=DESKTOP-RS560A7\SQLEXPRESS;Initial Catalog=login_unda;Integrated Security=True"
        Dim cn As New SqlConnection
        cn.ConnectionString = conexion
        resultado.Text = numero
        Dim usuario As New SqlCommand("INSERT INTO dbo.usuarios VALUES(" + resultado.Text + ",'" + text_email.Text + "','" + text_password.Text + "')", cn)
        Dim estudiante As New SqlCommand("INSERT INTO dbo.estudiantes VALUES(" + resultado.Text + ",'" + text_nombres.Text + "','" + text_apellidos.Text + "'," + nacionalidad.Text + "," + text_edad.Text + "," + civil.Text + "," + carrera.Text + "," + semestre.Text + ")", cn)
        Dim estudiante_usuario As New SqlCommand("INSERT INTO dbo.estudiantes_usuarios VALUES(" + resultado.Text + "," + resultado.Text + "," + resultado.Text + ")", cn)
        cn.Open()
        usuario.ExecuteNonQuery()
        estudiante.ExecuteNonQuery()
        estudiante_usuario.ExecuteNonQuery()
        MsgBox("Se registro correctamente el usuario")






    End Sub

End Class