Imports System.Data
Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim numero As Integer
        Dim dvSql As DataView = DirectCast(SqlDataSource1.Select(DataSourceSelectArguments.Empty), DataView)
        If dvSql.Count > 0 Then
            numero = 1
        End If

        If numero = 1 Then

            Session("usuario") = dvSql(0).Item(0)
            Response.Redirect("Registro.aspx")

        End If
    End Sub
End Class