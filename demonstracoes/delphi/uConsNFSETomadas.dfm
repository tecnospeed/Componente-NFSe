object FrmConsNFSETomadas: TFrmConsNFSETomadas
  Left = 517
  Top = 289
  Caption = 'Consulta NFSe Tomadas'
  ClientHeight = 420
  ClientWidth = 212
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
    Left = 1
    Top = 3
    Width = 198
    Height = 378
    Caption = 'Dados para consulta'
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 23
      Width = 79
      Height = 13
      Caption = 'Nome da Cidade'
    end
    object Label2: TLabel
      Left = 9
      Top = 66
      Width = 100
      Height = 13
      Caption = 'Documento Tomador'
    end
    object Label3: TLabel
      Left = 9
      Top = 111
      Width = 146
      Height = 13
      Caption = 'Incri'#231#227'o Municipal do Tomador'
    end
    object lblDocumentoPrestador: TLabel
      Left = 8
      Top = 155
      Width = 159
      Height = 13
      Caption = 'Documento Prestador Consulente'
    end
    object lblIMPrestador: TLabel
      Left = 9
      Top = 198
      Width = 166
      Height = 13
      Caption = 'Inc. Mun. do Prestador/Consulente'
    end
    object lblDataInicial: TLabel
      Left = 9
      Top = 241
      Width = 110
      Height = 13
      Caption = 'Data Inicial yyyy-mm-dd'
    end
    object lblDataFinal: TLabel
      Left = 9
      Top = 284
      Width = 105
      Height = 13
      Caption = 'Data Final yyyy-mm-dd'
    end
    object lblPagina: TLabel
      Left = 9
      Top = 327
      Width = 33
      Height = 13
      Caption = 'Pagina'
    end
    object edtNomeCidade: TEdit
      Left = 8
      Top = 37
      Width = 181
      Height = 21
      TabOrder = 0
    end
    object edtDocumentoTomador: TEdit
      Left = 8
      Top = 80
      Width = 181
      Height = 21
      TabOrder = 1
    end
    object edtIMTomador: TEdit
      Left = 8
      Top = 126
      Width = 181
      Height = 21
      TabOrder = 2
    end
    object edtDocumentoPrestador: TEdit
      Left = 8
      Top = 171
      Width = 181
      Height = 21
      TabOrder = 3
    end
    object edtIMPrestador: TEdit
      Left = 8
      Top = 214
      Width = 181
      Height = 21
      TabOrder = 4
    end
    object edtDataInicial: TEdit
      Left = 8
      Top = 257
      Width = 181
      Height = 21
      TabOrder = 5
    end
    object edtDataFinal: TEdit
      Left = 8
      Top = 300
      Width = 181
      Height = 21
      TabOrder = 6
    end
    object edtPagina: TEdit
      Left = 8
      Top = 343
      Width = 181
      Height = 21
      TabOrder = 7
    end
  end
  object btnConsultarNFSeTomadas: TButton
    Left = 3
    Top = 389
    Width = 75
    Height = 25
    Caption = 'Consultar'
    ModalResult = 1
    TabOrder = 1
  end
  object btnCancelar: TButton
    Left = 126
    Top = 389
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    ModalResult = 3
    TabOrder = 2
  end
end
