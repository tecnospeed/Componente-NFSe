VERSION 5.00
Begin VB.Form frmConsultaLote 
   Caption         =   "Consulta NFSe por RPS"
   ClientHeight    =   2655
   ClientLeft      =   9810
   ClientTop       =   4845
   ClientWidth     =   2670
   LinkTopic       =   "Form1"
   ScaleHeight     =   2655
   ScaleWidth      =   2670
   Begin VB.CommandButton cmdCancelar1 
      Caption         =   "Cancelar"
      Height          =   375
      Left            =   1440
      TabIndex        =   8
      Top             =   2160
      Width           =   1215
   End
   Begin VB.CommandButton cmdConsultar1 
      Caption         =   "Consultar"
      Height          =   375
      Left            =   0
      TabIndex        =   7
      Top             =   2160
      Width           =   1215
   End
   Begin VB.Frame Frame1 
      Caption         =   "Dados RPS para Consulta"
      Height          =   2055
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   2655
      Begin VB.TextBox txtTipoRPS 
         Height          =   285
         Left            =   120
         TabIndex        =   6
         Top             =   1680
         Width           =   2415
      End
      Begin VB.TextBox txtSerieRPS 
         Height          =   285
         Left            =   120
         TabIndex        =   4
         Top             =   1080
         Width           =   2415
      End
      Begin VB.TextBox txtNumeroRPS 
         Height          =   285
         Left            =   120
         TabIndex        =   2
         Top             =   480
         Width           =   2415
      End
      Begin VB.Label Label3 
         Caption         =   "Tipo RPS"
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   1440
         Width           =   1095
      End
      Begin VB.Label Label2 
         Caption         =   "Série RPS"
         Height          =   255
         Left            =   120
         TabIndex        =   3
         Top             =   840
         Width           =   1095
      End
      Begin VB.Label Label1 
         Caption         =   "Número RPS"
         Height          =   255
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   1095
      End
   End
End
Attribute VB_Name = "frmConsultaLote"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCancelar1_Click()
    Unload Me
End Sub

Private Sub cmdConsultar1_Click()
    FrmPrincipal.ConsultarNFSeporRPS
    Unload Me
End Sub
