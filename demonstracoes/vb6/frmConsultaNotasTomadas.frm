VERSION 5.00
Begin VB.Form frmConsultaNotasTomadas 
   Caption         =   "Consultar Notas Tomadas"
   ClientHeight    =   3990
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   5700
   LinkTopic       =   "Form1"
   ScaleHeight     =   3990
   ScaleWidth      =   5700
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtDocumentoTomador 
      Height          =   285
      Left            =   120
      TabIndex        =   6
      Top             =   1080
      Width           =   2535
   End
   Begin VB.CommandButton cmdCancelar 
      Caption         =   "Cancelar"
      Height          =   375
      Left            =   1680
      TabIndex        =   2
      Top             =   3480
      Width           =   1215
   End
   Begin VB.CommandButton cmdConsultarNotasTomadas 
      Caption         =   "Consultar"
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   3480
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      Caption         =   "Dados Consulta Notas Tomadas"
      Height          =   3375
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   5655
      Begin VB.TextBox txtParamsExtras 
         Height          =   285
         Left            =   3000
         TabIndex        =   20
         Top             =   2880
         Width           =   2535
      End
      Begin VB.TextBox txtPagina 
         Height          =   285
         Left            =   3000
         TabIndex        =   18
         Top             =   2280
         Width           =   2535
      End
      Begin VB.TextBox txtInscricaoMunicipalPrestador 
         Height          =   285
         Left            =   120
         TabIndex        =   16
         Top             =   2880
         Width           =   2535
      End
      Begin VB.TextBox txtDataFinal 
         Height          =   285
         Left            =   3000
         TabIndex        =   14
         Top             =   1680
         Width           =   2535
      End
      Begin VB.TextBox txtDataInicial 
         Height          =   285
         Left            =   3000
         TabIndex        =   12
         Top             =   1080
         Width           =   2535
      End
      Begin VB.TextBox txtCnpjPrestador 
         Height          =   285
         Left            =   120
         TabIndex        =   10
         Top             =   2280
         Width           =   2535
      End
      Begin VB.TextBox txtInscricaoMunicipalTomador 
         Height          =   285
         Left            =   120
         TabIndex        =   8
         Top             =   1680
         Width           =   2535
      End
      Begin VB.TextBox txtCidade 
         Height          =   285
         Left            =   120
         TabIndex        =   4
         Top             =   480
         Width           =   5415
      End
      Begin VB.Label Label8 
         Caption         =   "Parâmetros Extras"
         Height          =   255
         Left            =   3000
         TabIndex        =   19
         Top             =   2640
         Width           =   1575
      End
      Begin VB.Label Label7 
         Caption         =   "Página"
         Height          =   255
         Left            =   3000
         TabIndex        =   17
         Top             =   2040
         Width           =   1815
      End
      Begin VB.Label Label6 
         Caption         =   "Inscrição Municipal do Prestador"
         Height          =   255
         Left            =   120
         TabIndex        =   15
         Top             =   2640
         Width           =   3855
      End
      Begin VB.Label Label5 
         Caption         =   "Data Final (AAAA-MM-DD)"
         Height          =   255
         Left            =   3000
         TabIndex        =   13
         Top             =   1440
         Width           =   2295
      End
      Begin VB.Label Label4 
         Caption         =   "Data Inicial (AAAA-MM-DD)"
         Height          =   255
         Left            =   3000
         TabIndex        =   11
         Top             =   840
         Width           =   2175
      End
      Begin VB.Label Label3 
         Caption         =   "CNPJ do Prestador"
         Height          =   255
         Left            =   120
         TabIndex        =   9
         Top             =   2040
         Width           =   1575
      End
      Begin VB.Label Label2 
         Caption         =   "Inscrição Municipal do Tomador"
         Height          =   255
         Left            =   120
         TabIndex        =   7
         Top             =   1440
         Width           =   2295
      End
      Begin VB.Label Label1 
         Caption         =   "CPF/CNPJ do Tomador"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   5
         Top             =   840
         Width           =   1935
      End
      Begin VB.Label Label1 
         Caption         =   "Cidade"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   3
         Top             =   240
         Width           =   1095
      End
   End
End
Attribute VB_Name = "frmConsultaNotasTomadas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCancelar_Click()
    Unload Me
End Sub

Private Sub cmdConsultarNotasTomadas_Click()
    FrmPrincipal.ConsultarNotasTomadas
    Unload Me
End Sub

