VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Exemplo NFSe V2"
   ClientHeight    =   9885
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   9990
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   868.634
   ScaleMode       =   0  'User
   ScaleWidth      =   9990
   StartUpPosition =   3  'Windows Default
   Begin TabDlg.SSTab SSTab2 
      Height          =   5295
      Left            =   0
      TabIndex        =   1
      Top             =   4560
      Width           =   9975
      _ExtentX        =   17595
      _ExtentY        =   9340
      _Version        =   393216
      Tabs            =   4
      Tab             =   3
      TabHeight       =   520
      TabCaption(0)   =   "XML envio, somente para impressão"
      TabPicture(0)   =   "frmExemploNFSeV2.frx":0000
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "mmXMLEnvio"
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "XML"
      TabPicture(1)   =   "frmExemploNFSeV2.frx":001C
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "mmXML"
      Tab(1).ControlCount=   1
      TabCaption(2)   =   "JSON"
      TabPicture(2)   =   "frmExemploNFSeV2.frx":0038
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "mmJSON"
      Tab(2).ControlCount=   1
      TabCaption(3)   =   "Campos Formatados"
      TabPicture(3)   =   "frmExemploNFSeV2.frx":0054
      Tab(3).ControlEnabled=   -1  'True
      Tab(3).Control(0)=   "mmTipado"
      Tab(3).Control(0).Enabled=   0   'False
      Tab(3).ControlCount=   1
      Begin RichTextLib.RichTextBox mmXMLEnvio 
         Height          =   4455
         Left            =   -74880
         TabIndex        =   33
         Top             =   735
         Width           =   9615
         _ExtentX        =   16960
         _ExtentY        =   7858
         _Version        =   393217
         TextRTF         =   $"frmExemploNFSeV2.frx":0070
      End
      Begin RichTextLib.RichTextBox mmXML 
         Height          =   4455
         Left            =   -74880
         TabIndex        =   34
         Top             =   735
         Width           =   9615
         _ExtentX        =   16960
         _ExtentY        =   7858
         _Version        =   393217
         TextRTF         =   $"frmExemploNFSeV2.frx":00F2
      End
      Begin RichTextLib.RichTextBox mmJSON 
         Height          =   4455
         Left            =   -74880
         TabIndex        =   35
         Top             =   720
         Width           =   9615
         _ExtentX        =   16960
         _ExtentY        =   7858
         _Version        =   393217
         TextRTF         =   $"frmExemploNFSeV2.frx":0174
      End
      Begin RichTextLib.RichTextBox mmTipado 
         Height          =   4455
         Left            =   120
         TabIndex        =   36
         Top             =   720
         Width           =   9615
         _ExtentX        =   16960
         _ExtentY        =   7858
         _Version        =   393217
         TextRTF         =   $"frmExemploNFSeV2.frx":01F6
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4575
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   9975
      _ExtentX        =   17595
      _ExtentY        =   8070
      _Version        =   393216
      Tabs            =   4
      TabsPerRow      =   4
      TabHeight       =   520
      TabCaption(0)   =   "Autorizações e consultas"
      TabPicture(0)   =   "frmExemploNFSeV2.frx":0278
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Label5"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Label6"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Frame1"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "edtCNPJSoftwarehouse"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "edtTokenSH"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).Control(5)=   "Frame2"
      Tab(0).Control(5).Enabled=   0   'False
      Tab(0).Control(6)=   "cdCarregarTX2"
      Tab(0).Control(6).Enabled=   0   'False
      Tab(0).ControlCount=   7
      TabCaption(1)   =   "Testando Impressão"
      TabPicture(1)   =   "frmExemploNFSeV2.frx":0294
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame3"
      Tab(1).ControlCount=   1
      TabCaption(2)   =   "Consultar Notas Tomadas"
      TabPicture(2)   =   "frmExemploNFSeV2.frx":02B0
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Frame5"
      Tab(2).ControlCount=   1
      TabCaption(3)   =   "Cidades Homologadas"
      TabPicture(3)   =   "frmExemploNFSeV2.frx":02CC
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "btnCidadesHomologadas"
      Tab(3).ControlCount=   1
      Begin MSComDlg.CommonDialog cdCarregarTX2 
         Left            =   9360
         Top             =   960
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.CommandButton btnCidadesHomologadas 
         Caption         =   "Listar Cidades Homologadas"
         Height          =   495
         Left            =   -74520
         TabIndex        =   64
         Top             =   720
         Width           =   3135
      End
      Begin VB.Frame Frame5 
         Caption         =   "Dados para Consulta"
         Height          =   4095
         Left            =   -74880
         TabIndex        =   46
         Top             =   360
         Width           =   9735
         Begin VB.CommandButton btnConsultarNotasTomadas 
            Caption         =   "Consultar Notas Tomadas"
            Height          =   615
            Left            =   6240
            TabIndex        =   63
            Top             =   3120
            Width           =   3015
         End
         Begin VB.TextBox edtPagina 
            Height          =   285
            Left            =   3600
            TabIndex        =   62
            Top             =   2520
            Width           =   2895
         End
         Begin VB.TextBox edtDataFinal 
            Height          =   285
            Left            =   3600
            TabIndex        =   61
            Top             =   1920
            Width           =   2895
         End
         Begin VB.TextBox edtDataInicial 
            Height          =   285
            Left            =   3600
            TabIndex        =   60
            Top             =   1320
            Width           =   2895
         End
         Begin VB.TextBox edtIncMunPrestadorConsulente 
            Height          =   285
            Left            =   3600
            TabIndex        =   59
            Top             =   720
            Width           =   2895
         End
         Begin VB.TextBox edtDocTomadorConsulente 
            Height          =   285
            Left            =   240
            TabIndex        =   58
            Top             =   2520
            Width           =   2775
         End
         Begin VB.TextBox edtIMTomador 
            Height          =   285
            Left            =   240
            TabIndex        =   57
            Top             =   1920
            Width           =   2775
         End
         Begin VB.TextBox edtDocumentoTomador 
            Height          =   285
            Left            =   240
            TabIndex        =   56
            Top             =   1320
            Width           =   2775
         End
         Begin VB.TextBox edtNomeCidade 
            Height          =   285
            Left            =   240
            TabIndex        =   55
            Top             =   720
            Width           =   2775
         End
         Begin VB.Label Label20 
            Caption         =   "Pagina"
            Height          =   255
            Left            =   3600
            TabIndex        =   54
            Top             =   2280
            Width           =   1695
         End
         Begin VB.Label Label19 
            Caption         =   "Data Final yyyy-mm-dd"
            Height          =   255
            Left            =   3600
            TabIndex        =   53
            Top             =   1680
            Width           =   1695
         End
         Begin VB.Label Label18 
            Caption         =   "Data Inicial yyyy-mm-dd"
            Height          =   255
            Left            =   3600
            TabIndex        =   52
            Top             =   1080
            Width           =   1815
         End
         Begin VB.Label Label17 
            Caption         =   "Inc. Mun. Prestador/Consulente"
            Height          =   255
            Left            =   3600
            TabIndex        =   51
            Top             =   480
            Width           =   2775
         End
         Begin VB.Label Label16 
            Caption         =   "Documento Tomador/Consulente"
            Height          =   375
            Left            =   240
            TabIndex        =   50
            Top             =   2280
            Width           =   3135
         End
         Begin VB.Label Label15 
            Caption         =   "Inscrição Municipal do Tomador"
            Height          =   255
            Left            =   240
            TabIndex        =   49
            Top             =   1680
            Width           =   2895
         End
         Begin VB.Label Label14 
            Caption         =   "DocumentoTomador"
            Height          =   255
            Left            =   240
            TabIndex        =   48
            Top             =   1080
            Width           =   1815
         End
         Begin VB.Label Label13 
            Caption         =   "Nome da Cidade"
            Height          =   255
            Left            =   240
            TabIndex        =   47
            Top             =   480
            Width           =   1695
         End
      End
      Begin VB.Frame Frame3 
         Caption         =   "Configurações"
         Height          =   4095
         Left            =   -74880
         TabIndex        =   37
         Top             =   360
         Width           =   9735
         Begin VB.Frame Frame4 
            Height          =   1695
            Left            =   240
            TabIndex        =   40
            Top             =   1200
            Width           =   4215
            Begin VB.CheckBox cbEnviarEmail 
               Caption         =   "Enviar por Email"
               Height          =   255
               Left            =   120
               TabIndex        =   45
               Top             =   1320
               Width           =   2055
            End
            Begin VB.CommandButton edtVisualizar 
               Caption         =   "Visualizar"
               Height          =   375
               Left            =   2160
               TabIndex        =   44
               Top             =   840
               Width           =   1935
            End
            Begin VB.CommandButton edtExportarPDF 
               Caption         =   "Exportar PDF"
               Height          =   375
               Left            =   120
               TabIndex        =   43
               Top             =   840
               Width           =   1935
            End
            Begin VB.CommandButton btnEditarDoc 
               Caption         =   "Editar RTM"
               Height          =   375
               Left            =   2160
               TabIndex        =   42
               Top             =   240
               Width           =   1935
            End
            Begin VB.CommandButton btnImprimir 
               Caption         =   "&Imprimir"
               Height          =   375
               Left            =   120
               TabIndex        =   41
               Top             =   240
               Width           =   1935
            End
         End
         Begin VB.TextBox edtLogotipoEmitente 
            Height          =   285
            Left            =   120
            TabIndex        =   39
            Top             =   720
            Width           =   7815
         End
         Begin VB.Label Label12 
            Caption         =   "Logotipo Emitente"
            Height          =   255
            Left            =   120
            TabIndex        =   38
            Top             =   360
            Width           =   2055
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "Operações"
         Height          =   3255
         Left            =   3360
         TabIndex        =   16
         Top             =   1100
         Width           =   6495
         Begin VB.CommandButton btnEnviarRPS 
            Caption         =   "&3. Enviar RPS"
            Height          =   495
            Left            =   120
            TabIndex        =   20
            Top             =   1800
            Width           =   3015
         End
         Begin VB.CommandButton btnLoadConfig 
            Caption         =   "&2. Load Config"
            Height          =   495
            Left            =   120
            TabIndex        =   19
            Top             =   1320
            Width           =   3015
         End
         Begin VB.CommandButton Command1 
            Caption         =   "&1.Configurar INI"
            Height          =   495
            Left            =   120
            TabIndex        =   66
            Top             =   840
            Width           =   3015
         End
         Begin VB.TextBox edtTipoRPS 
            Height          =   285
            Left            =   4200
            TabIndex        =   32
            Top             =   2760
            Width           =   2055
         End
         Begin VB.TextBox edtSerieRPS 
            Height          =   285
            Left            =   4200
            TabIndex        =   30
            Top             =   2400
            Width           =   2055
         End
         Begin VB.TextBox edtNumeroRPS 
            Height          =   285
            Left            =   4200
            TabIndex        =   28
            Top             =   2040
            Width           =   2055
         End
         Begin VB.TextBox edtChaveCancelamento 
            Height          =   285
            Left            =   1680
            TabIndex        =   26
            Top             =   2760
            Width           =   1455
         End
         Begin VB.TextBox EdtNumeroNFSe 
            Height          =   285
            Left            =   1200
            TabIndex        =   24
            Top             =   2400
            Width           =   1935
         End
         Begin VB.CommandButton BtnCancelarNFSe 
            Caption         =   "&5. Cancelar NFSe"
            Height          =   495
            Left            =   3240
            TabIndex        =   22
            Top             =   1320
            Width           =   3135
         End
         Begin VB.CommandButton btnConsultarNota 
            Caption         =   "&4. Consultar Nota"
            Height          =   495
            Left            =   3240
            TabIndex        =   21
            Top             =   840
            Width           =   3135
         End
         Begin VB.ComboBox cbNomeCertificado 
            Height          =   315
            Left            =   120
            TabIndex        =   17
            Top             =   480
            Width           =   6255
         End
         Begin VB.Label Label11 
            Alignment       =   1  'Right Justify
            Caption         =   "Tipo RPS:"
            Height          =   255
            Left            =   3360
            TabIndex        =   31
            Top             =   2760
            Width           =   855
         End
         Begin VB.Label lblSerieRPS 
            Alignment       =   1  'Right Justify
            Caption         =   "Série RPS:"
            Height          =   255
            Left            =   3360
            TabIndex        =   29
            Top             =   2400
            Width           =   855
         End
         Begin VB.Label Label10 
            Caption         =   "Numero RPS:"
            Height          =   255
            Left            =   3240
            TabIndex        =   27
            Top             =   2040
            Width           =   975
         End
         Begin VB.Label Label9 
            Caption         =   "Chave Cancelamento:"
            Height          =   255
            Left            =   120
            TabIndex        =   25
            Top             =   2760
            Width           =   2175
         End
         Begin VB.Label Label8 
            Caption         =   "Numero NFSe:"
            Height          =   255
            Left            =   120
            TabIndex        =   23
            Top             =   2400
            Width           =   1335
         End
         Begin VB.Label Label7 
            Caption         =   "Certificado"
            Height          =   255
            Left            =   120
            TabIndex        =   18
            Top             =   240
            Width           =   2415
         End
      End
      Begin VB.TextBox edtTokenSH 
         Height          =   285
         Left            =   6000
         TabIndex        =   15
         Top             =   740
         Width           =   3735
      End
      Begin VB.TextBox edtCNPJSoftwarehouse 
         Height          =   285
         Left            =   3480
         TabIndex        =   13
         Text            =   "00000000000000"
         Top             =   740
         Width           =   2175
      End
      Begin VB.Frame Frame1 
         Caption         =   "Configurações"
         Height          =   3975
         Left            =   120
         TabIndex        =   2
         Top             =   380
         Width           =   3135
         Begin VB.CommandButton btnArquivosCidades 
            Caption         =   "Atualizar Arquivos Cidades"
            Height          =   495
            Left            =   360
            TabIndex        =   11
            Top             =   2880
            Width           =   2295
         End
         Begin VB.TextBox edtNumProtocolo 
            Height          =   285
            Left            =   120
            TabIndex        =   9
            Top             =   2400
            Width           =   2775
         End
         Begin VB.TextBox edtInscMunicipal 
            Height          =   285
            Left            =   120
            TabIndex        =   8
            Top             =   1800
            Width           =   2775
         End
         Begin VB.TextBox edtCNPJ 
            Height          =   285
            Left            =   120
            TabIndex        =   6
            Top             =   1200
            Width           =   2775
         End
         Begin VB.TextBox edtCidade 
            Height          =   285
            Left            =   120
            TabIndex        =   4
            Top             =   600
            Width           =   2775
         End
         Begin VB.Label lblAmbiente 
            Caption         =   "Ambiente de Produção"
            ForeColor       =   &H000000FF&
            Height          =   255
            Left            =   240
            TabIndex        =   65
            Top             =   3600
            Width           =   2535
         End
         Begin VB.Label Label4 
            Caption         =   "Número do Protocolo"
            Height          =   255
            Left            =   120
            TabIndex        =   10
            Top             =   2160
            Width           =   2775
         End
         Begin VB.Label Label3 
            Caption         =   "Inscrição Municipal"
            Height          =   255
            Left            =   120
            TabIndex        =   7
            Top             =   1560
            Width           =   2775
         End
         Begin VB.Label Label2 
            Caption         =   "CNPJ"
            Height          =   255
            Left            =   120
            TabIndex        =   5
            Top             =   960
            Width           =   855
         End
         Begin VB.Label Label1 
            Caption         =   "Cidade"
            Height          =   255
            Left            =   120
            TabIndex        =   3
            Top             =   360
            Width           =   855
         End
      End
      Begin VB.Label Label6 
         Caption         =   "Token SoftwareHouse"
         Height          =   255
         Left            =   6000
         TabIndex        =   14
         Top             =   500
         Width           =   3255
      End
      Begin VB.Label Label5 
         Caption         =   "CNPJ SoftwareHouse"
         Height          =   255
         Left            =   3480
         TabIndex        =   12
         Top             =   500
         Width           =   1695
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim spdNFSe As NFSeX.spdNFSeX
Dim spdNFSeDataSet As NFSeDataSetX.spdNFSeDataSetX
Dim ArqINI As String

