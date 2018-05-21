VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form FrmPrincipal 
   Caption         =   "Demonstração"
   ClientHeight    =   9885
   ClientLeft      =   165
   ClientTop       =   450
   ClientWidth     =   11490
   LinkTopic       =   "Form1"
   ScaleHeight     =   9885
   ScaleMode       =   0  'User
   ScaleWidth      =   11490
   StartUpPosition =   1  'CenterOwner
   Begin VB.CheckBox chkEnvioEmail 
      Caption         =   "Enviar Email"
      Height          =   255
      Left            =   9600
      TabIndex        =   62
      Top             =   5040
      Width           =   1575
   End
   Begin VB.Frame Frame4 
      Height          =   2175
      Left            =   9360
      TabIndex        =   47
      Top             =   2760
      Width           =   2055
      Begin VB.CommandButton cmdExportarPDF 
         Caption         =   "E&xportar para PDF"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   51
         Top             =   1680
         Width           =   1815
      End
      Begin VB.CommandButton cmdVisualizar 
         Caption         =   "&Visualizar"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   50
         Top             =   1200
         Width           =   1815
      End
      Begin VB.CommandButton cmdImprimir 
         Caption         =   "&Imprimir"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   49
         Top             =   720
         Width           =   1815
      End
      Begin VB.CommandButton cmdEditarDocumento 
         Caption         =   "&Editar Documento"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   48
         Top             =   240
         Width           =   1815
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Impressão"
      Height          =   975
      Left            =   9360
      TabIndex        =   44
      Top             =   1560
      Width           =   2055
      Begin VB.OptionButton optNFSe 
         Caption         =   "printNFSe"
         Height          =   255
         Left            =   480
         TabIndex        =   46
         Top             =   600
         Width           =   1000
      End
      Begin VB.OptionButton optRPS 
         Caption         =   "printRPS"
         Height          =   255
         Left            =   480
         TabIndex        =   45
         Top             =   240
         Width           =   975
      End
   End
   Begin TabDlg.SSTab SSPrincipal 
      Height          =   3855
      Index           =   0
      Left            =   0
      TabIndex        =   0
      Top             =   1200
      Width           =   9255
      _ExtentX        =   16325
      _ExtentY        =   6800
      _Version        =   393216
      TabHeight       =   520
      TabCaption(0)   =   "Envio de Notas pelo ProxyNFSe"
      TabPicture(0)   =   "frmPrincipal.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame1"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      TabCaption(1)   =   "Configurar Impressão"
      TabPicture(1)   =   "frmPrincipal.frx":001C
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame5"
      Tab(1).ControlCount=   1
      TabCaption(2)   =   "Envio de Notas por Comandos"
      TabPicture(2)   =   "frmPrincipal.frx":0038
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Frame6"
      Tab(2).ControlCount=   1
      Begin VB.Frame Frame5 
         Caption         =   "Configurações"
         Height          =   3375
         Left            =   -74880
         TabIndex        =   23
         Top             =   360
         Width           =   9015
         Begin VB.CommandButton btnLogoTipo 
            Caption         =   "..."
            Height          =   375
            Left            =   8520
            TabIndex        =   38
            Top             =   1320
            Width           =   375
         End
         Begin VB.CommandButton btnBrasao 
            Caption         =   "..."
            Height          =   375
            Left            =   8520
            TabIndex        =   37
            Top             =   600
            Width           =   375
         End
         Begin MSComDlg.CommonDialog cdArquivosImpressao 
            Left            =   6000
            Top             =   120
            _ExtentX        =   847
            _ExtentY        =   847
            _Version        =   393216
            CancelError     =   -1  'True
         End
         Begin VB.TextBox txtSubTituloRPS 
            Height          =   285
            Left            =   4560
            TabIndex        =   29
            Text            =   "RECIBO PROVISÓRIO DE SERVIÇO - RPS"
            Top             =   2760
            Width           =   3855
         End
         Begin VB.TextBox txtSubTituloNFSe 
            Height          =   285
            Left            =   120
            TabIndex        =   28
            Text            =   "NOTA FISCAL DE SERVIÇOS ELETRÔNICA - NFS-e"
            Top             =   2760
            Width           =   4095
         End
         Begin VB.TextBox txtSecRepNFSe 
            Height          =   285
            Left            =   4560
            TabIndex        =   27
            Text            =   "SECRETARIA MUNICIPAL DE FINANÇAS PÚBLICAS"
            Top             =   2040
            Width           =   3855
         End
         Begin VB.TextBox txtTituloRPSNFSe 
            Height          =   285
            Left            =   120
            TabIndex        =   26
            Text            =   "PREFEITURA MUNICIPAL DE EXEMPLO"
            Top             =   2040
            Width           =   4095
         End
         Begin VB.TextBox txtLogoEmitente 
            Height          =   285
            Left            =   120
            TabIndex        =   25
            Top             =   1320
            Width           =   8295
         End
         Begin VB.TextBox txtBrasaoCidade 
            Height          =   285
            Left            =   120
            TabIndex        =   24
            Text            =   "Templates\Impressao\SaoPaulo\Brasao.jpg"
            Top             =   600
            Width           =   8295
         End
         Begin VB.Label Label11 
            Caption         =   "Subtítulo para o RPS:"
            Height          =   255
            Left            =   4560
            TabIndex        =   35
            Top             =   2520
            Width           =   3255
         End
         Begin VB.Label Label10 
            Caption         =   "SubTítulo para a NFSe:"
            Height          =   255
            Left            =   120
            TabIndex        =   34
            Top             =   2520
            Width           =   3255
         End
         Begin VB.Label Label9 
            Caption         =   "Secretaria responsável pela NFSe:"
            Height          =   255
            Left            =   4560
            TabIndex        =   33
            Top             =   1800
            Width           =   4335
         End
         Begin VB.Label Label8 
            Caption         =   "Título do RPS/NFSe:"
            Height          =   255
            Left            =   120
            TabIndex        =   32
            Top             =   1800
            Width           =   3495
         End
         Begin VB.Label Label7 
            Caption         =   "Logotipo Emitente"
            Height          =   255
            Left            =   120
            TabIndex        =   31
            Top             =   1080
            Width           =   2535
         End
         Begin VB.Label Label6 
            Caption         =   "Brasão da Cidade"
            Height          =   255
            Left            =   120
            TabIndex        =   30
            Top             =   360
            Width           =   1335
         End
      End
      Begin VB.Frame Frame6 
         Height          =   3375
         Left            =   -74880
         TabIndex        =   43
         Top             =   360
         Width           =   9015
         Begin VB.CommandButton btnCopiaXML 
            Caption         =   "&Copiar resposta para parâmetro"
            Enabled         =   0   'False
            Height          =   375
            Left            =   6120
            TabIndex        =   60
            Top             =   2880
            Width           =   2775
         End
         Begin MSFlexGridLib.MSFlexGrid fgParametros 
            Height          =   1695
            Left            =   2640
            TabIndex        =   59
            Top             =   1080
            Width           =   6255
            _ExtentX        =   11033
            _ExtentY        =   2990
            _Version        =   393216
            Rows            =   0
            FixedRows       =   0
            AllowBigSelection=   0   'False
            GridLinesFixed  =   1
            Appearance      =   0
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
         End
         Begin VB.CommandButton btnExecutar 
            Caption         =   "&Executar"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   120
            TabIndex        =   56
            Top             =   2880
            Width           =   2415
         End
         Begin VB.ListBox lsComandos 
            Height          =   1620
            Left            =   120
            TabIndex        =   55
            Top             =   1080
            Width           =   2415
         End
         Begin VB.CommandButton btnLoadConfigComandos 
            Caption         =   "&LoadConfig"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   2640
            TabIndex        =   53
            Top             =   480
            Width           =   1695
         End
         Begin VB.TextBox txtCidadeComandos 
            Height          =   285
            Left            =   120
            TabIndex        =   52
            Top             =   480
            Width           =   2415
         End
         Begin VB.Label Label14 
            Caption         =   "Parâmetros:"
            Height          =   255
            Left            =   2640
            TabIndex        =   58
            Top             =   840
            Width           =   975
         End
         Begin VB.Label Label13 
            Caption         =   "Comandos:"
            Height          =   255
            Left            =   120
            TabIndex        =   57
            Top             =   840
            Width           =   975
         End
         Begin VB.Label Label12 
            Caption         =   "Cidade:"
            Height          =   255
            Left            =   120
            TabIndex        =   54
            Top             =   240
            Width           =   1335
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Configurações"
         Height          =   3375
         Left            =   120
         TabIndex        =   14
         Top             =   360
         Width           =   2895
         Begin VB.CheckBox ckAvancado 
            Caption         =   "Modo &Avançado"
            Height          =   375
            Left            =   120
            TabIndex        =   36
            Top             =   2880
            Width           =   2535
         End
         Begin VB.TextBox txtCidade 
            Height          =   285
            Left            =   120
            TabIndex        =   18
            Top             =   600
            Width           =   2655
         End
         Begin VB.TextBox txtCNPJ 
            Height          =   285
            Left            =   120
            TabIndex        =   17
            Top             =   1200
            Width           =   2655
         End
         Begin VB.TextBox txtIM 
            Height          =   285
            Left            =   120
            TabIndex        =   16
            Top             =   1800
            Width           =   2655
         End
         Begin VB.TextBox txtProtocolo 
            Height          =   285
            Left            =   120
            TabIndex        =   15
            Top             =   2400
            Width           =   2655
         End
         Begin VB.Label Label1 
            Caption         =   "Cidade:"
            Height          =   255
            Left            =   120
            TabIndex        =   22
            Top             =   360
            Width           =   1095
         End
         Begin VB.Label Label2 
            Caption         =   "CNPJ"
            Height          =   255
            Left            =   120
            TabIndex        =   21
            Top             =   960
            Width           =   855
         End
         Begin VB.Label Label3 
            Caption         =   "Inscrição Municipal"
            Height          =   255
            Left            =   120
            TabIndex        =   20
            Top             =   1560
            Width           =   1695
         End
         Begin VB.Label Label4 
            Caption         =   "Número do Protocolo"
            Height          =   255
            Left            =   120
            TabIndex        =   19
            Top             =   2160
            Width           =   1935
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "Operações"
         Height          =   3375
         Left            =   3120
         TabIndex        =   2
         Top             =   360
         Width           =   6015
         Begin VB.OptionButton optEnvioAss 
            Caption         =   "Assíncrono"
            Height          =   255
            Left            =   120
            TabIndex        =   65
            Top             =   3000
            Value           =   -1  'True
            Width           =   1215
         End
         Begin VB.OptionButton optEnvioSin 
            Caption         =   "Síncrono"
            Height          =   195
            Left            =   120
            TabIndex        =   64
            Top             =   2760
            Width           =   1095
         End
         Begin VB.CommandButton cmdConfigINI 
            Caption         =   "&1. Configurar Arquivo INI"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   120
            TabIndex        =   12
            Top             =   840
            Width           =   2775
         End
         Begin VB.CommandButton cmdLoadConfig 
            Caption         =   "&2. LoadConfig"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   120
            TabIndex        =   11
            Top             =   1320
            Width           =   2775
         End
         Begin VB.CommandButton cmdGerarXML 
            Caption         =   "&3. Gerar XML via TX2"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   120
            TabIndex        =   10
            Top             =   1800
            Width           =   2775
         End
         Begin VB.CommandButton cmdAssinar 
            Caption         =   "&4. Assinar XML"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   120
            TabIndex        =   9
            Top             =   2280
            Width           =   2775
         End
         Begin VB.CommandButton cmdEnviar 
            Caption         =   "&5. Enviar RPS"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   1440
            TabIndex        =   8
            Top             =   2760
            Width           =   1455
         End
         Begin VB.CommandButton cmdConsultarLoteRPS 
            Caption         =   "&6. Consultar Lote RPS"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   3120
            TabIndex        =   7
            Top             =   840
            Width           =   2775
         End
         Begin VB.CommandButton cmdConsultarNFSeRPS 
            Caption         =   "&7. Consultar NFSe por RPS"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   3120
            TabIndex        =   6
            Top             =   1320
            Width           =   2775
         End
         Begin VB.CommandButton cmdConsultarNFSe 
            Caption         =   "&8. Consultar NFSe"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   3120
            TabIndex        =   5
            Top             =   1800
            Width           =   2775
         End
         Begin VB.CommandButton cmdCancelarNFSe 
            Caption         =   "&9. Cancelar NFSe"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   3120
            TabIndex        =   4
            Top             =   2280
            Width           =   2775
         End
         Begin VB.ComboBox cbCertificado 
            Height          =   315
            ItemData        =   "frmPrincipal.frx":0054
            Left            =   120
            List            =   "frmPrincipal.frx":0056
            TabIndex        =   3
            Top             =   480
            Width           =   5775
         End
         Begin MSComDlg.CommonDialog cdCarregarTX2 
            Left            =   5400
            Top             =   2880
            _ExtentX        =   847
            _ExtentY        =   847
            _Version        =   393216
            CancelError     =   -1  'True
         End
         Begin VB.Label Label5 
            Caption         =   "Certificado:"
            Height          =   255
            Left            =   120
            TabIndex        =   13
            Top             =   240
            Width           =   1695
         End
      End
   End
   Begin SHDocVwCtl.WebBrowser WebBrowser 
      Height          =   1565
      Left            =   -240
      TabIndex        =   1
      Top             =   -360
      Width           =   12615
      ExtentX         =   22251
      ExtentY         =   2760
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "http:///"
   End
   Begin TabDlg.SSTab SSRespostas 
      Height          =   4695
      Index           =   0
      Left            =   0
      TabIndex        =   39
      Top             =   5160
      Width           =   11415
      _ExtentX        =   20135
      _ExtentY        =   8281
      _Version        =   393216
      Tabs            =   4
      TabsPerRow      =   6
      TabHeight       =   520
      TabCaption(0)   =   "XML Formatado"
      TabPicture(0)   =   "frmPrincipal.frx":0058
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "mmXMLFormatado"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "XML"
      TabPicture(1)   =   "frmPrincipal.frx":0074
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "mmXML"
      Tab(1).ControlCount=   1
      TabCaption(2)   =   "CSV"
      TabPicture(2)   =   "frmPrincipal.frx":0090
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "mmCSV"
      Tab(2).ControlCount=   1
      TabCaption(3)   =   "Campos Formatados"
      TabPicture(3)   =   "frmPrincipal.frx":00AC
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "mmTipado"
      Tab(3).ControlCount=   1
      Begin VB.TextBox mmTipado 
         Height          =   4215
         Left            =   -74880
         MultiLine       =   -1  'True
         ScrollBars      =   3  'Both
         TabIndex        =   63
         Top             =   360
         Width           =   11175
      End
      Begin VB.TextBox mmCSV 
         Height          =   4215
         Left            =   -74880
         MultiLine       =   -1  'True
         ScrollBars      =   3  'Both
         TabIndex        =   42
         Top             =   360
         Width           =   11175
      End
      Begin VB.TextBox mmXML 
         Height          =   4215
         Left            =   -74880
         MultiLine       =   -1  'True
         ScrollBars      =   3  'Both
         TabIndex        =   41
         Top             =   360
         Width           =   11175
      End
      Begin VB.TextBox mmXMLFormatado 
         ForeColor       =   &H00FF0000&
         Height          =   4215
         Left            =   120
         MultiLine       =   -1  'True
         ScrollBars      =   3  'Both
         TabIndex        =   40
         Top             =   360
         Width           =   11175
      End
   End
   Begin VB.Label lblAmbiente 
      Caption         =   "Amb. de Produção"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   375
      Left            =   9480
      TabIndex        =   61
      Top             =   1200
      Visible         =   0   'False
      Width           =   2055
   End
