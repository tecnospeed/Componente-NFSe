'Importando as bibliotecas para utilizar as funções de Ler e escrever no Ini (Windows)
Imports System
Imports System.IO
Imports System.Text
Imports System.Security
Imports NFSeConverterX
Imports NFSeX

Public Class FExemplo
    'Declarado Objeto pertencente a Classe que faz interação com servidores da Receita'
    Dim NFSe As NFSeX.spdNFSeX
    Dim ProxyNFSe As NFSeX.spdProxyNFSeX
    Dim DataSetX As NFSeDataSetX.spdNFSeDataSetX
    Dim Converter As NFSeConverterX.spdNFSeConverterX
    Dim ArqIni As String
    Dim CertificadoSelecionado As String
    Dim FModalResult As Integer


    '******************************************************************************************************
    '
    '          Declaração de funções externas
    '
    '******************************************************************************************************

    'Função para ler arquivos INI usando API window
    Private Declare Auto Function GetPrivateProfileString Lib "Kernel32" (ByVal lpAppName As String, ByVal lpKeyName As String, ByVal lpDefault As String, ByVal lpReturnedString As StringBuilder, ByVal nSize As Integer, ByVal lpFileName As String) As Integer

    'Função para gravar arquivos INI usando API windows
    Private Declare Auto Function WritePrivateProfileString Lib "Kernel32" (ByVal lpAppName As String, ByVal lpKeyName As String, ByVal lpString As String, ByVal lpFileName As String) As Integer
    'Mostra nos TextBox da tela os valores que foram carregados nas propriedades do componente
    Private Sub AtualizaInformacoesNaTela()

        'Configurações do Prestador
        cbCertificado.Text = NFSe.NomeCertificado
        edtCNPJ.Text = NFSe.CNPJ
        edtCidade.Text = NFSe.Cidade
        edtIM.Text = NFSe.InscricaoMunicipal

        'Configura o Ambiente de acordo com o selecionado na interface
        If (NFSe.Ambiente = 1) Then
            lblAmbiente.Visible = True
        Else
            lblAmbiente.Visible = False
        End If

    End Sub
    Public Property ModalResult() As Integer
        Get
            Return FModalResult
        End Get
        Set(ByVal value As Integer)
            FModalResult = value
        End Set
    End Property

    Private Sub EnableButton()
        'Função responsável por habilitar os botões da demo (Depois de configurar)

        btnXMLTx2.Enabled = True
        btnAssinar.Enabled = True
        btnEnviar.Enabled = True
        btnConsultarLote.Enabled = True
        btnCancelar.Enabled = True
        btnEditar.Enabled = True
        btnImprimir.Enabled = True
        btnExportar.Enabled = True
        btnVisualizar.Enabled = True
        btnConsultarNFSe.Enabled = True
        btnConsultarNFSeRPS.Enabled = True

    End Sub

    Private Sub DisableButton()
        'Função responsável por desabilitar os botões ao inicializar a demo (Antes de configurar)

        btnXMLTx2.Enabled = False
        btnAssinar.Enabled = False
        btnEnviar.Enabled = False
        btnConsultarLote.Enabled = False
        btnCancelar.Enabled = False
        btnEditar.Enabled = False
        btnImprimir.Enabled = False
        btnExportar.Enabled = False
        btnVisualizar.Enabled = False
        btnConsultarNFSe.Enabled = False
        btnConsultarNFSeRPS.Enabled = False

    End Sub

    Private Sub getRetornoEnvioSincrono(ByVal aXML As String)
        'Tratamento do Retorno do Envio Sincrono
        Dim i As Integer
        Dim txt_ As String

        txt_ = ""

        If Converter.ConverterRetEnvioSincronoNFSeTipo(aXML).Status = 1 Then
            txt_ = "Status : EM PROCESSAMENTO" & vbCrLf
        Else
            If Converter.ConverterRetEnvioSincronoNFSeTipo(aXML).Status = 2 Then
                txt_ = "Status : ERRO" & vbCrLf
                txt_ = txt_ + "Motivo: " + Converter.ConverterRetEnvioSincronoNFSeTipo(aXML).Motivo & vbCrLf
            Else
                For i = 0 To Converter.ConverterRetEnvioSincronoNFSeTipo(aXML).ListaDeNFes.Count - 1
                    txt_ = txt_ + "Status: SUCESSO" & vbCrLf
                    txt_ = txt_ + "CNPJ: " + Converter.ConverterRetEnvioSincronoNFSeTipo(aXML).ListaDeNFes.Item(i).Cnpj & vbCrLf
                    txt_ = txt_ + "Inscricao Municipal: " + Converter.ConverterRetEnvioSincronoNFSeTipo(aXML).ListaDeNFes.Item(i).InscMunicipal & vbCrLf
                    txt_ = txt_ + "Serie RPS: " + Converter.ConverterRetEnvioSincronoNFSeTipo(aXML).ListaDeNFes.Item(i).SerieRps & vbCrLf
                    txt_ = txt_ + "Número do RPS: " + Converter.ConverterRetEnvioSincronoNFSeTipo(aXML).ListaDeNFes.Item(i).NumeroRps & vbCrLf
                    txt_ = txt_ + "Número da NFS-e: " + Converter.ConverterRetEnvioSincronoNFSeTipo(aXML).ListaDeNFes.Item(i).NumeroNFSe & vbCrLf
                    txt_ = txt_ + "Data de Emissão: " + Converter.ConverterRetEnvioSincronoNFSeTipo(aXML).ListaDeNFes.Item(i).DataEmissaoNFSe & vbCrLf
                    txt_ = txt_ + "Código de Verificação: " + Converter.ConverterRetEnvioSincronoNFSeTipo(aXML).ListaDeNFes.Item(i).CodVerificacao & vbCrLf
                    txt_ = txt_ + "Sitiação: " + Converter.ConverterRetEnvioSincronoNFSeTipo(aXML).ListaDeNFes.Item(i).Situacao & vbCrLf
                    txt_ = txt_ + "Data de Cancelamento: " + Converter.ConverterRetEnvioSincronoNFSeTipo(aXML).ListaDeNFes.Item(i).DataCancelamento & vbCrLf
                    txt_ = txt_ + "Chave de Cancelamento: " + Converter.ConverterRetEnvioSincronoNFSeTipo(aXML).ListaDeNFes.Item(i).ChaveCancelamento & vbCrLf
                    txt_ = txt_ + "Tipo: " + Converter.ConverterRetEnvioSincronoNFSeTipo(aXML).ListaDeNFes.Item(i).Tipo & vbCrLf
                    txt_ = txt_ + "Motivo: " + Converter.ConverterRetEnvioSincronoNFSeTipo(aXML).Motivo & vbCrLf
                    txt_ = txt_ + "XML: " + Converter.ConverterRetEnvioSincronoNFSeTipo(aXML).ListaDeNFes.Item(i).Xml & vbCrLf
                    txt_ = txt_ + "=======================================================================================" & vbCrLf
                    txt_ = txt_ + "" & vbCrLf
                Next i
            End If
        End If

        mmConverter.Text = txt_
    End Sub

    Private Sub EnvioSincrono()
        Dim ArquivoLog_, XML_, XMLEscaped_ As String
        Dim fso_ As New OpenFileDialog()

        XML_ = ProxyNFSe.EnviarSincrono(mmXML.Text, "")

        mmXML.Text = XML_

        XMLEscaped_ = ProxyNFSe.ComponenteNFSe.ExtraNFSescapedContent(XML_)
        mmFormatado.Text = ProxyNFSe.ComponenteNFSe.ReformatXML(XMLEscaped_)

        ArquivoLog_ = ProxyNFSe.ComponenteNFSe.UltimoLogRecibo

        XML_ = My.Computer.FileSystem.ReadAllText(ArquivoLog_, System.Text.Encoding.Default)

        mmCSV.Text = Converter.ConverterRetEnvioSincronoNFSe(XML_, "")

        getRetornoEnvioSincrono(XML_)

        rbNFSe.Checked = True

        If (mmXML.Text.Contains("-1;")) Then
            mmFormatado.Text = "Envio Síncrono de RPS sem sucesso. A resposta do servidor está gravada no arquivo de log localizado em: " + ArquivoLog_
        End If

    End Sub
    Public Function DadosPreenchidos() As Boolean
        Dim Cidade_, CNPJ_ As String

        Cidade_ = Trim(NFSe.Cidade)
        CNPJ_ = Trim(NFSe.CNPJ)

        DadosPreenchidos = (Cidade_ <> "") And (CNPJ_ <> "")

        If DadosPreenchidos = False Then
            Err.Raise(1, "", "Favor configurar o componente antes de prosseguir!")
        End If

    End Function
    Private Sub getRetornoEnvio(ByVal aXML As String)
        Dim Ret_ As New spdRetEnvioNFSe
        Dim txt_ As String

        DadosPreenchidos()
        txt_ = ""
        Ret_ = Converter.ConverterRetEnvioNFSeTipo(aXML)

        Select Case Ret_.Status
            Case 0
                txt_ = "Status : SUCESSO" & vbCrLf
            Case 1
                txt_ = "Status : EM PROCESSAMENTO" & vbCrLf
            Case 2
                txt_ = "Status : ERRO" & vbCrLf
        End Select

        txt_ = txt_ + "Motivo: " + Ret_.Motivo & vbCrLf
        txt_ = txt_ + "Protocolo: " + Ret_.NumeroProtocolo & vbCrLf
        mmConverter.Text = txt_

        rbNFSe.Checked = True
    End Sub

    Private Sub EnvioAssincrono()
        Dim Protocolo_, Sub_, ArquivoLog_, XML_ As String

        Protocolo_ = ProxyNFSe.Enviar(mmXML.Text, "")
        Sub_ = Mid$(Protocolo_, 1, 3)

        mmFormatado.Text = ""

        ArquivoLog_ = ProxyNFSe.ComponenteNFSe.UltimoLogRecibo

        XML_ = My.Computer.FileSystem.ReadAllText(ArquivoLog_, System.Text.Encoding.Default)

        mmCSV.Text = Converter.ConverterRetEnvioNFSe(XML_, "")

        getRetornoEnvio(XML_)

        If Sub_ = "-1;" Then
            mmXML.Text = Protocolo_
            mmFormatado.Text = "Envio de RPS sem sucesso. A resposta do servidor está gravada no arquivo de log localizado em: " + ArquivoLog_
        Else
            mmFormatado.Text = "Protocolo = " + Protocolo_
            edtProtocolo.Text = Protocolo_
            mmXML.Text = Protocolo_
        End If


    End Sub


    'Função que escreve no Ini
    Private Sub writeIni(ByVal section$, ByVal chv$, ByVal variavel$)

        Dim nome_arquivo_ini As String = ArqIni
        WritePrivateProfileString(section$, chv$, variavel$, nome_arquivo_ini)

    End Sub

    Private Sub ConfigurarOpcoesEmail()
        NFSe.EmailServidorSmtp = "smtp.gmail.com"
        NFSe.EmailUsuario = "testenfse@gmail.com"
        NFSe.EmailSenha = "tecnospeed"
        NFSe.EmailRemetente = ""
        NFSe.EmailAutenticacao = True
        NFSe.EmailAssunto = "Teste de envio de email"
        NFSe.EmailMensagem = "Esta é uma mensagem teste"
    End Sub

    Private Sub EnviarEmail(ByVal aNomeArquivo As String)
        Dim Destino_ As String
        If cbEmail.Checked = True Then
            Destino_ = InputBox("Informe o email destinatário", "Envio de Email", "")
            If Destino_ <> "" Then
                If NFSe.EnviarEmail(Destino_, aNomeArquivo) = True Then
                    MsgBox("Email enviado com sucesso.")
                Else
                    MsgBox("Email não enviado.")
                End If
            End If
        End If
    End Sub

    Private Function getModoImpressao() As ModoImpressao
        If rbRPS.Checked = True Then
            getModoImpressao = ModoImpressao.printRPS

        ElseIf rbNFSe.Checked = True Then
            getModoImpressao = ModoImpressao.printNFSe
        End If
    End Function

    Private Sub ConfigurarImpressao(ByVal aXML As String)
        NFSe.Impressao_CriarDatasets(aXML)
        NFSe.Impressao_Configurar("BrasaoMunicipio", "")
        NFSe.Impressao_Configurar("LogotipoEmitente", "")
        NFSe.Impressao_Configurar("Titulo", "")
        NFSe.Impressao_Configurar("SecretariaResponsavel", "")
        NFSe.Impressao_Configurar("SubtituloNFSe", "")
        NFSe.Impressao_Configurar("SubtituloRPS", "")
        NFSe.Impressao_Configurar("ArquivoMunicipios", "Templates\Impressao\Municipios.txt")

        If ProxyNFSe.ComponenteNFSe.ImpressaoModo = ModoImpressao.printRPS Then

            ProxyNFSe.ComponenteNFSe.Impressao_First()
            Do While Not ProxyNFSe.ComponenteNFSe.Impressao_Eof
                ProxyNFSe.ComponenteNFSe.Impressao_Editar()
                NFSe.Impressao_SetCampo("NomeFantasiaPrestador", "NOME FANTASIA PRESTADOR")
                NFSe.Impressao_SetCampo("RazaoSocialPrestador", "RAZAO SOCIAL PRESTADOR")
                NFSe.Impressao_SetCampo("EnderecoPrestador", "ENDERECO TESTE PRESTADOR")
                NFSe.Impressao_SetCampo("UfPrestador", "MG")
                NFSe.Impressao_SetCampo("EmailPrestador", "comercial@tecnospeed.com.br")
                ProxyNFSe.ComponenteNFSe.Impressao_Salvar()
                ProxyNFSe.ComponenteNFSe.Impressao_Next()
            Loop
        End If
    End Sub

    Private Sub getRetornoCancelamento(ByVal aXML As String)
        Dim Ret_ As New spdRetCancelaNFSe
        Dim txt_ As String

        txt_ = ""

        Ret_ = Converter.ConverterRetCancelarNFSeTipo(aXML)
        mmConverter.Text = ""

        Select Case Ret_.Status
            Case 0
                txt_ = "Status: SUCESSO" & vbCrLf
            Case 1
                txt_ = "Status: EM PROCESSAMENTO" & vbCrLf
            Case 2
                txt_ = "Status: ERRO" & vbCrLf
                txt_ = txt_ + "Motivo: " + Ret_.Motivo & vbCrLf
        End Select

        mmConverter.Text = txt_ + "Data de Cancelamento: " + Ret_.DataCancelamento
    End Sub

    Private Sub getRetornoConsultarNFSe(ByVal aXML As String)
        Dim Ret_ As New spdRetConsultaNFSe
        Dim txt_ As String

        txt_ = ""

        Ret_ = Converter.ConverterRetConsultarNFSeTipo(aXML)
        mmConverter.Text = ""

        If Ret_.Status = 1 Then
            txt_ = "Status : EM PROCESSAMENTO" & vbCrLf
        Else
            If Ret_.Status = 2 Then
                txt_ = "Status : ERRO" & vbCrLf
                txt_ = txt_ + "Motivo: " + Ret_.Motivo & vbCrLf
            Else
                txt_ = "Status : SUCESSO" & vbCrLf
                txt_ = txt_ + "CNPJ: " + Ret_.Cnpj & vbCrLf
                txt_ = txt_ + "Inscricao Municipal: " + Ret_.InscMunicipal & vbCrLf
                txt_ = txt_ + "Serie do RPS: " + Ret_.SerieRps & vbCrLf
                txt_ = txt_ + "Número do RPS: " + Ret_.NumeroRps & vbCrLf
                txt_ = txt_ + "Número da NFS-e: " + Ret_.NumeroNFSe & vbCrLf
                txt_ = txt_ + "Data de Emissão: " + Ret_.DataEmissaoNFSe & vbCrLf
                txt_ = txt_ + "Código de Verificação: " + Ret_.CodVerificacao & vbCrLf
                txt_ = txt_ + "Situação: " + Ret_.Situacao & vbCrLf
                txt_ = txt_ + "Data de Cancelamento: " + Ret_.DataCancelamento & vbCrLf
                txt_ = txt_ + "Chave de Cancelamento: " + Ret_.ChaveCancelamento & vbCrLf
                txt_ = txt_ + "Tipo: " + Ret_.Tipo & vbCrLf
                txt_ = txt_ + "Motivo: " + Ret_.Motivo & vbCrLf
                txt_ = txt_ + "XML: " + Ret_.Xml
            End If
        End If

        mmConverter.Text = txt_
    End Sub

    Private Sub getRetornoConsultarNFSePorRPS(ByVal aXML As String)
        Dim Ret_ As New spdRetConsultaNFSe
        Dim txt_ As String

        txt_ = ""

        Ret_ = Converter.ConverterRetConsultarNFSePorRpsTipo(aXML)
        mmConverter.Text = ""

        If Ret_.Status = 2 Then
            txt_ = "Status : ERRO" & vbCrLf
            txt_ = txt_ + "Motivo: " + Ret_.Motivo & vbCrLf
        Else
            Select Case Ret_.Status
                Case 0
                    txt_ = "Status : SUCESSO" & vbCrLf
                Case 1
                    txt_ = "Status : EM PROCESSAMENTO" & vbCrLf
            End Select

            txt_ = txt_ + "CNPJ: " + Ret_.Cnpj & vbCrLf
            txt_ = txt_ + "Inscricao Municipal: " + Ret_.InscMunicipal & vbCrLf
            txt_ = txt_ + "Serie do RPS: " + Ret_.SerieRps & vbCrLf
            txt_ = txt_ + "Número do RPS: " + Ret_.NumeroRps & vbCrLf
            txt_ = txt_ + "Número da NFS-e: " + Ret_.NumeroNFSe & vbCrLf
            txt_ = txt_ + "Data de Emissão: " + Ret_.DataEmissaoNFSe & vbCrLf
            txt_ = txt_ + "Código de Verificação: " + Ret_.CodVerificacao & vbCrLf
            txt_ = txt_ + "Situação: " + Ret_.Situacao & vbCrLf
            txt_ = txt_ + "Data de Cancelamento: " + Ret_.DataCancelamento & vbCrLf
            txt_ = txt_ + "Chave de Cancelamento: " + Ret_.ChaveCancelamento & vbCrLf
            txt_ = txt_ + "Tipo: " + Ret_.Tipo & vbCrLf
            txt_ = txt_ + "Motivo: " + Ret_.Motivo & vbCrLf
            txt_ = txt_ + "XML: " + Ret_.Xml & vbCrLf
        End If

        mmConverter.Text = txt_
    End Sub

    Private Sub GetRetornoConsLote(ByVal aXML As String)
        Dim i As Integer
        Dim txt_ As String

        txt_ = ""

        If Converter.ConverterRetConsultarLoteNFSeTipo(aXML).Status = 1 Then
            txt_ = "Status : EM PROCESSAMENTO" & vbCrLf
        Else
            If Converter.ConverterRetConsultarLoteNFSeTipo(aXML).Status = 2 Then
                txt_ = "Status : ERRO" & vbCrLf
                txt_ = txt_ + "Motivo: " + Converter.ConverterRetConsultarLoteNFSeTipo(aXML).Motivo & vbCrLf
            Else
                For i = 0 To Converter.ConverterRetConsultarLoteNFSeTipo(aXML).ListaDeNFes.Count - 1
                    txt_ = txt_ + "Status: SUCESSO" & vbCrLf
                    txt_ = txt_ + "CNPJ: " + Converter.ConverterRetConsultarLoteNFSeTipo(aXML).ListaDeNFes.Item(i).Cnpj & vbCrLf
                    txt_ = txt_ + "Inscricao Municipal: " + Converter.ConverterRetConsultarLoteNFSeTipo(aXML).ListaDeNFes.Item(i).InscMunicipal & vbCrLf
                    txt_ = txt_ + "Serie RPS: " + Converter.ConverterRetConsultarLoteNFSeTipo(aXML).ListaDeNFes.Item(i).SerieRps & vbCrLf
                    txt_ = txt_ + "Número do RPS: " + Converter.ConverterRetConsultarLoteNFSeTipo(aXML).ListaDeNFes.Item(i).NumeroRps & vbCrLf
                    txt_ = txt_ + "Número da NFS-e: " + Converter.ConverterRetConsultarLoteNFSeTipo(aXML).ListaDeNFes.Item(i).NumeroNFSe & vbCrLf
                    txt_ = txt_ + "Data de Emissão: " + Converter.ConverterRetConsultarLoteNFSeTipo(aXML).ListaDeNFes.Item(i).DataEmissaoNFSe & vbCrLf
                    txt_ = txt_ + "Código de Verificação: " + Converter.ConverterRetConsultarLoteNFSeTipo(aXML).ListaDeNFes.Item(i).CodVerificacao & vbCrLf
                    txt_ = txt_ + "Sitiação: " + Converter.ConverterRetConsultarLoteNFSeTipo(aXML).ListaDeNFes.Item(i).Situacao & vbCrLf
                    txt_ = txt_ + "Data de Cancelamento: " + Converter.ConverterRetConsultarLoteNFSeTipo(aXML).ListaDeNFes.Item(i).DataCancelamento & vbCrLf
                    txt_ = txt_ + "Chave de Cancelamento: " + Converter.ConverterRetConsultarLoteNFSeTipo(aXML).ListaDeNFes.Item(i).ChaveCancelamento & vbCrLf
                    txt_ = txt_ + "Tipo: " + Converter.ConverterRetConsultarLoteNFSeTipo(aXML).ListaDeNFes.Item(i).Tipo & vbCrLf
                    txt_ = txt_ + "Motivo: " + Converter.ConverterRetConsultarLoteNFSeTipo(aXML).Motivo & vbCrLf
                    txt_ = txt_ + "XML: " + Converter.ConverterRetConsultarLoteNFSeTipo(aXML).ListaDeNFes.Item(i).Xml & vbCrLf
                    txt_ = txt_ + "=======================================================================================" & vbCrLf
                    txt_ = txt_ + "" & vbCrLf
                Next i
            End If
        End If

        mmConverter.Text = txt_
    End Sub

    Private Sub FExemplo_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Dim i As Integer
        Dim vetor As Object

        FModalResult = 0

        'Instancia o Objeto responsável pela interação com servidores da Receita
        NFSe = New NFSeX.spdNFSeX

        'Instancia o Objeto responsável pela geração do XML via DataSet
        DataSetX = New NFSeDataSetX.spdNFSeDataSetX

        Converter = New NFSeConverterX.spdNFSeConverterX

        ProxyNFSe = New NFSeX.spdProxyNFSeX
        ProxyNFSe.ComponenteNFSe = NFSe

        NFSe.ConfigurarSoftwareHouse("08187168000160", "")

        'Utiliza Método do Componente para Listar Certificados instalado no SO

        vetor = Split(NFSe.ListarCertificados, "|")

        cbCertificado.Items.Clear()

        For i = LBound(vetor) To UBound(vetor)
            cbCertificado.Items.Add(vetor(i))
        Next

        'Arquivo INI a ser manipulado com parametrizações
        ArqIni = Application.StartupPath + "\nfseConfig.ini"
        DisableButton()

        On Error GoTo TrataErroConfigLoad

        Exit Sub