'Função para ler arquivos INI usando API windows.
Private Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal Secao As String, ByVal parametro As Any, ByVal padrao As String, ByVal variavel As String, ByVal tam As Long, ByVal arquivo As String) As Long
'Função para gravar arquivos INI usando API windows.
Private Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal Secao As String, ByVal parametro As Any, ByVal valor As Any, ByVal arquivo As String) As Long

Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long

' Função para ler o arquivo Ini.
Function get_ini(seção$, Chave$) As String
    arquiv$ = ArqINI
    Returns$ = Space$(280)
    X% = GetPrivateProfileString(ByVal seção$, ByVal Chave$, _
    "", Returns$, Len(Returns$), ByVal arquiv$)
    get_ini = Left$(Returns$, X%)
End Function
 
' Função para escrever no arquivo Ini.
Function write_ini(ByVal section$, ByVal chv$, ByVal variavel$) As String
    arquiv$ = ArqINI
    iRet = WritePrivateProfileString(ByVal section$, ByVal chv$, ByVal variavel$, ByVal arquiv$)
End Function

Public Function DadosPreenchidos() As Boolean
    Dim Cidade_, CNPJ_ As String
    
    Cidade_ = Trim(spdNFSe.Cidade)
    CNPJ_ = Trim(spdNFSe.CNPJ)
    
    DadosPreenchidos = (Cidade_ <> "") And (CNPJ_ <> "")
    
    If DadosPreenchidos = False Then
        Err.Raise 1, "", "Favor configurar o componente antes de prosseguir!"
    End If
    
