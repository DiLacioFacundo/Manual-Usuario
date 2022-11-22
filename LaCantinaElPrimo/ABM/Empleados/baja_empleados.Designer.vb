<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class baja_empleados
    Inherits System.Windows.Forms.Form

    'Form reemplaza a Dispose para limpiar la lista de componentes.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Requerido por el Diseñador de Windows Forms
    Private components As System.ComponentModel.IContainer

    'NOTA: el Diseñador de Windows Forms necesita el siguiente procedimiento
    'Se puede modificar usando el Diseñador de Windows Forms.  
    'No lo modifique con el editor de código.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(baja_empleados))
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.txtBuscarCom = New System.Windows.Forms.TextBox()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.dgvBorrarEmp = New System.Windows.Forms.DataGridView()
        Me.btnBorrarEmp = New System.Windows.Forms.Button()
        CType(Me.dgvBorrarEmp, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(166, 9)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(182, 25)
        Me.Label1.TabIndex = 17
        Me.Label1.Text = "Baja Empleados"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(25, 84)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(95, 13)
        Me.Label2.TabIndex = 18
        Me.Label2.Text = "Busca por Nombre"
        '
        'txtBuscarCom
        '
        Me.txtBuscarCom.Location = New System.Drawing.Point(153, 84)
        Me.txtBuscarCom.Name = "txtBuscarCom"
        Me.txtBuscarCom.Size = New System.Drawing.Size(195, 20)
        Me.txtBuscarCom.TabIndex = 19
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(404, 417)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(88, 29)
        Me.Button2.TabIndex = 21
        Me.Button2.Text = "VOLVER"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'dgvBorrarEmp
        '
        Me.dgvBorrarEmp.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgvBorrarEmp.Location = New System.Drawing.Point(108, 151)
        Me.dgvBorrarEmp.Name = "dgvBorrarEmp"
        Me.dgvBorrarEmp.Size = New System.Drawing.Size(240, 150)
        Me.dgvBorrarEmp.TabIndex = 25
        '
        'btnBorrarEmp
        '
        Me.btnBorrarEmp.Location = New System.Drawing.Point(203, 379)
        Me.btnBorrarEmp.Name = "btnBorrarEmp"
        Me.btnBorrarEmp.Size = New System.Drawing.Size(99, 23)
        Me.btnBorrarEmp.TabIndex = 26
        Me.btnBorrarEmp.Text = "Borrar Empleado"
        Me.btnBorrarEmp.UseVisualStyleBackColor = True
        '
        'baja_empleados
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(504, 458)
        Me.Controls.Add(Me.btnBorrarEmp)
        Me.Controls.Add(Me.dgvBorrarEmp)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.txtBuscarCom)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "baja_empleados"
        Me.Text = "Baja Empleados"
        CType(Me.dgvBorrarEmp, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents txtBuscarCom As System.Windows.Forms.TextBox
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents dgvBorrarEmp As System.Windows.Forms.DataGridView
    Friend WithEvents btnBorrarEmp As System.Windows.Forms.Button
End Class
