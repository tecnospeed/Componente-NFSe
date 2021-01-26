object frmExemplo: TfrmExemplo
  Left = 572
  Top = 136
  Width = 643
  Height = 746
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -8
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pcDados: TPageControl
    Left = 0
    Top = 0
    Width = 627
    Height = 305
    ActivePage = tsProxyNFSe
    Align = alTop
    TabOrder = 1
    object tsProxyNFSe: TTabSheet
      Caption = 'Testando autoriza'#231#227'o e consultas'
      object gbOperacoesProxyNFSe: TGroupBox
        Left = 204
        Top = 56
        Width = 421
        Height = 217
        Align = alCustom
        BiDiMode = bdLeftToRight
        Caption = 'Opera'#231#245'es'
        ParentBiDiMode = False
        TabOrder = 0
        object Label7: TLabel
          Left = 3
          Top = 15
          Width = 53
          Height = 13
          Caption = 'Certificado:'
        end
        object btnConfigArquivoINI: TButton
          Left = 7
          Top = 62
          Width = 212
          Height = 30
          Caption = '&1. Configurar arquivo INI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btnConfigArquivoINIClick
        end
        object btnLoadConfig: TButton
          Left = 7
          Top = 95
          Width = 212
          Height = 30
          Caption = '&2. LoadConfig'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btnLoadConfigClick
        end
        object btnGerarXMLeEnviarRPS: TButton
          Left = 7
          Top = 127
          Width = 92
          Height = 30
          Caption = '&3. Gerar XML'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btnGerarXMLeEnviarRPSClick
        end
        object btnCancelar: TButton
          Left = 224
          Top = 127
          Width = 180
          Height = 30
          Caption = '&7. Cancelar NFSe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = btnCancelarClick
        end
        object btnConsultarNFSe: TButton
          Left = 224
          Top = 95
          Width = 180
          Height = 30
          Caption = '&6. Consultar NFSe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = btnConsultarNFSeClick
        end
        object btnConsultarLoteRPS: TButton
          Left = 7
          Top = 160
          Width = 212
          Height = 30
          Caption = '&4. Consultar Lote RPS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = btnConsultarLoteRPSClick
        end
        object cbListaCertificados: TComboBox
          Left = 6
          Top = 34
          Width = 399
          Height = 21
          DropDownCount = 10
          ItemHeight = 13
          TabOrder = 6
          OnDropDown = cbListaCertificadosDropDown
        end
        object btnConsultarNFSeporRPS: TButton
          Left = 224
          Top = 61
          Width = 180
          Height = 30
          Caption = '&5. Consultar NFSe por RPS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnClick = btnConsultarNFSeporRPSClick
        end
        object rbTipoEnvioSin: TRadioButton
          Left = 6
          Top = 198
          Width = 76
          Height = 14
          Hint = 
            'Marque esta op'#231#227'o quando o padr'#227'o da cidade permitir o tipo S'#237'nc' +
            'rono de Envio'
          Caption = 'S'#237'ncrono'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
        object rbTipoEnvioAss: TRadioButton
          Left = 76
          Top = 198
          Width = 86
          Height = 14
          Hint = 
            'Marque esta op'#231#227'o quando o padr'#227'o da cidade permitir o tipo Ass'#237 +
            'ncrono de Envio'
          Caption = 'Ass'#237'ncrono'
          Checked = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          TabStop = True
        end
        object btnConsultarNotasTomadas: TButton
          Left = 224
          Top = 160
          Width = 180
          Height = 30
          Caption = '&Consultar Notas Tomadas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          OnClick = btnConsultarNotasTomadasClick
        end
        object btnEnviar: TButton
          Left = 103
          Top = 127
          Width = 116
          Height = 30
          Caption = '&3. Assinar/Enviar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          OnClick = btnEnviarClick
        end
      end
      object gbConfigProxyNFSe: TGroupBox
        Left = 0
        Top = 0
        Width = 201
        Height = 273
        Align = alCustom
        Caption = 'Configura'#231#245'es'
        TabOrder = 1
        object lblAmbiente: TLabel
          Left = 25
          Top = 257
          Width = 120
          Height = 13
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          Caption = 'Amb. de PRODU'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          Visible = False
        end
        object edtCidade: TLabeledEdit
          Left = 4
          Top = 30
          Width = 182
          Height = 21
          EditLabel.Width = 36
          EditLabel.Height = 13
          EditLabel.Caption = 'Cidade:'
          TabOrder = 0
        end
        object edtCNPJ: TLabeledEdit
          Left = 4
          Top = 76
          Width = 181
          Height = 21
          EditLabel.Width = 30
          EditLabel.Height = 13
          EditLabel.Caption = 'CNPJ:'
          TabOrder = 1
        end
        object edtInscMunicipal: TLabeledEdit
          Left = 4
          Top = 122
          Width = 182
          Height = 21
          EditLabel.Width = 94
          EditLabel.Height = 13
          EditLabel.Caption = 'Inscri'#231#227'o Municipal:'
          TabOrder = 2
        end
        object edtNumProtocolo: TLabeledEdit
          Left = 4
          Top = 176
          Width = 183
          Height = 21
          EditLabel.Width = 103
          EditLabel.Height = 13
          EditLabel.Caption = 'N'#250'mero do Protocolo:'
          TabOrder = 3
        end
        object ckbModoAvancado: TCheckBox
          Left = 4
          Top = 208
          Width = 171
          Height = 13
          Caption = 'Modo &Avan'#231'ado (Extras Envio)'
          TabOrder = 4
          OnClick = ckbModoAvancadoClick
        end
      end
      object edtCNPJSH: TLabeledEdit
        Left = 209
        Top = 21
        Width = 177
        Height = 21
        EditLabel.Width = 106
        EditLabel.Height = 13
        EditLabel.Caption = 'CNPJ SoftwareHouse:'
        TabOrder = 2
      end
      object edtToken: TLabeledEdit
        Left = 425
        Top = 21
        Width = 180
        Height = 21
        EditLabel.Width = 107
        EditLabel.Height = 13
        EditLabel.Caption = 'Token SoftwareHouse'
        TabOrder = 3
      end
    end
    object tsConfiguraImpressao: TTabSheet
      Caption = 'Testando impress'#227'o'
      ImageIndex = 2
      object gbConfiguracoes: TGroupBox
        Left = 0
        Top = 0
        Width = 619
        Height = 277
        Align = alClient
        Caption = 'Configura'#231#245'es '
        TabOrder = 0
        object Label4: TLabel
          Left = 6
          Top = 14
          Width = 88
          Height = 13
          Caption = 'Logotipo Emitente:'
          FocusControl = edtLogoEmitente
        end
        object edtLogoEmitente: TEdit
          Left = 6
          Top = 27
          Width = 443
          Height = 21
          TabOrder = 0
        end
        object btnLogoTipoEmitente: TButton
          Left = 452
          Top = 27
          Width = 21
          Height = 17
          Caption = '...'
          TabOrder = 1
          OnClick = btnLogoTipoEmitenteClick
        end
        object gbOperacaoImpressao: TGroupBox
          Left = 6
          Top = 54
          Width = 247
          Height = 81
          TabOrder = 2
          object btnEditarDocumento: TButton
            Left = 121
            Top = 10
            Width = 113
            Height = 21
            Caption = '&Editar Documento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = btnEditarDocumentoClick
          end
          object btnImprimir: TButton
            Left = 3
            Top = 10
            Width = 113
            Height = 21
            Caption = '&Imprimir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = btnImprimirClick
          end
          object btnExportar: TButton
            Left = 4
            Top = 35
            Width = 113
            Height = 21
            Caption = 'E&xportar para PDF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnClick = btnExportarClick
          end
          object btnVisualizar: TButton
            Left = 121
            Top = 35
            Width = 113
            Height = 21
            Caption = '&Visualizar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = btnVisualizarClick
          end
          object ckbEnviarEmailPDF: TCheckBox
            Left = 3
            Top = 61
            Width = 110
            Height = 12
            Caption = 'Enviar por Email'
            TabOrder = 4
          end
        end
        object rgImpressao: TRadioGroup
          Left = 263
          Top = 59
          Width = 97
          Height = 48
          Caption = 'Impress'#227'o'
          ItemIndex = 1
          Items.Strings = (
            'printRPS'
            'printNFSe')
          TabOrder = 3
        end
      end
    end
    object tsComandos: TTabSheet
      Caption = 'Comandos do modo avan'#231'ado'
      ImageIndex = 1
      object gbComandos: TGroupBox
        Left = 0
        Top = 0
        Width = 627
        Height = 277
        Align = alClient
        TabOrder = 0
        DesignSize = (
          619
          277)
        object Label1: TLabel
          Left = 6
          Top = 47
          Width = 53
          Height = 13
          Caption = 'Comandos:'
        end
        object Label2: TLabel
          Left = 136
          Top = 48
          Width = 56
          Height = 13
          Caption = 'Par'#226'metros:'
        end
        object Label3: TLabel
          Left = 46
          Top = 12
          Width = 414
          Height = 13
          Alignment = taRightJustify
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 
            'Recursos avan'#231'ados do componente NFSe, usar somente com orienta'#231 +
            #227'o da consultoria'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edtComandoCidade: TLabeledEdit
          Left = 6
          Top = 28
          Width = 127
          Height = 21
          EditLabel.Width = 36
          EditLabel.Height = 13
          EditLabel.Caption = 'Cidade:'
          TabOrder = 0
        end
        object btnComandoLoadConfig: TButton
          Left = 136
          Top = 26
          Width = 114
          Height = 20
          Caption = '&LoadConfig'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnComandoLoadConfigClick
        end
        object lbComandos: TListBox
          Left = 6
          Top = 61
          Width = 127
          Height = 105
          ItemHeight = 13
          TabOrder = 2
          OnClick = lbComandosClick
        end
        object sgParametros: TStringGrid
          Left = 136
          Top = 62
          Width = 345
          Height = 104
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
          Left = 320
          Top = 166
          Width = 160
          Height = 21
          Caption = '&Copiar resposta para par'#226'metro'
          TabOrder = 4
          OnClick = btnComandoCopiarParametroClick
        end
        object btnComandoExecutar: TButton
          Left = 6
          Top = 167
          Width = 127
          Height = 20
          Caption = '&Executar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = btnComandoExecutarClick
        end
      end
    end
    object tsConverter: TTabSheet
      Caption = 'Tratamento usando Converter'
      ImageIndex = 3
      object btnConverterEnvio: TButton
        Left = 218
        Top = 106
        Width = 195
        Height = 30
        Caption = 'Converter Envio'
        TabOrder = 0
        OnClick = btnConverterEnvioClick
      end
      object btnConverterEnvioSincrono: TButton
        Left = 426
        Top = 64
        Width = 195
        Height = 30
        Caption = 'Converter Envio Sincrono'
        TabOrder = 1
        OnClick = btnConverterEnvioSincronoClick
      end
      object btnConverterConsultaLote: TButton
        Left = 5
        Top = 24
        Width = 195
        Height = 30
        Caption = 'Converter Consulta Lote'
        TabOrder = 2
        OnClick = btnConverterConsultaLoteClick
      end
      object btnConverterConsultaNFSePorRPS: TButton
        Left = 218
        Top = 65
        Width = 195
        Height = 30
        Caption = 'Converter Consulta de NFSe Por RPS'
        TabOrder = 3
        OnClick = btnConverterConsultaNFSePorRPSClick
      end
      object btnConverterConsultaNFse: TButton
        Left = 5
        Top = 65
        Width = 195
        Height = 30
        Caption = 'Converter Consulta NFse'
        TabOrder = 4
        OnClick = btnConverterConsultaNFseClick
      end
      object btnConverterCancelamentoNFSe: TButton
        Left = 427
        Top = 22
        Width = 195
        Height = 30
        Caption = 'Converter Cancelamento NFSe'
        TabOrder = 5
        OnClick = btnConverterCancelamentoNFSeClick
      end
      object btnConverterConsultaNFSeTomadas: TButton
        Left = 218
        Top = 23
        Width = 195
        Height = 30
        Caption = 'Converter Consulta NFSe Tomadas'
        TabOrder = 6
        OnClick = btnConverterConsultaNFSeTomadasClick
      end
    end
  end
  object pcMensagens: TPageControl
    Left = 0
    Top = 312
    Width = 635
    Height = 403
    ActivePage = tsXML
    Align = alCustom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object tsXML: TTabSheet
      Caption = 'XML Formatado (Somente Visualiza'#231#227'o)'
      DesignSize = (
        627
        375)
      object mmXMLFormatado: TMemo
        Left = 2
        Top = 6
        Width = 623
        Height = 355
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
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
        627
        375)
      object mmXML: TMemo
        Left = 2
        Top = 2
        Width = 623
        Height = 375
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
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
        627
        375)
      object mmCSV: TMemo
        Left = 2
        Top = 2
        Width = 623
        Height = 375
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
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
      DesignSize = (
        627
        375)
      object mmTipado: TMemo
        Left = 2
        Top = 2
        Width = 623
        Height = 375
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
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
  object spdNFSeConverterX: TspdNFSeConverterX
    DelimitadorDaLinha = #13#10
    DelimitadorDoCampo = ';'
    Left = 388
    Top = 579
  end
  object OpnDlgTx2: TOpenDialog
    Filter = 'Arquivos Tx2|*.tx2'
    Left = 514
    Top = 578
  end
  object ProxyNFSe: TspdProxyNFSe
    ComponenteNFSe = NFSe
    Left = 482
    Top = 578
  end
  object svDlgExportar: TSaveDialog
    DefaultExt = 'pdf'
    Filter = 'Arquivos pdf|*.pdf'
    Left = 418
    Top = 578
  end
  object OpnDlgLogoTipo: TOpenDialog
    DefaultExt = 'jpg'
    Filter = 'Imagens JPEG (*.jpg)|*.jpg'
    Options = [ofHideReadOnly, ofNoChangeDir, ofFileMustExist, ofEnableSizing]
    Left = 576
    Top = 578
  end
  object OpnDlgBrasao: TOpenDialog
    DefaultExt = 'jpg'
    Filter = 'Imagens JPEG (*.jpg)|*.jpg'
    Options = [ofHideReadOnly, ofNoChangeDir, ofFileMustExist, ofEnableSizing]
    Left = 546
    Top = 578
  end
  object NFSe: TspdNFSe
    Ambiente = akHomologacao
    ArquivoServidoresHom = 'nfseServidoresHom.ini'
    ArquivoServidoresProd = 'nfseServidoresProd.ini'
    DiretorioLog = 'Log\'
    TimeOut = 0
    IgnoreInvalidCertificates = False
    EmailSettings.Autenticacao = False
    EmailSettings.TimeOut = 30000
    EmailSettings.IsContentHTML = False
    EmailSettings.UseSecureBlackBox = False
    DiretorioTemplates = 'Templates\'
    DiretorioEsquemas = 'C:\Program Files\Borland\Delphi7\Bin\Esquemas\'
    TipoCertificado = ckFile
    ConexaoSegura = True
    DiretorioLogErro = 'C:\Program Files (x86)\Borland\Delphi7\Bin\LogErro\'
    ArquivoCamposCustomizados = 'C:\Program Files (x86)\Borland\Delphi7\Bin\'
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
    Versao = '10.1.70.6915'
    MappingFileName = 'Mapping.txt'
    DiretorioXmlImpressao = 'XmlImpressao\'
    RemoverAcentos = True
    DiagnosticMode = True
    SalvarLogsEmDisco = True
    Left = 450
    Top = 578
  end
end
