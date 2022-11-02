Public Class Form1
    Private Sub btn_login_Click(sender As Object, e As EventArgs) Handles btn_login.Click
        conectarBBDD()

        Dim usuario As String = txt_usuario.Text
        Dim contra As String = txt_contra.Text

        Dim validar As String = login(usuario, contra)

        If validar = "si" Then
            lb_estado.Text = "Logueado"
        ElseIf validar = "no" Then
            lb_estado.Text = "No Logueado"
        Else
            lb_estado.Text = "Error"
        End If
        con.Close()
    End Sub
End Class