End
Attribute VB_Name = "FrmPrincipal"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim spdNFSe As NFSex.spdNFSeX
Dim spdProxyNFSe As NFSex.spdProxyNFSeX
Dim spdNFSeConverter As NFSeConverterX.spdNFSeConverterX
Dim ArqINI As String

'Função para ler arquivos INI usando API windows.
Private Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal Secao As String, ByVal parametro As Any, ByVal padrao As String, ByVal variavel As String, ByVal tam As Long, ByVal arquivo As String) As Long
'Função para gravar arquivos INI usando API windows.
Private Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal Secao As String, ByVal parametro As Any, ByVal valor As Any, ByVal arquivo As String) As Long
'Função para executar o notepad.exe
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long

' Função para ler o arquivo Ini.
Function get_ini(seção$, Chave$) As String
    arquiv$ = ArqINI
    Returns$ = Space$(280)
    x% = GetPrivateProfileString(ByVal seção$, ByVal Chave$, _
    "", Returns$, Len(Returns$), ByVal arquiv$)
    get_ini = Left$(Returns$, x%)
End Function

 ' Função para escrever no arquivo Ini.
Function write_ini(ByVal section$, ByVal chv$, ByVal variavel$) As String
    arquiv$ = ArqINI
    iRet = WritePrivateProfileString(ByVal section$, ByVal chv$, ByVal variavel$, ByVal arquiv$)