End Function

Private Sub IncluirLinha(ByVal MemoAux As RichTextBox, ByVal pTexto As String)
    MemoAux.Text = MemoAux.Text & (pTexto) & vbCrLf
End Sub

Private Sub RetornoV2Json()
    mmJSON.Text = ""
    mmJSON.Text = spdNFSe.RetornoWS.Json
End Sub

Private Sub RetornoV2Tipado()
    Dim vTotal As Integer
    
    SSTab2.TabIndex = 3
            
    mmTipado.Text = ""
    
    vTotal = spdNFSe.RetornoWS.Count
    
    For i = 0 To vTotal - 1
       IncluirLinha mmTipado, "Status: " + spdNFSe.RetornoWS.Items(i).Status
       
       If (spdNFSe.RetornoWS.Items(i).Status = "EMPROCESSAMENTO") Then
          IncluirLinha mmTipado, "Protocolo: " + spdNFSe.RetornoWS.Items(i).Protocolo
          If (vNFSe.RetornoWS.Items(i).Protocolo <> "") Then
             edtNumProtocolo.Text = spdNFSe.RetornoWS.Items(i).Protocolo
          End If
       ElseIf (spdNFSe.RetornoWS.Items(i).Status = "ERRO") Then
          IncluirLinha mmTipado, "Motivo: " + spdNFSe.RetornoWS.Items(i).Motivo
       Else
          IncluirLinha mmTipado, "Protocolo: " + spdNFSe.RetornoWS.Items(i).Protocolo
          IncluirLinha mmTipado, "CNPJ: " + spdNFSe.RetornoWS.Items(i).CNPJ
          IncluirLinha mmTipado, "Inscricao Municipal: " + spdNFSe.RetornoWS.Items(i).InscricaoMunicipal
          IncluirLinha mmTipado, "Serie do RPS: " + spdNFSe.RetornoWS.Items(i).SerieRps
          IncluirLinha mmTipado, "Número do RPS: " + spdNFSe.RetornoWS.Items(i).NumeroRps
          IncluirLinha mmTipado, "Número da NFS-e: " + spdNFSe.RetornoWS.Items(i).NumeroNFSe
          IncluirLinha mmTipado, "Data de Emissão: " + spdNFSe.RetornoWS.Items(i).DataEmissaoNFSe
          IncluirLinha mmTipado, "Código de Verificação: " + spdNFSe.RetornoWS.Items(i).CodVerificacao
          IncluirLinha mmTipado, "Situação: " + spdNFSe.RetornoWS.Items(i).Situacao
          IncluirLinha mmTipado, "Data De Cancelamento: " + spdNFSe.RetornoWS.Items(i).DataCancelamento
          IncluirLinha mmTipado, "Chave de Cancelamento: " + spdNFSe.RetornoWS.Items(i).ChaveCancelamento
          IncluirLinha mmTipado, "Tipo: " + spdNFSe.RetornoWS.Items(i).Tipo
          IncluirLinha mmTipado, "Motivo: " + spdNFSe.RetornoWS.Items(i).Motivo
          IncluirLinha mmTipado, "XML: " + spdNFSe.RetornoWS.Items(i).XmlImpressao
          IncluirLinha mmTipado, "Data de Autorização: " + spdNFSe.RetornoWS.Items(i).DataAutorizacao
          IncluirLinha mmTipado, ""
          IncluirLinha mmTipado, "================================================"
          IncluirLinha mmTipado, ""
          
          'Tratamentos somente para Demo
          If (vNFSe.RetornoWS.Items(i).Protocolo <> "") Then
            edtNumProtocolo.Text = spdNFSe.RetornoWS.Items(i).Protocolo
          End If
          edtNumeroRPS.Text = spdNFSe.RetornoWS.Items(i).NumeroRps
          edtSerieRPS.Text = spdNFSe.RetornoWS.Items(i).SerieRps
          edtTipoRPS.Text = spdNFSe.RetornoWS.Items(i).Tipo
          EdtNumeroNFSe.Text = spdNFSe.RetornoWS.Items(i).NumeroNFSe
          edtChaveCancelamento.Text = spdNFSe.RetornoWS.Items(i).ChaveCancelamento
          mmXML.Text = spdNFSe.RetornoWS.Items(i).XmlImpressao
        End If
    Next
    
