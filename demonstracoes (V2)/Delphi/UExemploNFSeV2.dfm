object frmExemplo: TfrmExemplo
  Left = 481
  Top = 118
  Width = 634
  Height = 686
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pcMensagens: TPageControl
    Left = 0
    Top = 258
    Width = 618
    Height = 389
    ActivePage = tsFormatado
    Align = alClient
    BiDiMode = bdLeftToRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object tsXML: TTabSheet
      Caption = 'XML envio, somente para impress'#227'o'
      DesignSize = (
        610
        361)
      object mmXMLEnvio: TMemo
        Left = 2
        Top = 2
        Width = 614
        Height = 369
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        WordWrap = False
        OnKeyDown = mmXMLEnvioKeyDown
      end
    end
    object tsXMLFormatado: TTabSheet
      Caption = 'XML'
      ImageIndex = 1
      DesignSize = (
        610
        361)
      object mmXML: TMemo
        Left = 2
        Top = 2
        Width = 614
        Height = 369
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        WordWrap = False
        OnKeyDown = mmXMLKeyDown
      end
    end
    object tsJSON: TTabSheet
      Caption = 'JSON'
      ImageIndex = 2
      DesignSize = (
        610
        361)
      object mmJson: TMemo
        Left = 2
        Top = 2
        Width = 614
        Height = 369
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        WordWrap = False
        OnKeyDown = mmJsonKeyDown
      end
    end
    object tsFormatado: TTabSheet
      Caption = 'Campos Formatados'
      DesignSize = (
        610
        361)
      object mmTipado: TMemo
        Left = 2
        Top = 2
        Width = 614
        Height = 369
        Alignment = taRightJustify
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        OnKeyDown = mmTipadoKeyDown
      end
    end
  end
  object pcDados: TPageControl
    Left = 0
    Top = 0
    Width = 618
    Height = 258
    ActivePage = tsCidadesHomologadas
    Align = alTop
    TabOrder = 1
    object tsNFSe: TTabSheet
      Caption = 'Testando autoriza'#231#227'o e consultas'
      object gbOperacoesNFSe: TGroupBox
        Left = 191
        Top = 36
        Width = 427
        Height = 194
        Caption = 'Opera'#231#245'es'
        TabOrder = 0
        object Label7: TLabel
          Left = 7
          Top = 13
          Width = 53
          Height = 13
          Caption = 'Certificado:'
        end
        object lblAmbiente: TLabel
          Left = 305
          Top = 6
          Width = 120
          Height = 13
          Caption = 'Amb. de PRODU'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object btnConfigArquivoINI: TButton
          Left = 5
          Top = 50
          Width = 200
          Height = 30
          Caption = '&1. Configurar Arquivo INI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btnConfigArquivoINIClick
        end
        object btnLoadConfig: TButton
          Left = 5
          Top = 81
          Width = 200
          Height = 30
          Caption = '&2. LoadConfig'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btnLoadConfigClick
        end
        object btnEnviarRPS: TButton
          Left = 5
          Top = 113
          Width = 200
          Height = 30
          Caption = '&3. Enviar RPS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btnEnviarRPSClick
        end
        object btnCancelar: TButton
          Left = 208
          Top = 81
          Width = 200
          Height = 30
          Caption = '&5. Cancelar NFSe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = btnCancelarClick
        end
        object btnConsultarNota: TButton
          Left = 208
          Top = 49
          Width = 200
          Height = 30
          Caption = '&4. Consultar Nota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = btnConsultarNotaClick
        end
        object cbListaCertificados: TComboBox
          Left = 6
          Top = 26
          Width = 403
          Height = 21
          DropDownCount = 10
          ItemHeight = 0
          TabOrder = 5
          OnDropDown = cbListaCertificadosDropDown
        end
        object edtNumeroRPS: TLabeledEdit
          Left = 286
          Top = 113
          Width = 122
          Height = 21
          EditLabel.Width = 68
          EditLabel.Height = 13
          EditLabel.Caption = 'Numero RPS: '
          LabelPosition = lpLeft
          TabOrder = 6
        end
        object edtSerieRPS: TLabeledEdit
          Left = 286
          Top = 137
          Width = 122
          Height = 21
          EditLabel.Width = 55
          EditLabel.Height = 13
          EditLabel.Caption = 'Serie RPS: '
          LabelPosition = lpLeft
          TabOrder = 7
        end
        object edtTipoRPS: TLabeledEdit
          Left = 286
          Top = 161
          Width = 122
          Height = 21
          EditLabel.Width = 52
          EditLabel.Height = 13
          EditLabel.Caption = 'Tipo RPS: '
          LabelPosition = lpLeft
          TabOrder = 8
        end
        object edtNumeroNFSe: TLabeledEdit
          Left = 86
          Top = 145
          Width = 119
          Height = 21
          EditLabel.Width = 73
          EditLabel.Height = 13
          EditLabel.Caption = 'Numero NFSe: '
          LabelPosition = lpLeft
          TabOrder = 9
        end
        object edtChaveCancelamento: TLabeledEdit
          Left = 121
          Top = 169
          Width = 84
          Height = 21
          EditLabel.Width = 108
          EditLabel.Height = 13
          EditLabel.Caption = 'Chave Cancelamento: '
          LabelPosition = lpLeft
          TabOrder = 10
        end
      end
      object gbConfigNFSe: TGroupBox
        Left = 0
        Top = 0
        Width = 191
        Height = 230
        Align = alLeft
        Caption = 'Configura'#231#245'es'
        TabOrder = 1
        object edtCidade: TLabeledEdit
          Left = 6
          Top = 35
          Width = 179
          Height = 21
          EditLabel.Width = 36
          EditLabel.Height = 13
          EditLabel.Caption = 'Cidade:'
          TabOrder = 0
        end
        object edtCNPJ: TLabeledEdit
          Left = 6
          Top = 83
          Width = 178
          Height = 21
          EditLabel.Width = 30
          EditLabel.Height = 13
          EditLabel.Caption = 'CNPJ:'
          TabOrder = 1
        end
        object edtInscMunicipal: TLabeledEdit
          Left = 7
          Top = 130
          Width = 179
          Height = 21
          EditLabel.Width = 94
          EditLabel.Height = 13
          EditLabel.Caption = 'Inscri'#231#227'o Municipal:'
          TabOrder = 2
        end
        object edtNumProtocolo: TLabeledEdit
          Left = 6
          Top = 176
          Width = 180
          Height = 21
          EditLabel.Width = 103
          EditLabel.Height = 13
          EditLabel.Caption = 'N'#250'mero do Protocolo:'
          TabOrder = 3
        end
        object btnAtualizaArquivos: TButton
          Left = 16
          Top = 200
          Width = 153
          Height = 25
          Caption = 'Atualizar Arquivos Cidade'
          TabOrder = 4
          OnClick = btnAtualizaArquivosClick
        end
      end
      object edtCNPJSoftwareHouse: TLabeledEdit
        Left = 199
        Top = 16
        Width = 142
        Height = 21
        EditLabel.Width = 109
        EditLabel.Height = 13
        EditLabel.Caption = 'CNPJ SoftwareHouse: '
        TabOrder = 2
        Text = '08187168000160'
      end
      object edtTokenSoftwareHouse: TLabeledEdit
        Left = 391
        Top = 16
        Width = 195
        Height = 21
        EditLabel.Width = 113
        EditLabel.Height = 13
        EditLabel.Caption = 'Token SoftwareHouse: '
        TabOrder = 3
      end
    end
    object tsConfiguraImpressao: TTabSheet
      Caption = 'Testando impress'#227'o'
      ImageIndex = 2
      object gbConfiguracoes: TGroupBox
        Left = 0
        Top = 0
        Width = 610
        Height = 230
        Align = alClient
        Caption = 'Configura'#231#245'es '
        TabOrder = 0
        object Label4: TLabel
          Left = 8
          Top = 19
          Width = 88
          Height = 13
          Caption = 'Logotipo Emitente:'
          FocusControl = edtLogoEmitente
        end
        object edtLogoEmitente: TEdit
          Left = 8
          Top = 35
          Width = 553
          Height = 21
          TabOrder = 0
        end
        object btnLogoTipoEmitente: TButton
          Left = 565
          Top = 35
          Width = 26
          Height = 21
          Caption = '...'
          TabOrder = 1
          OnClick = btnLogoTipoEmitenteClick
        end
        object gbOperacaoImpressao: TGroupBox
          Left = 3
          Top = 60
          Width = 430
          Height = 133
          TabOrder = 2
          object btnEditarDocumento: TButton
            Left = 131
            Top = 12
            Width = 112
            Height = 25
            Caption = '&Editar Documento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = btnEditarDocumentoClick
          end
          object btnImprimir: TButton
            Left = 4
            Top = 12
            Width = 112
            Height = 25
            Caption = '&Imprimir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = btnImprimirClick
          end
          object btnExportar: TButton
            Left = 5
            Top = 44
            Width = 111
            Height = 26
            Caption = 'E&xportar para PDF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnClick = btnExportarClick
          end
          object btnVisualizar: TButton
            Left = 131
            Top = 45
            Width = 112
            Height = 26
            Caption = '&Visualizar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = btnVisualizarClick
          end
          object ckbEnviarEmailPDF: TCheckBox
            Left = 7
            Top = 76
            Width = 97
            Height = 15
            Caption = 'Enviar por Email'
            TabOrder = 4
          end
        end
      end
    end
    object tsConsultaTomadas: TTabSheet
      Caption = 'Consultar Notas Tomadas'
      ImageIndex = 2
      object GroupBox1: TGroupBox
        Left = 1
        Top = 0
        Width = 616
        Height = 233
        Caption = 'Dados para consulta'
        TabOrder = 0
        object Label1: TLabel
          Left = 9
          Top = 13
          Width = 79
          Height = 13
          Caption = 'Nome da Cidade'
        end
        object Label2: TLabel
          Left = 9
          Top = 56
          Width = 100
          Height = 13
          Caption = 'Documento Tomador'
        end
        object Label3: TLabel
          Left = 9
          Top = 101
          Width = 146
          Height = 13
          Caption = 'Incri'#231#227'o Municipal do Tomador'
        end
        object lblDocumentoPrestador: TLabel
          Left = 8
          Top = 145
          Width = 161
          Height = 13
          Caption = 'Documento Prestador/Consulente'
        end
        object lblIMPrestador: TLabel
          Left = 9
          Top = 188
          Width = 166
          Height = 13
          Caption = 'Inc. Mun. do Prestador/Consulente'
        end
        object lblDataInicial: TLabel
          Left = 211
          Top = 16
          Width = 110
          Height = 13
          Caption = 'Data Inicial yyyy-mm-dd'
        end
        object lblDataFinal: TLabel
          Left = 211
          Top = 59
          Width = 105
          Height = 13
          Caption = 'Data Final yyyy-mm-dd'
        end
        object lblPagina: TLabel
          Left = 211
          Top = 102
          Width = 33
          Height = 13
          Caption = 'Pagina'
        end
        object edtNomeCidade: TEdit
          Left = 8
          Top = 27
          Width = 181
          Height = 21
          TabOrder = 0
        end
        object edtDocumentoTomador: TEdit
          Left = 8
          Top = 70
          Width = 181
          Height = 21
          TabOrder = 1
        end
        object edtIMTomador: TEdit
          Left = 8
          Top = 116
          Width = 181
          Height = 21
          TabOrder = 2
        end
        object edtDocumentoPrestador: TEdit
          Left = 8
          Top = 161
          Width = 181
          Height = 21
          TabOrder = 3
        end
        object edtIMPrestador: TEdit
          Left = 8
          Top = 204
          Width = 181
          Height = 21
          TabOrder = 4
        end
        object edtDataInicial: TEdit
          Left = 210
          Top = 32
          Width = 181
          Height = 21
          TabOrder = 5
        end
        object edtDataFinal: TEdit
          Left = 210
          Top = 75
          Width = 181
          Height = 21
          TabOrder = 6
        end
        object edtPagina: TEdit
          Left = 210
          Top = 118
          Width = 181
          Height = 21
          TabOrder = 7
        end
        object btnConsultarNotasTomadas: TButton
          Left = 208
          Top = 168
          Width = 185
          Height = 30
          Caption = '&Consultar Notas Tomadas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnClick = btnConsultarNotasTomadasClick
        end
      end
    end
    object tsCidadesHomologadas: TTabSheet
      Caption = 'Cidades Homologadas'
      ImageIndex = 3
      object btnListarCidades: TButton
        Left = 214
        Top = 27
        Width = 156
        Height = 25
        Caption = 'Listar Cidades Homologadas'
        TabOrder = 0
        OnClick = btnListarCidadesClick
      end
    end
  end
  object OpnDlgTx2: TOpenDialog
    Filter = 'Arquivos Tx2|*.tx2'
    Left = 555
    Top = 4
  end
  object svDlgExportar: TSaveDialog
    DefaultExt = 'pdf'
    Filter = 'Arquivos pdf|*.pdf'
    Left = 495
    Top = 4
  end
  object OpnDlgLogoTipo: TOpenDialog
    DefaultExt = 'jpg'
    Filter = 'Imagens JPEG (*.jpg)|*.jpg'
    Options = [ofHideReadOnly, ofNoChangeDir, ofFileMustExist, ofEnableSizing]
    Left = 584
    Top = 4
  end
  object NFSe: TspdNFSe
    Cidade = 'BeloHorizonte'
    DiretorioLogErro = 'C:\Program Files (x86)\Borland\Delphi7\Bin\LogErro\'
    Ambiente = akHomologacao
    DiretorioLog = 'Log\'
    TimeOut = 0
    IgnoreInvalidCertificates = False
    EmailSettings.Autenticacao = False
    EmailSettings.TimeOut = 30000
    EmailSettings.IsContentHTML = False
    EmailSettings.UseSecureBlackBox = False
    TipoCertificado = ckFile
    RemoverAcentos = True
    SalvarLogsEmDisco = True
    DiagnosticMode = True
    ConexaoSegura = True
    DiretorioXmlImpressao = 'XmlImpressao\'
    DelimitadorDoCampoCSV = ';'
    DelimitadorDaLinhaCSV = #13#10
    Left = 525
    Top = 5
  end
end