End Function

Sub TrataErro()
    Select Case Err
    Case 32755 '  Diálogo Cancelado
        '  Não faz nada
    Case Else
        MsgBox Err.Description
    End Select
End Sub

Private Sub btnBrasao_Click()
    On Error GoTo Erro
    cdArquivosImpressao.DialogTitle = "Brasão da Cidade"
    cdArquivosImpressao.FileName = txtBrasaoCidade.Text
    cdArquivosImpressao.Filter = "Arquivo de imagem JPEG (*.jpg) | *.jpg"
    cdArquivosImpressao.InitDir = App.Path
    cdArquivosImpressao.ShowOpen
    txtBrasaoCidade.Text = cdArquivosImpressao.FileName
Erro:
    If Err Then TrataErro
End Sub

Private Sub btnCopiaXML_Click()
    fgParametros.TextMatrix(0, 1) = mmXML.Text
End Sub

Private Sub btnExecutar_Click()
    On Error GoTo Erro
    Dim nomeComando_, nomeParametro_, valorParametro_, resposta_ As String
    Dim i As Integer
    
    nomeComando_ = lsComandos.List(lsComandos.ListIndex)
    
    For i = 0 To fgParametros.Rows - 1
        nomeParametro_ = fgParametros.TextMatrix(i, 0)
        valorParametro_ = fgParametros.TextMatrix(i, 1)
        spdNFSe.GravarParametroComando nomeComando_, nomeParametro_, valorParametro_
    Next
    
    resposta_ = spdNFSe.ExecutarComando(nomeComando_)
    mmXML.Text = resposta_
    mmXMLFormatado.Text = spdNFSe.ReformatXML(resposta_)