End Sub

Private Sub RetornoTomadasV2Json()
    mmJSON.Text = ""
    mmJSON.Text = spdNFSe.RetornoWSNotasTomadas.Json
End Sub

Private Sub RetornoTomadasV2Tipado()
    Dim vTotal As Integer
    
    mmTipado.Text = ""
    
    vTotal = spdNFSe.RetornoWSNotasTomadas.Count
    
    For i = 0 To vTotal - 1
        IncluirLinha mmTipado, "Status: " + spdNFSe.RetornoWSNotasTomadas.Items(i).Status
        IncluirLinha mmTipado, "CNPJ: " + spdNFSe.RetornoWSNotasTomadas.Items(i).CNPJ
        IncluirLinha mmTipado, "Inscricao Municipal: " + spdNFSe.RetornoWSNotasTomadas.Items(i).InscricaoMunicipal
        IncluirLinha mmTipado, "Serie do RPS: " + spdNFSe.RetornoWSNotasTomadas.Items(i).SerieRps
        IncluirLinha mmTipado, "Número do RPS: " + spdNFSe.RetornoWSNotasTomadas.Items(i).NumeroRps
        IncluirLinha mmTipado, "Número da NFS-e: " + spdNFSe.RetornoWSNotasTomadas.Items(i).NumeroNFSe
        IncluirLinha mmTipado, "Data de Emissão: " + spdNFSe.RetornoWSNotasTomadas.Items(i).DataEmissaoNFSe
        IncluirLinha mmTipado, "Código de Verificação: " + spdNFSe.RetornoWSNotasTomadas.Items(i).CodVerificacao
        IncluirLinha mmTipado, "Situação: " + spdNFSe.RetornoWSNotasTomadas.Items(i).Situacao
        IncluirLinha mmTipado, "Data De Cancelamento: " + spdNFSe.RetornoWSNotasTomadas.Items(i).DataCancelamento
        IncluirLinha mmTipado, "Chave de Cancelamento: " + spdNFSe.RetornoWSNotasTomadas.Items(i).ChaveCancelamento
        IncluirLinha mmTipado, "Tipo: " + spdNFSe.RetornoWSNotasTomadas.Items(i).Tipo
        IncluirLinha mmTipado, "Motivo: " + spdNFSe.RetornoWSNotasTomadas.Items(i).Motivo

        IncluirLinha mmTipado, "Valor Serviços: " + spdNFSe.RetornoWSNotasTomadas.Items(i).ValorServicos
        IncluirLinha mmTipado, "Valor Deduções: " + spdNFSe.RetornoWSNotasTomadas.Items(i).ValorDeducoes
        IncluirLinha mmTipado, "Valor Pis: " + spdNFSe.RetornoWSNotasTomadas.Items(i).ValorPis
        IncluirLinha mmTipado, "Valor Cofins: " + spdNFSe.RetornoWSNotasTomadas.Items(i).DataAutorizacao
        IncluirLinha mmTipado, "Valor Inss: " + spdNFSe.RetornoWSNotasTomadas.Items(i).ValorInss
        IncluirLinha mmTipado, "Valor Ir: " + spdNFSe.RetornoWSNotasTomadas.Items(i).ValorIr
        IncluirLinha mmTipado, "Valor Csll: " + spdNFSe.RetornoWSNotasTomadas.Items(i).ValorCsll
        IncluirLinha mmTipado, "Aliquota Iss: " + spdNFSe.RetornoWSNotasTomadas.Items(i).AliquotaIss
        IncluirLinha mmTipado, "Valor Iss: " + spdNFSe.RetornoWSNotasTomadas.Items(i).ValorIss
        IncluirLinha mmTipado, "Iss Retido: " + spdNFSe.RetornoWSNotasTomadas.Items(i).IssRetido
        IncluirLinha mmTipado, "Data de Autorização: " + spdNFSe.RetornoWSNotasTomadas.Items(i).DataAutorizacao

        IncluirLinha mmTipado, "Razão Social Prestador: " + spdNFSe.RetornoWSNotasTomadas.Items(i).RazaoSocialPrestador
        IncluirLinha mmTipado, "Endereço Prestador: " + spdNFSe.RetornoWSNotasTomadas.Items(i).EnderecoPrestador
        IncluirLinha mmTipado, "Número Prestador: " + spdNFSe.RetornoWSNotasTomadas.Items(i).NumeroPrestador
        IncluirLinha mmTipado, "Complemento Prestador: " + spdNFSe.RetornoWSNotasTomadas.Items(i).ComplementoPrestador
        IncluirLinha mmTipado, "Bairro Prestador: " + spdNFSe.RetornoWSNotasTomadas.Items(i).BairroPrestador
        IncluirLinha mmTipado, "Código Cidade Prestador: " + spdNFSe.RetornoWSNotasTomadas.Items(i).CodigoCidadePrestador
        IncluirLinha mmTipado, "CEP Prestador: " + spdNFSe.RetornoWSNotasTomadas.Items(i).CepPrestador
        IncluirLinha mmTipado, "CpfCnpj Tomador: " + spdNFSe.RetornoWSNotasTomadas.Items(i).CpfCnpjTomador
        IncluirLinha mmTipado, "Insc. Municipal Tomador: " + spdNFSe.RetornoWSNotasTomadas.Items(i).InscMunicipalTomador
        IncluirLinha mmTipado, "Razão Social Tomador: " + spdNFSe.RetornoWSNotasTomadas.Items(i).RazaoSocialTomador
        IncluirLinha mmTipado, "Endereço Tomador: " + spdNFSe.RetornoWSNotasTomadas.Items(i).EnderecoTomador
        IncluirLinha mmTipado, "Número Tomador: " + spdNFSe.RetornoWSNotasTomadas.Items(i).NumeroTomador
        IncluirLinha mmTipado, "Complemento Tomador: " + spdNFSe.RetornoWSNotasTomadas.Items(i).ComplementoTomador
        IncluirLinha mmTipado, "Bairro Tomador: " + spdNFSe.RetornoWSNotasTomadas.Items(i).BairroTomador
        IncluirLinha mmTipado, "Codigo Cidade Tomador: " + spdNFSe.RetornoWSNotasTomadas.Items(i).CodigoCidadeTomador
        IncluirLinha mmTipado, "CEP Tomador: " + spdNFSe.RetornoWSNotasTomadas.Items(i).CepTomador
        IncluirLinha mmTipado, "Email Tomador: " + spdNFSe.RetornoWSNotasTomadas.Items(i).EmailTomador
        IncluirLinha mmTipado, "Telefone Tomador: " + spdNFSe.RetornoWSNotasTomadas.Items(i).TelefoneTomador
        IncluirLinha mmTipado, "Item Lista Servico: " + spdNFSe.RetornoWSNotasTomadas.Items(i).ItemListaServico
        IncluirLinha mmTipado, "Código CNAE: " + spdNFSe.RetornoWSNotasTomadas.Items(i).CodigoCNAE
        IncluirLinha mmTipado, "Cod. Tributação Municipio: " + spdNFSe.RetornoWSNotasTomadas.Items(i).CodTributacaoMunicipio
        IncluirLinha mmTipado, "Codigo Cidade Prestação: " + spdNFSe.RetornoWSNotasTomadas.Items(i).CodigoCidadePrestacao
        IncluirLinha mmTipado, "Discriminação Servico: " + spdNFSe.RetornoWSNotasTomadas.Items(i).DiscriminacaoServico
        IncluirLinha mmTipado, "XML: " + spdNFSe.RetornoWSNotasTomadas.Items(i).XmlImpressao
        IncluirLinha mmTipado, ""
        IncluirLinha mmTipado, "================================================"
        IncluirLinha mmTipado, ""
    Next
    
