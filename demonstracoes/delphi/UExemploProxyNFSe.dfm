object frmExemplo: TfrmExemplo
  Left = 300
  Top = 1
  Width = 751
  Height = 734
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    743
    707)
  PixelsPerInch = 96
  TextHeight = 13
  object wbBanner: TWebBrowser
    Left = -27
    Top = -17
    Width = 791
    Height = 141
    TabOrder = 1
    ControlData = {
      4C000000C1510000930E00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object pcDados: TPageControl
    Left = 0
    Top = 88
    Width = 612
    Height = 258
    ActivePage = tsProxyNFSe
    TabOrder = 0
    object tsProxyNFSe: TTabSheet
      Caption = 'Envio de Notas pelo Componente ProxyNFSe'
      object gbOperacoesProxyNFSe: TGroupBox
        Left = 192
        Top = 1
        Width = 412
        Height = 229
        Caption = 'Opera'#231#245'es'
        TabOrder = 0
        object Label7: TLabel
          Left = 6
          Top = 14
          Width = 53
          Height = 13
          Caption = 'Certificado:'
        end
        object btnConfigArquivoINI: TButton
          Left = 5
          Top = 55
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
          Top = 88
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
        object btnGerarXMLviaTX2: TButton
          Left = 5
          Top = 121
          Width = 200
          Height = 30
          Caption = '&3. Gerar XML via TX2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btnGerarXMLviaTX2Click
        end
        object btnAssinarXML: TButton
          Left = 5
          Top = 155
          Width = 200
          Height = 30
          Caption = '&4. Assinar XML'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = btnAssinarXMLClick
        end
        object btnCancelar: TButton
          Left = 209
          Top = 155
          Width = 200
          Height = 30
          Caption = '&9. Cancelar NFSe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnClick = btnCancelarClick
        end
        object btnConsultarNFSe: TButton
          Left = 209
          Top = 121
          Width = 200
          Height = 30
          Caption = '&8. Consultar NFSe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnClick = btnConsultarNFSeClick
        end
        object btnConsultarLoteRPS: TButton
          Left = 209
          Top = 55
          Width = 200
          Height = 30
          Caption = '&6. Consultar Lote RPS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = btnConsultarLoteRPSClick
        end
        object cbListaCertificados: TComboBox
          Left = 6
          Top = 31
          Width = 403
          Height = 21
          DropDownCount = 10
          ItemHeight = 13
          TabOrder = 9
          OnDropDown = cbListaCertificadosDropDown
        end
        object btnConsultarNFSeporRPS: TButton
          Left = 209
          Top = 88
          Width = 200
          Height = 30
          Caption = '&7. Consultar NFSe por RPS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = btnConsultarNFSeporRPSClick
        end
        object btnEnviarRPS: TButton
          Left = 82
          Top = 190
          Width = 123
          Height = 30
          Caption = '&5. Enviar RPS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = btnEnviarRPSClick
        end
        object rbTipoEnvioSin: TRadioButton
          Left = 6
          Top = 188
          Width = 68
          Height = 17
          Hint = 
            'Marque esta op'#231#227'o quando o padr'#227'o da cidade permitir o tipo S'#237'nc' +
            'rono de Envio'
          Caption = 'S'#237'ncrono'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
        end
        object rbTipoEnvioAss: TRadioButton
          Left = 6
          Top = 207
          Width = 72
          Height = 17
          Hint = 
            'Marque esta op'#231#227'o quando o padr'#227'o da cidade permitir o tipo Ass'#237 +
            'ncrono de Envio'
          Caption = 'Ass'#237'ncrono'
          Checked = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          TabStop = True
        end
      end
      object gbConfigProxyNFSe: TGroupBox
        Left = 0
        Top = 1
        Width = 191
        Height = 229
        Caption = 'Configura'#231#245'es'
        TabOrder = 1
        object edtCidade: TLabeledEdit
          Left = 6
          Top = 38
          Width = 179
          Height = 21
          EditLabel.Width = 36
          EditLabel.Height = 13
          EditLabel.Caption = 'Cidade:'
          TabOrder = 0
        end
        object edtCNPJ: TLabeledEdit
          Left = 7
          Top = 82
          Width = 178
          Height = 21
          EditLabel.Width = 30
          EditLabel.Height = 13
          EditLabel.Caption = 'CNPJ:'
          TabOrder = 1
        end
        object edtInscMunicipal: TLabeledEdit
          Left = 7
          Top = 128
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
        object ckbModoAvancado: TCheckBox
          Left = 8
          Top = 204
          Width = 97
          Height = 17
          Caption = 'Modo &Avan'#231'ado'
          TabOrder = 4
          OnClick = ckbModoAvancadoClick
        end
      end
    end
    object tsConfiguraImpressao: TTabSheet
      Caption = 'Configurar Impress'#227'o'
      ImageIndex = 2
      object gbConfiguracoes: TGroupBox
        Left = 0
        Top = 1
        Width = 601
        Height = 229
        Caption = 'Configura'#231#245'es '
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 28
          Width = 87
          Height = 13
          Caption = 'Bras'#227'o da Cidade:'
          FocusControl = edtBrasaoCidade
        end
        object Label4: TLabel
          Left = 8
          Top = 71
          Width = 88
          Height = 13
          Caption = 'Logotipo Emitente:'
          FocusControl = edtLogoEmitente
        end
        object Label5: TLabel
          Left = 8
          Top = 114
          Width = 103
          Height = 13
          Caption = 'T'#237'tulo do RPS/NFSe:'
          FocusControl = edtTituloImpressao
        end
        object lblSecretaria: TLabel
          Left = 303
          Top = 114
          Width = 164
          Height = 13
          Caption = 'Secretaria respons'#225'vel pela NFSe:'
          FocusControl = edtSecretaria
        end
        object lblSubtituloNFSe: TLabel
          Left = 8
          Top = 157
          Width = 109
          Height = 13
          Caption = 'Subt'#237'tulo para a NFSe:'
          FocusControl = edtSubtituloNFSe
        end
        object lblSubtituloRPS: TLabel
          Left = 303
          Top = 157
          Width = 104
          Height = 13
          Caption = 'Subt'#237'tulo para o RPS:'
          FocusControl = edtSubtituloRPS
        end
        object edtBrasaoCidade: TEdit
          Left = 8
          Top = 44
          Width = 553
          Height = 21
          TabOrder = 0
        end
        object edtLogoEmitente: TEdit
          Left = 8
          Top = 87
          Width = 553
          Height = 21
          TabOrder = 2
        end
        object edtTituloImpressao: TEdit
          Left = 8
          Top = 130
          Width = 289
          Height = 21
          TabOrder = 4
        end
        object btnLogoTipoEmitente: TButton
          Left = 565
          Top = 87
          Width = 26
          Height = 21
          Caption = '...'
          TabOrder = 3
          OnClick = btnLogoTipoEmitenteClick
        end
        object btnBrasaoCidade: TButton
          Left = 565
          Top = 44
          Width = 26
          Height = 21
          Caption = '...'
          TabOrder = 1
          OnClick = btnBrasaoCidadeClick
        end
        object edtSecretaria: TEdit
          Left = 303
          Top = 130
          Width = 289
          Height = 21
          TabOrder = 5
        end
        object edtSubtituloNFSe: TEdit
          Left = 8
          Top = 173
          Width = 289
          Height = 21
          TabOrder = 6
        end
        object edtSubtituloRPS: TEdit
          Left = 303
          Top = 173
          Width = 289
          Height = 21
          TabOrder = 7
        end
      end
    end
    object tsComandos: TTabSheet
      Caption = 'Envio de Notas Utilizando Comandos'
      ImageIndex = 1
      object gbComandos: TGroupBox
        Left = 0
        Top = 1
        Width = 604
        Height = 229
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 49
          Width = 53
          Height = 13
          Caption = 'Comandos:'
        end
        object Label2: TLabel
          Left = 170
          Top = 50
          Width = 56
          Height = 13
          Caption = 'Par'#226'metros:'
        end
        object edtComandoCidade: TLabeledEdit
          Left = 8
          Top = 25
          Width = 158
          Height = 21
          EditLabel.Width = 36
          EditLabel.Height = 13
          EditLabel.Caption = 'Cidade:'
          TabOrder = 0
        end
        object btnComandoLoadConfig: TButton
          Left = 170
          Top = 23
          Width = 142
          Height = 24
          Caption = '&LoadConfig'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnComandoLoadConfigClick
        end
        object lbComandos: TListBox
          Left = 8
          Top = 66
          Width = 158
          Height = 132
          ItemHeight = 13
          TabOrder = 2
          OnClick = lbComandosClick
        end
        object sgParametros: TStringGrid
          Left = 170
          Top = 68
          Width = 431
          Height = 130
          ColCount = 2
          DefaultRowHeight = 18
          FixedCols = 0
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
          TabOrder = 3
          ColWidths = (
            139
            270)
        end
        object btnComandoCopiarParametro: TButton
          Left = 440
          Top = 198
          Width = 160
          Height = 26
          Caption = '&Copiar resposta para par'#226'metro'
          TabOrder = 4
          OnClick = btnComandoCopiarParametroClick
        end
        object btnComandoExecutar: TButton
          Left = 7
          Top = 199
          Width = 159
          Height = 25
          Caption = '&Executar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = btnComandoExecutarClick
        end
      end
    end
  end
  object pcMensagens: TPageControl
    Left = 0
    Top = 347
    Width = 743
    Height = 374
    ActivePage = tsXML
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object tsXML: TTabSheet
      Caption = 'XML Formatado'
      DesignSize = (
        735
        346)
      object mmXMLFormatado: TMemo
        Left = 2
        Top = 2
        Width = 731
        Height = 342
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
        OnKeyDown = mmXMLFormatadoKeyDown
      end
    end
    object tsXMLFormatado: TTabSheet
      Caption = 'XML'
      ImageIndex = 1
      DesignSize = (
        735
        346)
      object mmXML: TMemo
        Left = 2
        Top = 2
        Width = 731
        Height = 342
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
    object tsCSV: TTabSheet
      Caption = 'CSV'
      ImageIndex = 2
      DesignSize = (
        735
        346)
      object mmCSV: TMemo
        Left = 2
        Top = 2
        Width = 731
        Height = 342
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
        OnKeyDown = mmCSVKeyDown
      end
    end
    object tsFormatado: TTabSheet
      Caption = 'Campos Formatados'
      ImageIndex = 3
      DesignSize = (
        735
        346)
      object mmTipado: TMemo
        Left = 2
        Top = 2
        Width = 731
        Height = 342
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
        OnKeyDown = mmTipadoKeyDown
      end
    end
  end
  object pImpressao: TPanel
    Left = 611
    Top = 88
    Width = 140
    Height = 257
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    TabOrder = 3
    object lblAmbiente: TLabel
      Left = 4
      Top = 4
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
    object rgImpressao: TRadioGroup
      Left = 3
      Top = 25
      Width = 121
      Height = 60
      Caption = 'Impress'#227'o'
      ItemIndex = 0
      Items.Strings = (
        'printRPS'
        'printNFSe')
      TabOrder = 0
    end
    object gbOperacaoImpressao: TGroupBox
      Left = 3
      Top = 85
      Width = 121
      Height = 169
      TabOrder = 1
      object btnEditarDocumento: TButton
        Left = 4
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
        Top = 47
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
        Top = 117
        Width = 111
        Height = 25
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
        Left = 4
        Top = 83
        Width = 112
        Height = 25
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
        Top = 149
        Width = 97
        Height = 15
        Caption = 'Enviar por Email'
        TabOrder = 4
      end
    end
    object spdNFSeConverterX: TspdNFSeConverterX
      Left = 96
      Top = 32
      Width = 26
      Height = 26
      ControlData = {
        54504630185441637469766558436F6D706F6E656E74436F6E74726F6C00044C
        656674020003546F700200055769647468021A06486569676874021A0000}
    end
  end
  object OpnDlgTx2: TOpenDialog
    Filter = 'Arquivos Tx2|*.tx2'
    Left = 644
    Top = 84
  end
  object ProxyNFSe: TspdProxyNFSe
    ComponenteNFSe = NFSe
    Left = 612
    Top = 84
  end
  object svDlgExportar: TSaveDialog
    DefaultExt = 'pdf'
    Filter = 'Arquivos pdf|*.pdf'
    Left = 548
    Top = 84
  end
  object OpnDlgLogoTipo: TOpenDialog
    DefaultExt = 'jpg'
    Filter = 'Imagens JPEG (*.jpg)|*.jpg'
    Options = [ofHideReadOnly, ofNoChangeDir, ofFileMustExist, ofEnableSizing]
    Left = 706
    Top = 84
  end
  object OpnDlgBrasao: TOpenDialog
    DefaultExt = 'jpg'
    Filter = 'Imagens JPEG (*.jpg)|*.jpg'
    Options = [ofHideReadOnly, ofNoChangeDir, ofFileMustExist, ofEnableSizing]
    Left = 676
    Top = 84
  end
  object NFSe: TspdNFSe
    TipoCertificado = ckFile
    ConexaoSegura = True
    DiretorioTemplates = 'Templates\'
    DiretorioEsquemas = 'C:\Program Files\Borland\Delphi7\Bin\Esquemas\'
    Ambiente = akHomologacao
    ArquivoServidoresHom = 'nfseServidoresHom.ini'
    ArquivoServidoresProd = 'nfseServidoresProd.ini'
    DiretorioLog = 'Log\'
    TimeOut = 0
    IgnoreInvalidCertificates = False
    EmailSettings.Autenticacao = False
    EmailSettings.TimeOut = 30000
    Cidade = 'BeloHorizonte'
    ArquivoLocais = 'nfseLocais.ini'
    ConfiguracoesImpressao.QtdeCopias = 1
    ConfiguracoesImpressao.ArquivoRtm = 'Templates\Impressao\Modelo.rtm'
    ConfiguracoesImpressao.ArquivoMunicipios = 'Templates\Impressao\municipios.txt'
    ConfiguracoesImpressao.DiretorioImagens = 'Templates\Impressao\'
    ConfiguracoesImpressao.ModoImpressao = smiNFSe
    ConfiguracoesImpressao.LineDelimiter = '|'
    ConfiguracoesImpressao.FormatoExportacao = 1
    ConfiguracoesWebService.IdTag = 'Id'
    ConfiguracoesWebService.SoapURI = 'http://www.e-governeapps2.com.br'
    ConfiguracoesWebService.GerarAssinaturaXml = True
    ConfiguracoesWebService.GerarAssinaturaRps = True
    ConfiguracoesWebService.IdRpsAutomatico = True
    ConfiguracoesWebService.UsarIdLoteRps = True
    ConfiguracoesWebService.UsarIdCancelamento = True
    ConfiguracoesWebService.SoapActionRecepcionarLoteRps = 'RecepcionarLoteRps'
    ConfiguracoesWebService.SoapActionConsultarSituacaoLoteRps = 'ConsultarSituacaoLoteRps'
    ConfiguracoesWebService.SoapActionConsultarLoteRps = 'ConsultarLoteRps'
    ConfiguracoesWebService.SoapActionConsultarNfsePorRps = 'ConsultarNfsePorRps'
    ConfiguracoesWebService.SoapActionConsultarNfse = 'ConsultarNfse'
    ConfiguracoesWebService.SoapActionCancelarNfse = 'CancelarNfse'
    ConfiguracoesWebService.EscaparXml = False
    Versao = '3.5.57.15152pa'
    MappingFileName = 'Mapping.txt'
    DiretorioXmlImpressao = 'XmlImpressao\'
    Left = 580
    Top = 84
  end
end