Erro:
    If Err Then TrataErro
End Sub

Private Sub btnLoadConfigComandos_Click()
    Dim comandos_ As Variant
    Dim i_ As Integer
    
    LoadConfig
           
    lsComandos.Clear
    comandos_ = Split(spdNFSe.ListarComandos, ",")
    
    For i_ = LBound(comandos_) To UBound(comandos_)
        lsComandos.AddItem comandos_(i_)
    Next
End Sub

Private Sub btnLogoTipo_Click()
    On Error GoTo Erro
    cdArquivosImpressao.DialogTitle = "LogoTipo do Emitente"
    cdArquivosImpressao.FileName = txtLogoEmitente.Text
    cdArquivosImpressao.Filter = "Arquivo de imagem JPEG (*.jpg) | *.jpg"
    cdArquivosImpressao.InitDir = App.Path
    cdArquivosImpressao.ShowOpen
    txtLogoEmitente.Text = cdArquivosImpressao.FileName
Erro:
    If Err Then TrataErro
End Sub

Private Sub cbCertificado_DropDown()
    'Utiliza Método do Componente para Listar Certificados instalado no SO
    vetor_ = Split(spdNFSe.ListarCertificados, "|")
    cbCertificado.Clear
    
    For i = LBound(vetor_) To UBound(vetor_)
        cbCertificado.AddItem vetor_(i)
    Next
End Sub

Private Sub ckAvancado_Click()
    SSPrincipal(0).TabVisible(2) = ckAvancado.Value
End Sub

Private Sub cmdAssinar_Click()
    On Error GoTo Erro
    DadosPreenchidos
    mmXML.Text = spdProxyNFSe.Assinar(mmXML.Text)
    mmXMLFormatado.Text = spdNFSe.ReformatXML(mmXML.Text)
Erro:
    If Err Then TrataErro
End Sub

Private Sub getRetornoCancelamento(aXML As String)
    Dim Ret_ As New spdRetCancelaNFSe
    Dim txt_ As String
    
    txt_ = ""
       
    Set Ret_ = spdNFSeConverter.ConverterRetCancelarNFSeTipo(aXML)
    mmTipado.Text = ""
    
    Select Case Ret_.Status
        Case 0
            txt_ = "Status: SUCESSO" & vbCrLf
        Case 1
            txt_ = "Status: EM PROCESSAMENTO" & vbCrLf
        Case 2
            txt_ = "Status: ERRO" & vbCrLf
            txt_ = txt_ + "Motivo: " + Ret_.Motivo & vbCrLf
    End Select
    
    mmTipado.Text = txt_ + "Data de Cancelamento: " + Ret_.DataCancelamento
End Sub

Private Sub cmdCancelarNFSe_Click()
    On Error GoTo Erro
    Dim NumNFSE_, XML_ As String
    
    DadosPreenchidos
    NumNFSE_ = InputBox("CANCELAR NFSe", "Digite o número da NFSe", "")
    
    If NumNFSE_ <> "" Then
        XML_ = spdProxyNFSe.CancelarNota(NumNFSE_)
        mmXMLFormatado.Text = spdProxyNFSe.ComponenteNFSe.ReformatXML(XML_)
        mmXML.Text = XML_
        mmCSV.Text = spdNFSeConverter.ConverterRetCancelarNFSe(XML_, "")
       
        getRetornoCancelamento (XML_)
    End If
Erro:
    If Err Then TrataErro
End Sub

Private Sub cmdConfigINI_Click()
    On Error GoTo Erro
    If (Trim(cbCertificado.Text) <> "") Then
        write_ini "NFSE", "NomeCertificado", cbCertificado.Text
    End If
        
    ShellExecute hwnd, "open", (ArqINI), "", "", 1
Erro:
    If Err Then TrataErro
End Sub