End Sub

Private Sub BtnCancelarNFSe_Click()
   spdNFSe.CancelarNota edtChaveCancelamento.Text
   RetornoV2Tipado
   RetornoV2Json
End Sub

Private Sub btnCidadesHomologadas_Click()
'   mmXMLEnvio.Text = spdNFSe.ConsultarCidadesHomologadas
   MsgBox ("Método não ainda implementado na Demo")
End Sub

Private Sub btnConsultarNota_Click()
    DadosPreenchidos
    spdNFSe.Consultar EdtNumeroNFSe.Text, edtNumeroRPS.Text, edtSerieRPS.Text, edtTipoRPS.Text, edtNumProtocolo.Text
            
    RetornoV2Tipado
    RetornoV2Json
End Sub

Private Sub btnConsultarNotasTomadas_Click()
   vNFSe.ConsultarNotasTomadas edtNomeCidade.Text, edtDocumentoTomador.Text, edtIMTomador.Text, edtDocumentoPrestador.Text, edtIMPrestador.Text, edtDataInicial.Text, edtDataFinal.Text, edtPagina.Text
   RetornoTomadasV2Tipado
   RetornoTomadasV2Json
End Sub

Private Sub btnEditarDoc_Click()
    Dim vTX2Aux As String
   
    DadosPreenchidos
   
    cdCarregarTX2.DialogTitle = "Abrir arquivo TX2"
    cdCarregarTX2.Filter = "TX2 (*.tx2) | *.tx2"
    cdCarregarTX2.InitDir = App.Path
    cdCarregarTX2.FileName = spdNFSe.Cidade
    cdCarregarTX2.ShowOpen

    vTX2Aux = (cdCarregarTX2.FileName)
    
    spdNFSe.EditarImpressao mmXML.Text, mmXMLEnvio.Text, vTX2Aux
