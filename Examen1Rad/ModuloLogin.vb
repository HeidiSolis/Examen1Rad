Imports System.Data.Sql
Imports System.Data.SqlClient

Module ModuloLogin

    Public con As SqlConnection
    Public comm As SqlCommand
    Public read As SqlDataReader

    Sub conectarBBDD()
        Try
            con = New SqlConnection
            con.ConnectionString = "Data Source=PC-USUARIO\INSTANCE1;Initial Catalog=ExamenRAD;Integrated Security=True"
            con.Open()
            MsgBox("Conexion creada exitosamente")

        Catch ex As Exception
            MsgBox("No se pude conectar a la base de datos")
        End Try
    End Sub

    Function login(ByVal usuario As String, ByVal contra As String) As String
        Dim resultado As Boolean = False
        Try
            comm = New SqlCommand("SELECT Nombre_Usuario, Contra_Usuario FROM Usuarios WHERE Nombre_Usuario=@parametro1 and Contra_Usuario=@parametro2", con)
            comm.Parameters.AddWithValue("@parametro1", usuario)
            comm.Parameters.AddWithValue("@parametro2", contra)

            read = comm.ExecuteReader
            If read.Read Then
                Return "si"
            End If
            read.Close()
            Return "no"
        Catch ex As Exception
            MsgBox("No se pudo verificar el usuario, hubo un error")
        End Try

        Return "error"
    End Function


End Module