Private Sub GetRetornoConsLote(aXML As String)
    Dim i As Integer
    Dim txt_ As String
        
    txt_ = ""
    
    If spdNFSeConverter.ConverterRetConsultarLoteNFSeTipo(aXML).Status = 1 Then
        txt_ = "Status : EM PROCESSAMENTO" & vbCrLf
    Else
        If spdNFSeConverter.ConverterRetConsultarLoteNFSeTipo(aXML).Status = 2 Then
            txt_ = "Status : ERRO" & vbCrLf
            txt_ = txt_ + "Motivo: " + spdNFSeConverter.ConverterRetConsultarLoteNFSeTipo(aXML).Motivo & vbCrLf
        Else
            For i = 0 To spdNFSeConverter.ConverterRetConsultarLoteNFSeTipo(aXML).ListaDeNFes.Count - 1
                txt_ = txt_ + "Status: SUCESSO" & vbCrLf
                txt_ = txt_ + "CNPJ: " + spdNFSeConverter.ConverterRetConsultarLoteNFSeTipo(aXML).ListaDeNFes.Item(i).CNPJ & vbCrLf
                txt_ = txt_ + "Inscricao Municipal: " + spdNFSeConverter.ConverterRetConsultarLoteNFSeTipo(aXML).ListaDeNFes.Item(i).InscMunicipal & vbCrLf
                txt_ = txt_ + "Serie RPS: " + spdNFSeConverter.ConverterRetConsultarLoteNFSeTipo(aXML).ListaDeNFes.Item(i).SerieRps & vbCrLf
                txt_ = txt_ + "Número do RPS: " + spdNFSeConverter.ConverterRetConsultarLoteNFSeTipo(aXML).ListaDeNFes.Item(i).NumeroRps & vbCrLf
                txt_ = txt_ + "Número da NFS-e: " + spdNFSeConverter.ConverterRetConsultarLoteNFSeTipo(aXML).ListaDeNFes.Item(i).NumeroNFSe & vbCrLf
                txt_ = txt_ + "Data de Emissão: " + spdNFSeConverter.ConverterRetConsultarLoteNFSeTipo(aXML).ListaDeNFes.Item(i).DataEmissaoNFSe & vbCrLf
                txt_ = txt_ + "Código de Verificação: " + spdNFSeConverter.ConverterRetConsultarLoteNFSeTipo(aXML).ListaDeNFes.Item(i).CodVerificacao & vbCrLf
                txt_ = txt_ + "Sitiação: " + spdNFSeConverter.ConverterRetConsultarLoteNFSeTipo(aXML).ListaDeNFes.Item(i).Situacao & vbCrLf
                txt_ = txt_ + "Data de Cancelamento: " + spdNFSeConverter.ConverterRetConsultarLoteNFSeTipo(aXML).ListaDeNFes.Item(i).DataCancelamento & vbCrLf
                txt_ = txt_ + "Chave de Cancelamento: " + spdNFSeConverter.ConverterRetConsultarLoteNFSeTipo(aXML).ListaDeNFes.Item(i).ChaveCancelamento & vbCrLf
                txt_ = txt_ + "Tipo: " + spdNFSeConverter.ConverterRetConsultarLoteNFSeTipo(aXML).ListaDeNFes.Item(i).Tipo & vbCrLf
                txt_ = txt_ + "Motivo: " + spdNFSeConverter.ConverterRetConsultarLoteNFSeTipo(aXML).Motivo & vbCrLf
                txt_ = txt_ + "XML: " + spdNFSeConverter.ConverterRetConsultarLoteNFSeTipo(aXML).ListaDeNFes.Item(i).Xml & vbCrLf
                txt_ = txt_ + "=======================================================================================" & vbCrLf
                txt_ = txt_ + "" & vbCrLf
            Next i
        End If
    End If
    
    mmTipado.Text = txt_
End Sub

Private Sub cmdConsultarLoteRPS_Click()
    On Error GoTo Erro
    Dim XML_, XMLEscaped_ As String
           
    DadosPreenchidos
    
    XML_ = spdProxyNFSe.ConsultarLote(txtProtocolo.Text)
    mmXML.Text = XML_
    
    XMLEscaped_ = spdProxyNFSe.ComponenteNFSe.ExtractEscapedContent(XML_)
    mmXMLFormatado.Text = spdProxyNFSe.ComponenteNFSe.ReformatXML(XMLEscaped_)
    
    mmCSV.Text = ""
    mmCSV.Text = spdNFSeConverter.ConverterRetConsultarLoteNFSe(XML_, "")
    
    GetRetornoConsLote (XML_)
    optNFSe.Value = True
Erro:
    If Err Then TrataErro
End Sub

Private Sub getRetornoConsultarNFSe(aXML As String)
    Dim Ret_ As New spdRetConsultaNFSe
    Dim txt_ As String
    
    txt_ = ""
    
    Set Ret_ = spdNFSeConverter.ConverterRetConsultarNFSeTipo(aXML)
    mmTipado.Text = ""
       
    If Ret_.Status = 1 Then
        txt_ = "Status : EM PROCESSAMENTO" & vbCrLf
    Else
        If Ret_.Status = 2 Then
            txt_ = "Status : ERRO" & vbCrLf
            txt_ = txt_ + "Motivo: " + Ret_.Motivo & vbCrLf
        Else
            txt_ = "Status : SUCESSO" & vbCrLf
            txt_ = txt_ + "CNPJ: " + Ret_.CNPJ & vbCrLf
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
    
    mmTipado.Text = txt_
End Sub

Public Sub ConsultarNFSeporRPS()
    On Error GoTo Erro
    Dim XML_ As String
    
    XML_ = spdProxyNFSe.ConsultarNFSeporRPS(frmConsultaLote.txtNumeroRPS.Text, frmConsultaLote.txtSerieRPS.Text, frmConsultaLote.txtTipoRPS.Text)
    mmXMLFormatado.Text = spdProxyNFSe.ComponenteNFSe.ReformatXML(XML_)
    mmXML.Text = XML_
    mmCSV.Text = ""
    
    mmCSV.Text = spdNFSeConverter.ConverterRetConsultarNFSePorRPS(XML_, "")
    
    getRetornoConsultarNFSePorRPS (XML_)
    
    optNFSe.Value = True
Erro:
    If Err Then TrataErro
End Sub

Private Sub getRetornoConsultarNFSePorRPS(aXML As String)
    Dim Ret_ As New spdRetConsultaNFSe
    Dim txt_ As String
    
    txt_ = ""
    
    Set Ret_ = spdNFSeConverter.ConverterRetConsultarNFSePorRpsTipo(aXML)
    mmTipado.Text = ""
       
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
        
        txt_ = txt_ + "CNPJ: " + Ret_.CNPJ & vbCrLf
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
    
    mmTipado.Text = txt_
End Sub

Private Sub cmdConsultarNFSe_Click()
    On Error GoTo Erro
    Dim NumNFSE_, XML_ As String
    
    DadosPreenchidos
    NumNFSE_ = InputBox("Consulta NFSe", "Digite o número da NFSe", "")
    
    If NumNFSE_ <> "" Then
        XML_ = spdProxyNFSe.ConsultarNota(NumNFSE_, "")
        mmXMLFormatado.Text = spdProxyNFSe.ComponenteNFSe.ReformatXML(XML_)
        mmXML.Text = XML_
    
        mmCSV.Text = ""
        mmCSV.Text = spdNFSeConverter.ConverterRetConsultarNFSe(XML_, "")
    
        getRetornoConsultarNFSe (XML_)
    
        optNFSe.Value = True
    End If