End Sub

Private Sub btnEnviarRPS_Click()
    Dim XML_ As String
        
    DadosPreenchidos
    cdCarregarTX2.DialogTitle = "Abrir arquivo TX2"
    cdCarregarTX2.Filter = "TX2 (*.tx2) | *.tx2"
    cdCarregarTX2.InitDir = App.Path
    cdCarregarTX2.FileName = spdNFSe.Cidade
    cdCarregarTX2.ShowOpen

    XML_ = (cdCarregarTX2.FileName)
    spdNFSe.NomeCertificado = cbNomeCertificado.Text
    
    If XML_ <> "" Then
      spdNFSe.Enviar (XML_)
      RetornoV2Tipado
      RetornoV2Json
    End If
End Sub

Private Sub btnImprimir_Click()
    Dim vTX2Aux As String
   
    DadosPreenchidos
   
    cdCarregarTX2.DialogTitle = "Abrir arquivo TX2"
    cdCarregarTX2.Filter = "TX2 (*.tx2) | *.tx2"
    cdCarregarTX2.InitDir = App.Path
    cdCarregarTX2.FileName = spdNFSe.Cidade
    cdCarregarTX2.ShowOpen

    vTX2Aux = (cdCarregarTX2.FileName)
    
    spdNFSe.Imprimir mmXML.Text, mmXMLEnvio.Text, vTX2Aux
