Imports MySql.Data.MySqlClient

Public Class Inicio_Sesion


    Function Existeusuario(ByVal usuario As String, ByVal password As String) As Boolean
        Dim oConexion As New MySqlConnection
        Dim oDataAdapater As MySqlDataAdapter
        Dim oDataSet As New DataSet
        Dim sSql As String
        Dim sw As Boolean = False

        Try
            oConexion.ConnectionString = "server=localhost; port=3306; database=cantinaelprimo; user id=root; password=;"
            sSql = "SELECT * FROM Usuarios WHERE Usuario='" & usuario & "' and Password= '" & password & "'"
            oConexion.Open()
            oDataAdapater = New MySqlDataAdapter(sSql, oConexion)
            oDataSet.Clear()
            oDataAdapater.Fill(oDataSet, "Usuarios")
            MsgBox("Conexion establecida")
            oConexion.Close()


            If (oDataSet.Tables("Usuarios").Rows.Count() <> 0) Then

                MessageBox.Show("Bienvenido al sistema", "Sistema")
                sw = True
            Else
                MessageBox.Show("Usuario y/o password no validos", "Sistema")
                sw = False
            End If

        Catch ex As Exception
            MsgBox("Conexion fallida")
        End Try

        Return (sw)
    End Function

    Public Sub pruebaconn()


    End Sub



    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnIngresar.Click
        If (Existeusuario(txtUsuario.Text, txtContraseña.Text)) Then
            Me.Hide()
            cantinamenu.Show()
            pruebaconn()
        End If
    End Sub


    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        End
    End Sub

    Private Sub btnVer_MouseLeave(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnVer.MouseLeave
        txtContraseña.UseSystemPasswordChar = True
    End Sub
    Private Sub btnVer_MouseMove(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles btnVer.MouseMove
        txtContraseña.UseSystemPasswordChar = False
    End Sub


End Class