Erro:
    If Err Then TrataErro
End Sub

Private Sub cmdConsultarNFSeRPS_Click()
    frmConsultaLote.Show
End Sub

Private Sub getRetornoEnvio(aXML As String)
    Dim Ret_ As New spdRetEnvioNFSe
    Dim txt_ As String
    
    DadosPreenchidos
    txt_ = ""
    Set Ret_ = spdNFSeConverter.ConverterRetEnvioNFSeTipo(aXML)
        
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
    mmTipado.Text = txt_
    
    optNFSe.Value = True
End Sub

Private Sub getRetornoEnvioSincrono(aXML As String)
    Dim i As Integer
    Dim txt_ As String
        
    txt_ = ""
    
    If spdNFSeConverter.ConverterRetEnvioSincronoNFSeTipo(aXML).Status = 1 Then
        txt_ = "Status : EM PROCESSAMENTO" & vbCrLf
    Else
        If spdNFSeConverter.ConverterRetEnvioSincronoNFSeTipo(aXML).Status = 2 Then
            txt_ = "Status : ERRO" & vbCrLf
            txt_ = txt_ + "Motivo: " + spdNFSeConverter.ConverterRetEnvioSincronoNFSeTipo(aXML).Motivo & vbCrLf
        Else
            For i = 0 To spdNFSeConverter.ConverterRetEnvioSincronoNFSeTipo(aXML).ListaDeNFes.Count - 1
                txt_ = txt_ + "Status: SUCESSO" & vbCrLf
                txt_ = txt_ + "CNPJ: " + spdNFSeConverter.ConverterRetEnvioSincronoNFSeTipo(aXML).ListaDeNFes.Item(i).CNPJ & vbCrLf
                txt_ = txt_ + "Inscricao Municipal: " + spdNFSeConverter.ConverterRetEnvioSincronoNFSeTipo(aXML).ListaDeNFes.Item(i).InscMunicipal & vbCrLf
                txt_ = txt_ + "Serie RPS: " + spdNFSeConverter.ConverterRetEnvioSincronoNFSeTipo(aXML).ListaDeNFes.Item(i).SerieRps & vbCrLf
                txt_ = txt_ + "Número do RPS: " + spdNFSeConverter.ConverterRetEnvioSincronoNFSeTipo(aXML).ListaDeNFes.Item(i).NumeroRps & vbCrLf
                txt_ = txt_ + "Número da NFS-e: " + spdNFSeConverter.ConverterRetEnvioSincronoNFSeTipo(aXML).ListaDeNFes.Item(i).NumeroNFSe & vbCrLf
                txt_ = txt_ + "Data de Emissão: " + spdNFSeConverter.ConverterRetEnvioSincronoNFSeTipo(aXML).ListaDeNFes.Item(i).DataEmissaoNFSe & vbCrLf
                txt_ = txt_ + "Código de Verificação: " + spdNFSeConverter.ConverterRetEnvioSincronoNFSeTipo(aXML).ListaDeNFes.Item(i).CodVerificacao & vbCrLf
                txt_ = txt_ + "Sitiação: " + spdNFSeConverter.ConverterRetEnvioSincronoNFSeTipo(aXML).ListaDeNFes.Item(i).Situacao & vbCrLf
                txt_ = txt_ + "Data de Cancelamento: " + spdNFSeConverter.ConverterRetEnvioSincronoNFSeTipo(aXML).ListaDeNFes.Item(i).DataCancelamento & vbCrLf
                txt_ = txt_ + "Chave de Cancelamento: " + spdNFSeConverter.ConverterRetEnvioSincronoNFSeTipo(aXML).ListaDeNFes.Item(i).ChaveCancelamento & vbCrLf
                txt_ = txt_ + "Tipo: " + spdNFSeConverter.ConverterRetEnvioSincronoNFSeTipo(aXML).ListaDeNFes.Item(i).Tipo & vbCrLf
                txt_ = txt_ + "Motivo: " + spdNFSeConverter.ConverterRetEnvioSincronoNFSeTipo(aXML).Motivo & vbCrLf
                txt_ = txt_ + "XML: " + spdNFSeConverter.ConverterRetEnvioSincronoNFSeTipo(aXML).ListaDeNFes.Item(i).Xml & vbCrLf
                txt_ = txt_ + "=======================================================================================" & vbCrLf
                txt_ = txt_ + "" & vbCrLf
            Next i
        End If
    End If
    
    mmTipado.Text = txt_
End Sub

Private Function getModoImpressao() As ModoImpressao
    If optRPS.Value = True Then
        getModoImpressao = printRPS
    ElseIf optNFSe.Value = True Then
        getModoImpressao = printNFSe
    End If
End Function

Private Sub ConfigurarImpressao(aXML As String)
    spdNFSe.Impressao_CriarDatasets (aXML)
    spdNFSe.Impressao_Configurar "BrasaoMunicipio", txtBrasaoCidade.Text
    spdNFSe.Impressao_Configurar "LogotipoEmitente", txtLogoEmitente.Text
    spdNFSe.Impressao_Configurar "Titulo", txtTituloRPSNFSe.Text
    spdNFSe.Impressao_Configurar "SecretariaResponsavel", txtSecRepNFSe.Text
    spdNFSe.Impressao_Configurar "SubtituloNFSe", txtSubTituloNFSe.Text
    spdNFSe.Impressao_Configurar "SubtituloRPS", txtSubTituloRPS.Text
    spdNFSe.Impressao_Configurar "ArquivoMunicipios", "Templates\Impressao\Municipios.txt"
    
    If spdProxyNFSe.ComponenteNFSe.ImpressaoModo = printRPS Then
    
        spdProxyNFSe.ComponenteNFSe.Impressao_First
        Do While Not spdProxyNFSe.ComponenteNFSe.Impressao_Eof
            spdProxyNFSe.ComponenteNFSe.Impressao_Editar
            spdNFSe.Impressao_SetCampo "NomeFantasiaPrestador", "NOME FANTASIA PRESTADOR"
            spdNFSe.Impressao_SetCampo "RazaoSocialPrestador", "RAZAO SOCIAL PRESTADOR"
            spdNFSe.Impressao_SetCampo "EnderecoPrestador", "ENDERECO TESTE PRESTADOR"
            spdNFSe.Impressao_SetCampo "UfPrestador", "MG"
            spdNFSe.Impressao_SetCampo "EmailPrestador", "comercial@tecnospeed.com.br"
            spdProxyNFSe.ComponenteNFSe.Impressao_Salvar
            spdProxyNFSe.ComponenteNFSe.Impressao_Next
        Loop
    End If