End Sub

Private Sub btnLoadConfig_Click()

  spdNFSe.ConfigurarSoftwareHouse edtCNPJSoftwarehouse.Text, edtTokenSH.Text
  spdNFSe.LoadConfig (ArqINI)
  
  edtCidade.Text = spdNFSe.Cidade
  edtCNPJ.Text = spdNFSe.CNPJ
  edtInscMunicipal.Text = spdNFSe.InscricaoMunicipal
  
  If (spdNFSe.Ambiente = 1) Then
    lblAmbiente.Visible = True
  Else
    lblAmbiente.Visible = False
  End If
End Sub

Private Sub cbNomeCertificado_DropDown()
    'Utiliza Método do Componente para Listar Certificados instalado no SO
    vetor_ = Split(spdNFSe.ListarCertificados, "|")
    cbNomeCertificado.Clear
    
    For i = LBound(vetor_) To UBound(vetor_)
        cbNomeCertificado.AddItem vetor_(i)
    Next
End Sub

Private Sub Command1_Click()
    If (Trim(cbNomeCertificado.Text) <> "") Then
        write_ini "NFSE", "NomeCertificado", cbNomeCertificado.Text
    End If
        
    ShellExecute hwnd, "open", (ArqINI), "", "", 1
End Sub

Private Sub edtExportarPDF_Click()
    Dim vTX2Aux As String
   
    DadosPreenchidos
   
    cdCarregarTX2.DialogTitle = "Abrir arquivo TX2"
    cdCarregarTX2.Filter = "TX2 (*.tx2) | *.tx2"
    cdCarregarTX2.InitDir = App.Path
    cdCarregarTX2.FileName = spdNFSe.Cidade
    cdCarregarTX2.ShowOpen

    vTX2Aux = (cdCarregarTX2.FileName)
    
    spdNFSe.ExportarImpressaoParaPDF mmXML.Text, mmXMLEnvio.Text, App.Path, vTX2Aux
End Sub

Private Sub edtVisualizar_Click()
   Dim XML_ As String
    
    DadosPreenchidos
    XML_ = mmXML.Text
    spdNFSe.VisualizarImpressao XML_, "", ""
End Sub

Private Sub Form_Load()
   Set spdNFSe = New NFSeX.spdNFSeX
   Set spdNFSeDataSet = New NFSeDataSetX.spdNFSeDataSetX

   ArqINI = App.Path + "\nfseConfig.ini"
   
   vetor_ = Split(spdNFSe.ListarCertificados, "|")
   cbNomeCertificado.Clear
    
   For i = LBound(vetor_) To UBound(vetor_)
       cbNomeCertificado.AddItem vetor_(i)
   Next
   
   cbNomeCertificado.ListIndex = 0
   
End Sub

Private Sub btnArquivosCidades_Click()
  spdNFSe.AtualizarArquivos
  
  MsgBox ("Arquivos Atualizados com sucesso para a cidade: " + spdNFSe.Cidade)
End Sub


