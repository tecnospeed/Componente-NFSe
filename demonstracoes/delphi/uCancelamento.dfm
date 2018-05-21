object frmCancelamento: TfrmCancelamento
  Left = 488
  Top = 184
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderStyle = bsDialog
  Caption = 'Cancelamento de NFSe'
  ClientHeight = 440
  ClientWidth = 630
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object wbTabelaDeChaves: TWebBrowser
    Left = 3
    Top = 136
    Width = 624
    Height = 297
    TabOrder = 2
    ControlData = {
      4C0000007E400000B21E00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126209000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object pnlCancelamento: TPanel
    Left = 3
    Top = 3
    Width = 625
    Height = 101
    TabOrder = 0
    object edtChaveCancelamento: TLabeledEdit
      Left = 34
      Top = 25
      Width = 561
      Height = 21
      EditLabel.Width = 118
      EditLabel.Height = 13
      EditLabel.Caption = 'Digite a Chave da NFSe:'
      TabOrder = 0
      OnChange = edtChaveCancelamentoChange
    end
    object btnFechar: TButton
      Left = 493
      Top = 65
      Width = 101
      Height = 25
      Cancel = True
      Caption = '&Fechar'
      TabOrder = 2
      OnClick = btnFecharClick
    end
    object btnCancelar: TButton
      Left = 34
      Top = 65
      Width = 150
      Height = 25
      Caption = '&Cancelar NFSe'
      TabOrder = 1
      OnClick = btnCancelarClick
    end
  end
  object cbTabelaDeChaves: TCheckBox
    Left = 8
    Top = 112
    Width = 537
    Height = 17
    Caption = 'Mostrar Tabela de Chaves'
    TabOrder = 1
    OnClick = cbTabelaDeChavesClick
  end
end