End Sub

Private Sub cmdEditarDocumento_Click()
    On Error GoTo Erro
    Dim XML_ As String
    
    DadosPreenchidos
    XML_ = mmXML.Text
    spdProxyNFSe.ComponenteNFSe.ImpressaoModo = getModoImpressao
    ConfigurarImpressao (XML_)
    spdProxyNFSe.ComponenteNFSe.Impressao_EditarDocumento
Erro:
    If Err Then TrataErro
End Sub

Private Sub cmdEnviar_Click()
    On Error GoTo Erro
    If (spdNFSe.Ambiente = akProducao) Then
        If (MsgBox("O componente está configurado para enviar em ambiente de produção, deseja continuar?", vbYesNo, "Atenção!") = vbNo) Then
            Exit Sub
        End If
    End If
    
    DadosPreenchidos
    
    If optEnvioAss.Value = True Then
        EnvioAssincrono
    Else
        EnvioSincrono
    End If
    
    optRPS.Value = True
Erro:
    If Err Then TrataErro
End Sub

Private Sub ConfigurarOpcoesEmail()
    spdNFSe.EmailServidorSmtp = "smtp.gmail.com"
    spdNFSe.EmailUsuario = "testenfse@gmail.com"
    spdNFSe.EmailSenha = "tecnospeed"
    spdNFSe.EmailRemetente = ""
    spdNFSe.EmailAutenticacao = True
    spdNFSe.EmailAssunto = "Teste de envio de email"
    spdNFSe.EmailMensagem = "Esta é uma mensagem teste"
End Sub

Private Sub EnviarEmail(aNomeArquivo As String)
    Dim Destino_ As String
    If chkEnvioEmail.Value = 1 Then
        Destino_ = InputBox("Informe o email destinatário", "Envio de Email", "")
        If Destino_ <> "" Then
            If spdNFSe.EnviarEmail(Destino_, aNomeArquivo) = True Then
                MsgBox ("Email enviado com sucesso.")
            Else
                MsgBox ("Email não enviado.")
            End If
        End If
    End If
End Sub

Private Sub cmdExportarPDF_Click()
    Dim XML_ As String
    On Error GoTo Erro
      
    XML_ = mmXML.Text
    spdProxyNFSe.ComponenteNFSe.ImpressaoModo = getModoImpressao
    ConfigurarImpressao (XML_)
    cdArquivosImpressao.Filter = "Arquivo PDF (*.pdf) | *.pdf"
    cdArquivosImpressao.InitDir = App.Path
    cdArquivosImpressao.FileName = spdNFSe.Cidade
    cdArquivosImpressao.ShowSave
    spdProxyNFSe.ComponenteNFSe.Impressao_ExportarDocumentoParaPDFCustom "", "", cdArquivosImpressao.FileName
    ConfigurarOpcoesEmail
    EnviarEmail (cdArquivosImpressao.FileName)
Erro:
    If Err Then TrataErro
End Sub

Private Sub cmdGerarXML_Click()
    Dim XML_ As String
        
    On Error GoTo Erro
    DadosPreenchidos
    cdCarregarTX2.DialogTitle = "Abrir arquivo TX2"
    cdCarregarTX2.Filter = "TX2 (*.tx2) | *.tx2"
    cdCarregarTX2.InitDir = App.Path + "\..\..\Utils\ExemplosTx2\Padrão Município"
    cdCarregarTX2.FileName = spdNFSe.Cidade
    cdCarregarTX2.ShowOpen

    XML_ = spdNFSeConverter.ConverterEnvioNFSe(cdCarregarTX2.FileName, "")
    mmXML.Text = (XML_)
    mmXMLFormatado.Text = spdNFSe.ReformatXML(XML_)
    mmCSV.Text = ""
    mmTipado.Text = ""
    
    optRPS = True
Erro:
    If Err Then TrataErro
End Sub

Private Sub cmdImprimir_Click()
    On Error GoTo Erro
    Dim XML_ As String
    
    DadosPreenchidos
    XML_ = mmXML.Text
    spdProxyNFSe.ComponenteNFSe.ImpressaoModo = getModoImpressao
    ConfigurarImpressao (XML_)
    spdProxyNFSe.ComponenteNFSe.Impressao_ImprimirDocumentoCustom "", "", ""
Erro:
    If Err Then TrataErro
End Sub

Private Sub LoadConfig()
    On Error GoTo Erro
    lsComandos.Clear
    
    spdNFSe.LoadConfig (ArqINI)
    
    If spdNFSe.Ambiente = akProducao Then
        lblAmbiente.Visible = True
    Else
        lblAmbiente.Visible = False
    End If
    
    spdNFSeConverter.DiretorioEsquemas = spdNFSe.DiretorioEsquemas
    spdNFSeConverter.DiretorioScripts = spdNFSe.DiretorioEsquemas + "..\Scripts"
    spdNFSeConverter.Cidade = spdNFSe.Cidade
    
    btnExecutar.Enabled = True
    btnCopiaXML.Enabled = True
    
    txtCidade.Text = spdNFSe.Cidade
    txtCNPJ.Text = spdNFSe.CNPJ
    txtIM.Text = spdNFSe.InscricaoMunicipal
    cbCertificado.Text = spdNFSe.NomeCertificado
    txtCidadeComandos.Text = spdNFSe.Cidade
    txtBrasaoCidade.Text = spdProxyNFSe.ComponenteNFSe.DiretorioTemplates + "Impressao\" + spdNFSe.Cidade + "\Brasao.jpg"
    txtLogoEmitente.Text = spdProxyNFSe.ComponenteNFSe.DiretorioTemplates + "Impressao\LogoEmit.jpg"
