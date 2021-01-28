<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FConsulta
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
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

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.btnCancelar1 = New System.Windows.Forms.Button()
        Me.btnConsultar1 = New System.Windows.Forms.Button()
        Me.edttrps = New System.Windows.Forms.TextBox()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.edtsrps = New System.Windows.Forms.TextBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.edtnrps = New System.Windows.Forms.TextBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.GroupBox1.SuspendLayout()
        Me.SuspendLayout()
        '
        'btnCancelar1
        '
        Me.btnCancelar1.Location = New System.Drawing.Point(84, 182)
        Me.btnCancelar1.Name = "btnCancelar1"
        Me.btnCancelar1.Size = New System.Drawing.Size(75, 23)
        Me.btnCancelar1.TabIndex = 7
        Me.btnCancelar1.Text = "Cancelar"
        Me.btnCancelar1.UseVisualStyleBackColor = True
        '
        'btnConsultar1
        '
        Me.btnConsultar1.Location = New System.Drawing.Point(3, 182)
        Me.btnConsultar1.Name = "btnConsultar1"
        Me.btnConsultar1.Size = New System.Drawing.Size(75, 23)
        Me.btnConsultar1.TabIndex = 6
        Me.btnConsultar1.Text = "Consultar"
        Me.btnConsultar1.UseVisualStyleBackColor = True
        '
        'edttrps
        '
        Me.edttrps.Location = New System.Drawing.Point(3, 145)
        Me.edttrps.Name = "edttrps"
        Me.edttrps.Size = New System.Drawing.Size(156, 20)
        Me.edttrps.TabIndex = 5
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.btnCancelar1)
        Me.GroupBox1.Controls.Add(Me.btnConsultar1)
        Me.GroupBox1.Controls.Add(Me.edttrps)
        Me.GroupBox1.Controls.Add(Me.edtsrps)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.edtnrps)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Location = New System.Drawing.Point(0, 1)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(165, 211)
        Me.GroupBox1.TabIndex = 1
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Dados RPS para Consulta"
        '
        'edtsrps
        '
        Me.edtsrps.Location = New System.Drawing.Point(3, 93)
        Me.edtsrps.Name = "edtsrps"
        Me.edtsrps.Size = New System.Drawing.Size(156, 20)
        Me.edtsrps.TabIndex = 3
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(3, 129)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(53, 13)
        Me.Label3.TabIndex = 4
        Me.Label3.Text = "Tipo RPS"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(3, 77)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(56, 13)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "Série RPS"
        '
        'edtnrps
        '
        Me.edtnrps.Location = New System.Drawing.Point(3, 42)
        Me.edtnrps.Name = "edtnrps"
        Me.edtnrps.Size = New System.Drawing.Size(156, 20)
        Me.edtnrps.TabIndex = 1
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(3, 26)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(69, 13)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "Número RPS"
        '
        'FConsulta
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(170, 219)
        Me.Controls.Add(Me.GroupBox1)
        Me.Name = "FConsulta"
        Me.Text = "FConsulta2"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents btnCancelar1 As System.Windows.Forms.Button
    Friend WithEvents btnConsultar1 As System.Windows.Forms.Button
    Friend WithEvents edttrps As System.Windows.Forms.TextBox
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents edtsrps As System.Windows.Forms.TextBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents edtnrps As System.Windows.Forms.TextBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
End Class
