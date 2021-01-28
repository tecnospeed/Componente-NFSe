<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FExemplo
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
        Me.TabControl2 = New System.Windows.Forms.TabControl()
        Me.TabPage5 = New System.Windows.Forms.TabPage()
        Me.GroupBox4 = New System.Windows.Forms.GroupBox()
        Me.GroupBox5 = New System.Windows.Forms.GroupBox()
        Me.rbAssincrono = New System.Windows.Forms.RadioButton()
        Me.rbSincrono = New System.Windows.Forms.RadioButton()
        Me.btnCancelar = New System.Windows.Forms.Button()
        Me.btnConsultarNFSe = New System.Windows.Forms.Button()
        Me.btnConsultarNFSeRPS = New System.Windows.Forms.Button()
        Me.btnConsultarLote = New System.Windows.Forms.Button()
        Me.btnEnviar = New System.Windows.Forms.Button()
        Me.btnAssinar = New System.Windows.Forms.Button()
        Me.btnXMLTx2 = New System.Windows.Forms.Button()
        Me.btnLoadConfig = New System.Windows.Forms.Button()
        Me.btnConfigIni = New System.Windows.Forms.Button()
        Me.cbCertificado = New System.Windows.Forms.ComboBox()
        Me.GroupBox3 = New System.Windows.Forms.GroupBox()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.edtProtocolo = New System.Windows.Forms.TextBox()
        Me.edtIM = New System.Windows.Forms.TextBox()
        Me.edtCNPJ = New System.Windows.Forms.TextBox()
        Me.edtCidade = New System.Windows.Forms.TextBox()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.rbNFSe = New System.Windows.Forms.RadioButton()
        Me.rbRPS = New System.Windows.Forms.RadioButton()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.cbEmail = New System.Windows.Forms.CheckBox()
        Me.btnExportar = New System.Windows.Forms.Button()
        Me.btnVisualizar = New System.Windows.Forms.Button()
        Me.btnImprimir = New System.Windows.Forms.Button()
        Me.btnEditar = New System.Windows.Forms.Button()
        Me.lblAmbiente = New System.Windows.Forms.Label()
        Me.TabPage4 = New System.Windows.Forms.TabPage()
        Me.mmConverter = New System.Windows.Forms.RichTextBox()
        Me.TabPage2 = New System.Windows.Forms.TabPage()
        Me.mmXML = New System.Windows.Forms.RichTextBox()
        Me.Tab = New System.Windows.Forms.TabControl()
        Me.tab1 = New System.Windows.Forms.TabPage()
        Me.mmFormatado = New System.Windows.Forms.RichTextBox()
        Me.tab3 = New System.Windows.Forms.TabPage()
        Me.mmCSV = New System.Windows.Forms.RichTextBox()
        Me.TabControl2.SuspendLayout()
        Me.TabPage5.SuspendLayout()
        Me.GroupBox4.SuspendLayout()
        Me.GroupBox5.SuspendLayout()
        Me.GroupBox3.SuspendLayout()
        Me.GroupBox1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        Me.TabPage4.SuspendLayout()
        Me.TabPage2.SuspendLayout()
        Me.Tab.SuspendLayout()
        Me.tab1.SuspendLayout()
        Me.tab3.SuspendLayout()
        Me.SuspendLayout()
        '
        'TabControl2
        '
        Me.TabControl2.Controls.Add(Me.TabPage5)
        Me.TabControl2.Location = New System.Drawing.Point(4, 1)
        Me.TabControl2.Name = "TabControl2"
        Me.TabControl2.SelectedIndex = 0
        Me.TabControl2.Size = New System.Drawing.Size(576, 256)
        Me.TabControl2.TabIndex = 0
        '
        'TabPage5
        '
        Me.TabPage5.Controls.Add(Me.GroupBox4)
        Me.TabPage5.Controls.Add(Me.GroupBox3)
        Me.TabPage5.Location = New System.Drawing.Point(4, 22)
        Me.TabPage5.Name = "TabPage5"
        Me.TabPage5.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage5.Size = New System.Drawing.Size(568, 230)
        Me.TabPage5.TabIndex = 0
        Me.TabPage5.Text = "Envio de Notas pelo Componente ProxyNFSe"
        Me.TabPage5.UseVisualStyleBackColor = True
        '
        'GroupBox4
        '
        Me.GroupBox4.Controls.Add(Me.GroupBox5)
        Me.GroupBox4.Controls.Add(Me.btnCancelar)
        Me.GroupBox4.Controls.Add(Me.btnConsultarNFSe)
        Me.GroupBox4.Controls.Add(Me.btnConsultarNFSeRPS)
        Me.GroupBox4.Controls.Add(Me.btnConsultarLote)
        Me.GroupBox4.Controls.Add(Me.btnEnviar)
        Me.GroupBox4.Controls.Add(Me.btnAssinar)
        Me.GroupBox4.Controls.Add(Me.btnXMLTx2)
        Me.GroupBox4.Controls.Add(Me.btnLoadConfig)
        Me.GroupBox4.Controls.Add(Me.btnConfigIni)
        Me.GroupBox4.Controls.Add(Me.cbCertificado)
        Me.GroupBox4.Location = New System.Drawing.Point(186, 0)
        Me.GroupBox4.Name = "GroupBox4"
        Me.GroupBox4.Size = New System.Drawing.Size(382, 227)
        Me.GroupBox4.TabIndex = 0
        Me.GroupBox4.TabStop = False
        Me.GroupBox4.Text = "Operações"
        '
        'GroupBox5
        '
        Me.GroupBox5.Controls.Add(Me.rbAssincrono)
        Me.GroupBox5.Controls.Add(Me.rbSincrono)
        Me.GroupBox5.Location = New System.Drawing.Point(6, 158)
        Me.GroupBox5.Name = "GroupBox5"
        Me.GroupBox5.Size = New System.Drawing.Size(90, 65)
        Me.GroupBox5.TabIndex = 10
        Me.GroupBox5.TabStop = False
        Me.GroupBox5.Text = "Tipo de Envio"
        '
        'rbAssincrono
        '
        Me.rbAssincrono.AutoSize = True
        Me.rbAssincrono.Checked = True
        Me.rbAssincrono.Location = New System.Drawing.Point(6, 42)
        Me.rbAssincrono.Name = "rbAssincrono"
        Me.rbAssincrono.Size = New System.Drawing.Size(79, 17)
        Me.rbAssincrono.TabIndex = 1
        Me.rbAssincrono.TabStop = True
        Me.rbAssincrono.Text = "Assíncrono"
        Me.rbAssincrono.UseVisualStyleBackColor = True
        '
        'rbSincrono
        '
        Me.rbSincrono.AutoSize = True
        Me.rbSincrono.Location = New System.Drawing.Point(6, 19)
        Me.rbSincrono.Name = "rbSincrono"
        Me.rbSincrono.Size = New System.Drawing.Size(69, 17)
        Me.rbSincrono.TabIndex = 0
        Me.rbSincrono.Text = "Síncrono"
        Me.rbSincrono.UseVisualStyleBackColor = True
        '
        'btnCancelar
        '
        Me.btnCancelar.Location = New System.Drawing.Point(191, 129)
        Me.btnCancelar.Name = "btnCancelar"
        Me.btnCancelar.Size = New System.Drawing.Size(179, 23)
        Me.btnCancelar.TabIndex = 9
        Me.btnCancelar.Text = "9. Cancelar NFSe"
        Me.btnCancelar.UseVisualStyleBackColor = True
        '
        'btnConsultarNFSe
        '
        Me.btnConsultarNFSe.Location = New System.Drawing.Point(191, 101)
        Me.btnConsultarNFSe.Name = "btnConsultarNFSe"
        Me.btnConsultarNFSe.Size = New System.Drawing.Size(179, 23)
        Me.btnConsultarNFSe.TabIndex = 8
        Me.btnConsultarNFSe.Text = "8. Consultar NFSe"
        Me.btnConsultarNFSe.UseVisualStyleBackColor = True
        '
        'btnConsultarNFSeRPS
        '
        Me.btnConsultarNFSeRPS.Location = New System.Drawing.Point(191, 72)
        Me.btnConsultarNFSeRPS.Name = "btnConsultarNFSeRPS"
        Me.btnConsultarNFSeRPS.Size = New System.Drawing.Size(179, 23)
        Me.btnConsultarNFSeRPS.TabIndex = 7
        Me.btnConsultarNFSeRPS.Text = "7. Consultar NFSe por RPS"
        Me.btnConsultarNFSeRPS.UseVisualStyleBackColor = True
        '
        'btnConsultarLote
        '
        Me.btnConsultarLote.Location = New System.Drawing.Point(191, 43)
        Me.btnConsultarLote.Name = "btnConsultarLote"
        Me.btnConsultarLote.Size = New System.Drawing.Size(179, 23)
        Me.btnConsultarLote.TabIndex = 6
        Me.btnConsultarLote.Text = "6. Consultar Lote RPS"
        Me.btnConsultarLote.UseVisualStyleBackColor = True
        '
        'btnEnviar
        '
        Me.btnEnviar.Location = New System.Drawing.Point(98, 158)
        Me.btnEnviar.Name = "btnEnviar"
        Me.btnEnviar.Size = New System.Drawing.Size(179, 23)
        Me.btnEnviar.TabIndex = 5
        Me.btnEnviar.Text = "Enviar RPS"
        Me.btnEnviar.UseVisualStyleBackColor = True
        '
        'btnAssinar
        '
        Me.btnAssinar.Location = New System.Drawing.Point(6, 130)
        Me.btnAssinar.Name = "btnAssinar"
        Me.btnAssinar.Size = New System.Drawing.Size(179, 23)
        Me.btnAssinar.TabIndex = 4
        Me.btnAssinar.Text = "4.Assinar XML"
        Me.btnAssinar.UseVisualStyleBackColor = True
        '
        'btnXMLTx2
        '
        Me.btnXMLTx2.Location = New System.Drawing.Point(6, 101)
        Me.btnXMLTx2.Name = "btnXMLTx2"
        Me.btnXMLTx2.Size = New System.Drawing.Size(179, 23)
        Me.btnXMLTx2.TabIndex = 3
        Me.btnXMLTx2.Text = "3. Gerar XML via TX2"
        Me.btnXMLTx2.UseVisualStyleBackColor = True
        '
        'btnLoadConfig
        '
        Me.btnLoadConfig.Location = New System.Drawing.Point(6, 72)
        Me.btnLoadConfig.Name = "btnLoadConfig"
        Me.btnLoadConfig.Size = New System.Drawing.Size(179, 23)
        Me.btnLoadConfig.TabIndex = 2
        Me.btnLoadConfig.Text = "2. Load Config"
        Me.btnLoadConfig.UseVisualStyleBackColor = True
        '
        'btnConfigIni
        '
        Me.btnConfigIni.Location = New System.Drawing.Point(6, 43)
        Me.btnConfigIni.Name = "btnConfigIni"
        Me.btnConfigIni.Size = New System.Drawing.Size(179, 23)
        Me.btnConfigIni.TabIndex = 1
        Me.btnConfigIni.Text = "1. Configurar Arquivo INI"
        Me.btnConfigIni.UseVisualStyleBackColor = True
        '
        'cbCertificado
        '
        Me.cbCertificado.FormattingEnabled = True
        Me.cbCertificado.Location = New System.Drawing.Point(6, 16)
        Me.cbCertificado.Name = "cbCertificado"
        Me.cbCertificado.Size = New System.Drawing.Size(373, 21)
        Me.cbCertificado.TabIndex = 0
        '
        'GroupBox3
        '
        Me.GroupBox3.Controls.Add(Me.Label5)
        Me.GroupBox3.Controls.Add(Me.Label4)
        Me.GroupBox3.Controls.Add(Me.Label3)
        Me.GroupBox3.Controls.Add(Me.Label2)
        Me.GroupBox3.Controls.Add(Me.edtProtocolo)
        Me.GroupBox3.Controls.Add(Me.edtIM)
        Me.GroupBox3.Controls.Add(Me.edtCNPJ)
        Me.GroupBox3.Controls.Add(Me.edtCidade)
        Me.GroupBox3.Location = New System.Drawing.Point(0, 0)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Size = New System.Drawing.Size(180, 227)
        Me.GroupBox3.TabIndex = 0
        Me.GroupBox3.TabStop = False
        Me.GroupBox3.Text = "Configurações"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(0, 139)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(107, 13)
        Me.Label5.TabIndex = 6
        Me.Label5.Text = "Número do Protocolo"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(0, 100)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(101, 13)
        Me.Label4.TabIndex = 5
        Me.Label4.Text = "Inscrição Municipal:"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(0, 59)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(37, 13)
        Me.Label3.TabIndex = 4
        Me.Label3.Text = "CNPJ:"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(0, 19)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(43, 13)
        Me.Label2.TabIndex = 0
        Me.Label2.Text = "Cidade:"
        '
        'edtProtocolo
        '
        Me.edtProtocolo.Location = New System.Drawing.Point(3, 156)
        Me.edtProtocolo.Name = "edtProtocolo"
        Me.edtProtocolo.Size = New System.Drawing.Size(177, 20)
        Me.edtProtocolo.TabIndex = 3
        '
        'edtIM
        '
        Me.edtIM.Location = New System.Drawing.Point(3, 117)
        Me.edtIM.Name = "edtIM"
        Me.edtIM.Size = New System.Drawing.Size(177, 20)
        Me.edtIM.TabIndex = 2
        '
        'edtCNPJ
        '
        Me.edtCNPJ.Location = New System.Drawing.Point(3, 76)
        Me.edtCNPJ.Name = "edtCNPJ"
        Me.edtCNPJ.Size = New System.Drawing.Size(177, 20)
        Me.edtCNPJ.TabIndex = 1
        '
        'edtCidade
        '
        Me.edtCidade.Location = New System.Drawing.Point(3, 36)
        Me.edtCidade.Name = "edtCidade"
        Me.edtCidade.Size = New System.Drawing.Size(177, 20)
        Me.edtCidade.TabIndex = 0
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.rbNFSe)
        Me.GroupBox1.Controls.Add(Me.rbRPS)
        Me.GroupBox1.Location = New System.Drawing.Point(582, 23)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(133, 56)
        Me.GroupBox1.TabIndex = 1
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Impressão"
        '
        'rbNFSe
        '
        Me.rbNFSe.AutoSize = True
        Me.rbNFSe.Location = New System.Drawing.Point(21, 36)
        Me.rbNFSe.Name = "rbNFSe"
        Me.rbNFSe.Size = New System.Drawing.Size(72, 17)
        Me.rbNFSe.TabIndex = 1
        Me.rbNFSe.Text = "printNFSe"
        Me.rbNFSe.UseVisualStyleBackColor = True
        '
        'rbRPS
        '
        Me.rbRPS.AutoSize = True
        Me.rbRPS.Checked = True
        Me.rbRPS.Location = New System.Drawing.Point(21, 15)
        Me.rbRPS.Name = "rbRPS"
        Me.rbRPS.Size = New System.Drawing.Size(67, 17)
        Me.rbRPS.TabIndex = 0
        Me.rbRPS.TabStop = True
        Me.rbRPS.Text = "printRPS"
        Me.rbRPS.UseVisualStyleBackColor = True
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.cbEmail)
        Me.GroupBox2.Controls.Add(Me.btnExportar)
        Me.GroupBox2.Controls.Add(Me.btnVisualizar)
        Me.GroupBox2.Controls.Add(Me.btnImprimir)
        Me.GroupBox2.Controls.Add(Me.btnEditar)
        Me.GroupBox2.Location = New System.Drawing.Point(582, 82)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(133, 171)
        Me.GroupBox2.TabIndex = 0
        Me.GroupBox2.TabStop = False
        '
        'cbEmail
        '
        Me.cbEmail.AutoSize = True
        Me.cbEmail.Location = New System.Drawing.Point(9, 128)
        Me.cbEmail.Name = "cbEmail"
        Me.cbEmail.Size = New System.Drawing.Size(102, 17)
        Me.cbEmail.TabIndex = 7
        Me.cbEmail.Text = "Enviar por Email"
        Me.cbEmail.UseVisualStyleBackColor = True
        '
        'btnExportar
        '
        Me.btnExportar.Location = New System.Drawing.Point(4, 99)
        Me.btnExportar.Name = "btnExportar"
        Me.btnExportar.Size = New System.Drawing.Size(121, 23)
        Me.btnExportar.TabIndex = 5
        Me.btnExportar.Text = "Exportar para PDF"
        Me.btnExportar.UseVisualStyleBackColor = True
        '
        'btnVisualizar
        '
        Me.btnVisualizar.Location = New System.Drawing.Point(4, 70)
        Me.btnVisualizar.Name = "btnVisualizar"
        Me.btnVisualizar.Size = New System.Drawing.Size(121, 23)
        Me.btnVisualizar.TabIndex = 4
        Me.btnVisualizar.Text = "Visualizar"
        Me.btnVisualizar.UseVisualStyleBackColor = True
        '
        'btnImprimir
        '
        Me.btnImprimir.Location = New System.Drawing.Point(4, 41)
        Me.btnImprimir.Name = "btnImprimir"
        Me.btnImprimir.Size = New System.Drawing.Size(121, 23)
        Me.btnImprimir.TabIndex = 3
        Me.btnImprimir.Text = "Imprimir"
        Me.btnImprimir.UseVisualStyleBackColor = True
        '
        'btnEditar
        '
        Me.btnEditar.Location = New System.Drawing.Point(4, 13)
        Me.btnEditar.Name = "btnEditar"
        Me.btnEditar.Size = New System.Drawing.Size(121, 23)
        Me.btnEditar.TabIndex = 2
        Me.btnEditar.Text = "Editar Documento"
        Me.btnEditar.UseVisualStyleBackColor = True
        '
        'lblAmbiente
        '
        Me.lblAmbiente.AutoSize = True
        Me.lblAmbiente.ForeColor = System.Drawing.Color.Red
        Me.lblAmbiente.Location = New System.Drawing.Point(588, 9)
        Me.lblAmbiente.Name = "lblAmbiente"
        Me.lblAmbiente.Size = New System.Drawing.Size(115, 13)
        Me.lblAmbiente.TabIndex = 0
        Me.lblAmbiente.Text = "Ambiente de Produção"
        Me.lblAmbiente.Visible = False
        '
        'TabPage4
        '
        Me.TabPage4.Controls.Add(Me.mmConverter)
        Me.TabPage4.Location = New System.Drawing.Point(4, 22)
        Me.TabPage4.Name = "TabPage4"
        Me.TabPage4.Size = New System.Drawing.Size(711, 369)
        Me.TabPage4.TabIndex = 3
        Me.TabPage4.Text = "Campos Formatados"
        Me.TabPage4.UseVisualStyleBackColor = True
        '
        'mmConverter
        '
        Me.mmConverter.Location = New System.Drawing.Point(0, 0)
        Me.mmConverter.Name = "mmConverter"
        Me.mmConverter.Size = New System.Drawing.Size(711, 373)
        Me.mmConverter.TabIndex = 0
        Me.mmConverter.Text = ""
        '
        'TabPage2
        '
        Me.TabPage2.Controls.Add(Me.mmXML)
        Me.TabPage2.Location = New System.Drawing.Point(4, 22)
        Me.TabPage2.Name = "TabPage2"
        Me.TabPage2.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage2.Size = New System.Drawing.Size(711, 369)
        Me.TabPage2.TabIndex = 1
        Me.TabPage2.Text = "XML"
        Me.TabPage2.UseVisualStyleBackColor = True
        '
        'mmXML
        '
        Me.mmXML.Location = New System.Drawing.Point(0, 0)
        Me.mmXML.Name = "mmXML"
        Me.mmXML.Size = New System.Drawing.Size(715, 373)
        Me.mmXML.TabIndex = 0
        Me.mmXML.Text = ""
        '
        'Tab
        '
        Me.Tab.Controls.Add(Me.tab1)
        Me.Tab.Controls.Add(Me.TabPage2)
        Me.Tab.Controls.Add(Me.tab3)
        Me.Tab.Controls.Add(Me.TabPage4)
        Me.Tab.Location = New System.Drawing.Point(0, 259)
        Me.Tab.Name = "Tab"
        Me.Tab.SelectedIndex = 0
        Me.Tab.Size = New System.Drawing.Size(719, 395)
        Me.Tab.TabIndex = 0
        '
        'tab1
        '
        Me.tab1.Controls.Add(Me.mmFormatado)
        Me.tab1.Location = New System.Drawing.Point(4, 22)
        Me.tab1.Name = "tab1"
        Me.tab1.Size = New System.Drawing.Size(711, 369)
        Me.tab1.TabIndex = 4
        Me.tab1.Text = "XML Formatado"
        Me.tab1.UseVisualStyleBackColor = True
        '
        'mmFormatado
        '
        Me.mmFormatado.Location = New System.Drawing.Point(0, 0)
        Me.mmFormatado.Name = "mmFormatado"
        Me.mmFormatado.Size = New System.Drawing.Size(715, 373)
        Me.mmFormatado.TabIndex = 1
        Me.mmFormatado.Text = ""
        '
        'tab3
        '
        Me.tab3.Controls.Add(Me.mmCSV)
        Me.tab3.Location = New System.Drawing.Point(4, 22)
        Me.tab3.Name = "tab3"
        Me.tab3.Size = New System.Drawing.Size(711, 369)
        Me.tab3.TabIndex = 5
        Me.tab3.Text = "CSV"
        Me.tab3.UseVisualStyleBackColor = True
        '
        'mmCSV
        '
        Me.mmCSV.Location = New System.Drawing.Point(-4, 0)
        Me.mmCSV.Name = "mmCSV"
        Me.mmCSV.Size = New System.Drawing.Size(715, 369)
        Me.mmCSV.TabIndex = 0
        Me.mmCSV.Text = ""
        '
        'FExemplo
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(717, 652)
        Me.Controls.Add(Me.lblAmbiente)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.TabControl2)
        Me.Controls.Add(Me.Tab)
        Me.Name = "FExemplo"
        Me.Text = "Tecnospeed NFSe"
        Me.TabControl2.ResumeLayout(False)
        Me.TabPage5.ResumeLayout(False)
        Me.GroupBox4.ResumeLayout(False)
        Me.GroupBox5.ResumeLayout(False)
        Me.GroupBox5.PerformLayout()
        Me.GroupBox3.ResumeLayout(False)
        Me.GroupBox3.PerformLayout()
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        Me.TabPage4.ResumeLayout(False)
        Me.TabPage2.ResumeLayout(False)
        Me.Tab.ResumeLayout(False)
        Me.tab1.ResumeLayout(False)
        Me.tab3.ResumeLayout(False)
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents TabControl2 As System.Windows.Forms.TabControl
    Friend WithEvents TabPage5 As System.Windows.Forms.TabPage
    Friend WithEvents GroupBox4 As System.Windows.Forms.GroupBox
    Friend WithEvents GroupBox5 As System.Windows.Forms.GroupBox
    Friend WithEvents rbAssincrono As System.Windows.Forms.RadioButton
    Friend WithEvents rbSincrono As System.Windows.Forms.RadioButton
    Friend WithEvents btnCancelar As System.Windows.Forms.Button
    Friend WithEvents btnConsultarNFSe As System.Windows.Forms.Button
    Friend WithEvents btnConsultarNFSeRPS As System.Windows.Forms.Button
    Friend WithEvents btnConsultarLote As System.Windows.Forms.Button
    Friend WithEvents btnEnviar As System.Windows.Forms.Button
    Friend WithEvents btnAssinar As System.Windows.Forms.Button
    Friend WithEvents btnXMLTx2 As System.Windows.Forms.Button
    Friend WithEvents btnLoadConfig As System.Windows.Forms.Button
    Friend WithEvents btnConfigIni As System.Windows.Forms.Button
    Friend WithEvents cbCertificado As System.Windows.Forms.ComboBox
    Friend WithEvents GroupBox3 As System.Windows.Forms.GroupBox
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents edtProtocolo As System.Windows.Forms.TextBox
    Friend WithEvents edtIM As System.Windows.Forms.TextBox
    Friend WithEvents edtCNPJ As System.Windows.Forms.TextBox
    Friend WithEvents edtCidade As System.Windows.Forms.TextBox
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents lblAmbiente As System.Windows.Forms.Label
    Friend WithEvents rbNFSe As System.Windows.Forms.RadioButton
    Friend WithEvents rbRPS As System.Windows.Forms.RadioButton
    Friend WithEvents cbEmail As System.Windows.Forms.CheckBox
    Friend WithEvents btnExportar As System.Windows.Forms.Button
    Friend WithEvents btnVisualizar As System.Windows.Forms.Button
    Friend WithEvents btnImprimir As System.Windows.Forms.Button
    Friend WithEvents btnEditar As System.Windows.Forms.Button
    Friend WithEvents TabPage4 As System.Windows.Forms.TabPage
    Friend WithEvents TabPage2 As System.Windows.Forms.TabPage
    Friend WithEvents mmXML As System.Windows.Forms.RichTextBox
    Friend WithEvents Tab As System.Windows.Forms.TabControl
    Friend WithEvents mmConverter As System.Windows.Forms.RichTextBox
    Friend WithEvents tab1 As System.Windows.Forms.TabPage
    Friend WithEvents tab3 As System.Windows.Forms.TabPage
    Friend WithEvents mmFormatado As System.Windows.Forms.RichTextBox
    Friend WithEvents mmCSV As System.Windows.Forms.RichTextBox

End Class