Erro:
    If Err Then TrataErro
End Sub

Private Sub cmdLoadConfig_Click()
    LoadConfig
End Sub

Private Sub cmdVisualizar_Click()
    On Error GoTo Erro
    Dim XML_ As String
    
    DadosPreenchidos
    XML_ = mmXML.Text
    spdProxyNFSe.ComponenteNFSe.ImpressaoModo = getModoImpressao
    ConfigurarImpressao (XML_)
    spdProxyNFSe.ComponenteNFSe.Impressao_VisualizarDocumentoCustom "", ""
Erro:
    If Err Then TrataErro
End Sub

Private Sub fgParametros_KeyPress(KeyAscii As Integer)
    Select Case KeyAscii
    
    Case vbKeyReturn, vbKeyTab
    'Move para a proxima celula.
    With fgParametros
        If .Col + 1 <= .Cols - 1 Then
            .Col = .Col + 1
        Else
            If .Row + 1 <= .Rows - 1 Then
                .Row = .Row + 1
                .Col = 1
            Else
            .Row = 1
            .Col = 1
            End If
        End If
    End With

    Case vbKeyBack

        With fgParametros
        'remove o ultimo caractere
            If Len(.Text) Then
                .Text = Left(.Text, Len(.Text) - 1)
            End If
        End With

    Case Is < 32

    Case Else
        With fgParametros
            .Text = .Text & Chr(KeyAscii)
        End With
    End Select
End Sub

Private Sub Form_Initialize()
    Dim i As Integer
    Dim vetor_ As Variant
    
    Set spdNFSe = New NFSex.spdNFSeX
    Set spdProxyNFSe = New NFSex.spdProxyNFSeX
    Set spdNFSeConverter = New NFSeConverterX.spdNFSeConverterX
    spdProxyNFSe.ComponenteNFSe = spdNFSe
    
    WebBrowser.Navigate ("http://www.tecno-services.com/imagens/BannerNFe.gif")
    
    ArqINI = App.Path + "\nfseConfig.ini"
    
    SSPrincipal(0).TabVisible(2) = False
    btnExecutar.Enabled = False
    
    FrmPrincipal.Caption = "Tecnospeed NFSe -  Versão: " + spdProxyNFSe.ComponenteNFSe.Versao
      
    optRPS.Value = True
        
End Sub

Private Sub lsComandos_Click()
    Dim nomeComando_, parametros_ As String
    Dim vetor_ As Variant
    Dim i As Integer
    
    fgParametros.Clear
    fgParametros.Rows = 0
    fgParametros.ColWidth(0) = 2000
    fgParametros.ColWidth(1) = 4000
    
    nomeComando_ = lsComandos.List(lsComandos.ListIndex)
    parametros_ = spdNFSe.ObterListaParametrosComando(nomeComando_)
    
    vetor_ = Split(parametros_, ",")
    For i = LBound(vetor_) To UBound(vetor_)
        fgParametros.AddItem vetor_(i)
    Next
End Sub

Public Function DadosPreenchidos() As Boolean
    Dim Cidade_, CNPJ_ As String
    
    Cidade_ = Trim(spdNFSe.Cidade)
    CNPJ_ = Trim(spdNFSe.CNPJ)
    
    DadosPreenchidos = (Cidade_ <> "") And (CNPJ_ <> "")
    
    If DadosPreenchidos = False Then
        Err.Raise 1, "", "Favor configurar o componente antes de prosseguir!"
    End If
    
End Function

Private Sub EnvioSincrono()
    Dim ArquivoLog_, XML_, XMLEscaped_  As String
    Dim fso_ As New FileSystemObject
    Dim arqtxt_ As TextStream
    
    XML_ = spdProxyNFSe.EnviarSincrono(mmXML.Text)
    
    mmXML.Text = XML_
    
    XMLEscaped_ = spdProxyNFSe.ComponenteNFSe.ExtractEscapedContent(XML_)
    mmXMLFormatado.Text = spdProxyNFSe.ComponenteNFSe.ReformatXML(XMLEscaped_)
    
    ArquivoLog_ = spdProxyNFSe.ComponenteNFSe.UltimoLogRecibo
    Set arqtxt_ = fso_.OpenTextFile(ArquivoLog_)
    
    XML_ = arqtxt_.ReadAll
    mmCSV.Text = spdNFSeConverter.ConverterRetEnvioSincronoNFSe(XML_, "")

    getRetornoEnvioSincrono (XML_)

    optNFSe.Value = True
            
    If mmXML.Text = "-1;" Then
        mmXMLFormatado.Text = "Envio Síncrono de RPS sem sucesso. A resposta do servidor está gravada no arquivo de log localizado em: " + ArquivoLog_
    End If
End Sub

Private Sub EnvioAssincrono()
    Dim Protocolo_, Sub_, ArquivoLog_, XML_  As String
    Dim fso_ As New FileSystemObject
    Dim arqtxt_ As TextStream
    
    Protocolo_ = spdProxyNFSe.Enviar(mmXML.Text)
    Sub_ = Mid$(Protocolo_, 1, 3)
    
    mmXMLFormatado.Text = ""
    
    ArquivoLog_ = spdProxyNFSe.ComponenteNFSe.UltimoLogRecibo
    Set arqtxt_ = fso_.OpenTextFile(ArquivoLog_)
    
    XML_ = arqtxt_.ReadAll
    mmCSV.Text = spdNFSeConverter.ConverterRetEnvioNFSe(XML_, "")

    getRetornoEnvio (XML_)
            
    If Sub_ = "-1;" Then
        mmXML.Text = Protocolo_
        mmXMLFormatado.Text = "Envio de RPS sem sucesso. A resposta do servidor está gravada no arquivo de log localizado em: " + ArquivoLog_
    Else
        mmXMLFormatado.Text = "Protocolo = " + Protocolo_
        txtProtocolo.Text = Protocolo_
        mmXML.Text = Protocolo_
    End If

End Sub
