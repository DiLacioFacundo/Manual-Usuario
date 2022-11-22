Public Class cargar_empleados


    Dim sql As String
    Dim x As Integer

    Private Sub btnVolverCargarEmpleado_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnVolverCargarEmpleado.Click
        Me.Close()
        abm.Show()
    End Sub






    Private Sub txtDNIEmpleado_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles txtDNIEmpleado.KeyPress
        If Char.IsDigit(e.KeyChar) Then
            e.Handled = False
        Else
            e.Handled = True
        End If
    End Sub

    Private Sub TextBox2_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtNombreEmpleado.TextChanged

    End Sub

    Private Sub cargar_empleados_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub
End Class