TrataErroConfigLoad:
        'Apresenta o erro ocorrido
        MsgBox(Err.Description)
    End Sub

    Private Sub btnConfigIni_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnConfigIni.Click

        If (Trim(cbCertificado.Text) <> "") Then
            'Abre o arquivo ini localizado na pasta raiz da aplicação
            writeIni("NFSE", "NomeCertificado", cbCertificado.Text)
        End If
        'Abre o ini do NFSe no bloco de notas
        Shell("C:\Windows\System32\notepad.exe " + Application.StartupPath + "\nfseConfig.ini", vbNormalFocus)

    End Sub

    Private Sub btnLoadConfig_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnLoadConfig.Click
        'Esse método faz com que o Componente carregue as configuracoes do INI para as devidas propriedades
        NFSe.LoadConfig(ArqIni)
        NFSe.RemoverAcentos = False

        Converter.DiretorioEsquemas = NFSe.DiretorioEsquemas
        Converter.DiretorioScripts = "C:\Program Files\TecnoSpeed\NFSe\Arquivos\Scripts"
        Converter.Cidade = NFSe.Cidade

        On Error GoTo TrataErroConfigIni

        'Mostra as informações de configuração na tela
        AtualizaInformacoesNaTela()

        'Habilita as demais funcionalidades
        EnableButton()

        Exit Sub
        'Tratamento, caso ocorra algum erro
