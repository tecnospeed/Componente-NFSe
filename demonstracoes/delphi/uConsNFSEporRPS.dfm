object FrmConsNFSEporRPS: TFrmConsNFSEporRPS
  Left = 517
  Top = 289
  Width = 219
  Height = 244
  Caption = 'Consulta NFSe por RPS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 3
    Top = 3
    Width = 198
    Height = 174
    Caption = 'Dados RPS para Consulta '
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 23
      Width = 62
      Height = 13
      Caption = 'N'#250'mero RPS'
    end
    object Label2: TLabel
      Left = 9
      Top = 73
      Width = 49
      Height = 13
      Caption = 'S'#233'rie RPS'
    end
    object Label3: TLabel
      Left = 9
      Top = 124
      Width = 46
      Height = 13
      Caption = 'Tipo RPS'
    end
    object edNumRPS: TEdit
      Left = 8
      Top = 37
      Width = 181
      Height = 21
      TabOrder = 0
    end
    object edSerieRPS: TEdit
      Left = 8
      Top = 87
      Width = 181
      Height = 21
      TabOrder = 1
    end
    object edTPRps: TEdit
      Left = 8
      Top = 137
      Width = 181
      Height = 21
      TabOrder = 2
    end
  end
  object btnConsultarNFSe: TButton
    Left = 3
    Top = 181
    Width = 75
    Height = 25
    Caption = 'Consultar'
    ModalResult = 1
    TabOrder = 1
  end
  object btnCancelar: TButton
    Left = 126
    Top = 181
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    ModalResult = 3
    TabOrder = 2
  end
end