TrataErroConfigIni:
        MsgBox(Err.Description)
    End Sub

    Private Sub btnXMLTx2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnXMLTx2.Click
        Dim saveFileDialog1 As New OpenFileDialog()
        Dim Extras, XML_ As String

        'define as propriedades do controle

        'OpenFileDialog

        saveFileDialog1.Multiselect = True

        saveFileDialog1.Title = "Selecionar Arquivos"

        saveFileDialog1.InitialDirectory = Application.StartupPath

        'Filtra para exibir somente arquivos de imagens

        saveFileDialog1.Filter = "Texts (*.txt;*.csv)|*.txt;*.csv|" & "All files (*.*)|*.*"

        saveFileDialog1.CheckFileExists = True

        saveFileDialog1.CheckPathExists = True

        saveFileDialog1.FilterIndex = 2

        saveFileDialog1.RestoreDirectory = True

        saveFileDialog1.ReadOnlyChecked = True

        saveFileDialog1.ShowReadOnly = True

        Dim dr As DialogResult = saveFileDialog1.ShowDialog()

        If dr = System.Windows.Forms.DialogResult.OK Then

            ' Le o arquivo selecionados

            For Each arquivo As [String] In saveFileDialog1.FileNames

                Try
                    If (rbSincrono.Checked = True) Then
                        Extras = "EnvioSincrono=true"
                    Else
                        Extras = ""
                    End If

                    XML_ = Converter.ConverterEnvioNFSe(arquivo, Extras)
                    mmXML.Text = XML_
                    mmFormatado.Text = NFSe.ReformatXML(XML_)
                    mmCSV.Text = ""
                    mmConverter.Text = ""

                    rbRPS.Checked = True
                Catch ex As SecurityException

                    ' O usuário  não possui permissão para ler arquivos

                    MessageBox.Show(ex.Message)

                Catch ex As Exception

                    ' Não pode carregar o arquivo (problemas de permissão)

                    MessageBox.Show(ex.Message)

                End Try

            Next

        End If
    End Sub

    Private Sub btnAssinar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnAssinar.Click
        Dim XMLEnvio As String
        Dim ValorRetorno As String

        On Error GoTo AssinarErro

        XMLEnvio = mmXML.Text
        'Assina o XML do NFSe em questão
        ValorRetorno = ProxyNFSe.Assinar(XMLEnvio, "")

        'Popula o Memo com o xml de Envio assinado do NFSe
        mmXML.Text = ValorRetorno
        mmFormatado.Text = NFSe.ReformatXML(ValorRetorno)

        Exit Sub
AssinarErro:

        'Apresenta o erro ocorrido
        MsgBox(Err.Description)
    End Sub

    Private Sub btnEnviar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnEnviar.Click
        If (rbSincrono.Checked) Then
            EnvioSincrono()
        Else
            EnvioAssincrono()
        End If
    End Sub

    Private Sub btnConsultarLote_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnConsultarLote.Click
        Dim XML_, XMLEscaped_ As String

        DadosPreenchidos()
        XML_ = ProxyNFSe.ConsultarLote(edtProtocolo.Text, "")

        mmXML.Text = XML_

        XMLEscaped_ = ProxyNFSe.ComponenteNFSe.ExtraNFSescapedContent(XML_)
        mmFormatado.Text = ProxyNFSe.ComponenteNFSe.ReformatXML(XMLEscaped_)

        mmCSV.Text = ""
        mmCSV.Text = Converter.ConverterRetConsultarLoteNFSe(XML_, "")

        GetRetornoConsLote(XML_)
        rbRPS.Checked = True
    End Sub

    Private Sub btnConsultarNFSeRPS_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnConsultarNFSeRPS.Click
        Dim XML_, nRPS, SerieRPS, TipoRPS As String
        FConsulta.ShowDialog()
        nRPS = FConsulta.edtnrps.Text
        SerieRPS = FConsulta.edtsrps.Text
        TipoRPS = FConsulta.edttrps.Text

        XML_ = ProxyNFSe.ConsultarNFSePorRps(nRPS, SerieRPS, TipoRPS, "")
        mmFormatado.Text = ProxyNFSe.ComponenteNFSe.ReformatXML(XML_)
        mmXML.Text = XML_
        mmCSV.Text = ""

        mmCSV.Text = Converter.ConverterRetConsultarNFSePorRPS(XML_, "")

        getRetornoConsultarNFSePorRPS(XML_)

        rbRPS.Checked = True

    End Sub

    Private Sub btnConsultarNFSe_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnConsultarNFSe.Click
        Dim NumNFSE_, XML_ As String

        DadosPreenchidos()
        NumNFSE_ = InputBox("Consulta NFSe", "Digite o número da NFSe", "")

        If NumNFSE_ <> "" Then
            XML_ = ProxyNFSe.ConsultarNota(NumNFSE_, "")
            mmFormatado.Text = ProxyNFSe.ComponenteNFSe.ReformatXML(XML_)
            mmXML.Text = XML_

            mmCSV.Text = ""
            mmCSV.Text = Converter.ConverterRetConsultarNFSe(XML_, "")

            getRetornoConsultarNFSe(XML_)

            rbNFSe.Checked = True
        End If
    End Sub

    Private Sub btnCancelar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnCancelar.Click
        Dim NumNFSE_, XML_ As String

        DadosPreenchidos()
        NumNFSE_ = InputBox("CANCELAR NFSe", "Digite o número da NFSe", "")

        If NumNFSE_ <> "" Then
            XML_ = ProxyNFSe.CancelarNota(NumNFSE_, "")
            mmFormatado.Text = ProxyNFSe.ComponenteNFSe.ReformatXML(XML_)
            mmXML.Text = XML_
            mmCSV.Text = Converter.ConverterRetCancelarNFSe(XML_, "")

            getRetornoCancelamento(XML_)
        End If
    End Sub

    Private Sub btnEditar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnEditar.Click
        Dim XML_ As String

        DadosPreenchidos()
        XML_ = mmXML.Text
        ProxyNFSe.ComponenteNFSe.ImpressaoModo = getModoImpressao()
        ConfigurarImpressao(XML_)
        ProxyNFSe.ComponenteNFSe.Impressao_EditarDocumento()
    End Sub

    Private Sub btnImprimir_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnImprimir.Click
        Dim XML_ As String

        DadosPreenchidos()
        XML_ = mmXML.Text
        ProxyNFSe.ComponenteNFSe.ImpressaoModo = getModoImpressao()
        ConfigurarImpressao(XML_)
        ProxyNFSe.ComponenteNFSe.Impressao_ImprimirDocumentoCustom("", "", "")
    End Sub

    Private Sub btnVisualizar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnVisualizar.Click
        Dim XML_ As String

        DadosPreenchidos()
        XML_ = mmXML.Text
        ProxyNFSe.ComponenteNFSe.ImpressaoModo = getModoImpressao()
        ConfigurarImpressao(XML_)
        ProxyNFSe.ComponenteNFSe.Impressao_VisualizarDocumentoCustom("", "")
    End Sub

    Private Sub btnExportar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnExportar.Click
        Dim XML_, CaminhoArquivoPDF As String

        XML_ = mmXML.Text
        ProxyNFSe.ComponenteNFSe.ImpressaoModo = getModoImpressao()
        ConfigurarImpressao(XML_)

        CaminhoArquivoPDF = InputBox("Caminho do arquivo PDF", "Informe o caminho do arquivo PDF", "C:\Program Files\TecnoSpeed\NFSe\Impressao.PDF")

        If CaminhoArquivoPDF <> "" Then
            ProxyNFSe.ComponenteNFSe.Impressao_ExportarDocumentoParaPDFCustom("", "", CaminhoArquivoPDF)
        End If

        ConfigurarOpcoesEmail()
        EnviarEmail(CaminhoArquivoPDF)

    End Sub
End Class

