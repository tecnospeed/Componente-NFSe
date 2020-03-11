object frmExemplo: TfrmExemplo
  Left = 301
  Top = 1
  Width = 636
  Height = 690
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
    Width = 628
    Height = 405
    ActivePage = tsFormatado
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object tsXML: TTabSheet
      Caption = 'XML Formatado (Somente Visualiza'#231#227'o)'
      DesignSize = (
        620
        377)
      object mmXMLFormatado: TMemo
        Left = 2
        Top = 2
        Width = 616
        Height = 373
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
        620
        377)
      object mmXML: TMemo
        Left = 2
        Top = 2
        Width = 616
        Height = 373
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
        620
        377)
      object mmCSV: TMemo
        Left = 2
        Top = 2
        Width = 616
        Height = 373
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
      DesignSize = (
        620
        377)
      object mmTipado: TMemo
        Left = 2
        Top = 2
        Width = 616
        Height = 373
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
  object pcDados: TPageControl
    Left = 0
    Top = 0
    Width = 628
    Height = 258
    ActivePage = tsConverter
    Align = alTop
    TabOrder = 1
    object tsProxyNFSe: TTabSheet
      Caption = 'Testando autoriza'#231#227'o e consultas'
      object gbOperacoesProxyNFSe: TGroupBox
        Left = 191
        Top = 0
        Width = 429
        Height = 230
        Align = alClient
        Caption = 'Opera'#231#245'es'
        TabOrder = 0
        object Label7: TLabel
          Left = 6
          Top = 14
          Width = 53
          Height = 13
          Caption = 'Certificado:'
        end
        object lblAmbiente: TLabel
          Left = 272
          Top = 199
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
        object btnGerarXMLeEnviarRPS: TButton
          Left = 5
          Top = 121
          Width = 200
          Height = 30
          Caption = '&3. Gerar XML e Enviar RPS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btnGerarXMLeEnviarRPSClick
        end
        object btnCancelar: TButton
          Left = 209
          Top = 121
          Width = 200
          Height = 30
          Caption = '&7. Cancelar NFSe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = btnCancelarClick
        end
        object btnConsultarNFSe: TButton
          Left = 209
          Top = 88
          Width = 200
          Height = 30
          Caption = '&6. Consultar NFSe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = btnConsultarNFSeClick
        end
        object btnConsultarLoteRPS: TButton
          Left = 5
          Top = 157
          Width = 200
          Height = 30
          Caption = '&4. Consultar Lote RPS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = btnConsultarLoteRPSClick
        end
        object cbListaCertificados: TComboBox
          Left = 6
          Top = 31
          Width = 403
          Height = 21
          DropDownCount = 10
          ItemHeight = 13
          TabOrder = 7
          OnDropDown = cbListaCertificadosDropDown
        end
        object btnConsultarNFSeporRPS: TButton
          Left = 209
          Top = 55
          Width = 200
          Height = 30
          Caption = '&5. Consultar NFSe por RPS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = btnConsultarNFSeporRPSClick
        end
        object rbTipoEnvioSin: TRadioButton
          Left = 6
          Top = 210
          Width = 68
          Height = 17
          Hint = 
            'Marque esta op'#231#227'o quando o padr'#227'o da cidade permitir o tipo S'#237'nc' +
            'rono de Envio'
          Caption = 'S'#237'ncrono'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
        object rbTipoEnvioAss: TRadioButton
          Left = 94
          Top = 210
          Width = 72
          Height = 17
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
          Left = 209
          Top = 157
          Width = 200
          Height = 30
          Caption = '&Consultar Notas Tomadas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          OnClick = btnConsultarNotasTomadasClick
        end
      end
      object gbConfigProxyNFSe: TGroupBox
        Left = 0
        Top = 0
        Width = 191
        Height = 230
        Align = alLeft
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
      Caption = 'Testando impress'#227'o'
      ImageIndex = 2
      object gbConfiguracoes: TGroupBox
        Left = 0
        Top = 0
        Width = 620
        Height = 230
        Align = alClient
        Caption = 'Configura'#231#245'es '
        TabOrder = 0
        object Label4: TLabel
          Left = 8
          Top = 14
          Width = 88
          Height = 13
          Caption = 'Logotipo Emitente:'
          FocusControl = edtLogoEmitente
        end
        object edtLogoEmitente: TEdit
          Left = 8
          Top = 30
          Width = 553
          Height = 21
          TabOrder = 0
        end
        object btnLogoTipoEmitente: TButton
          Left = 565
          Top = 30
          Width = 26
          Height = 21
          Caption = '...'
          TabOrder = 1
          OnClick = btnLogoTipoEmitenteClick
        end
        object gbOperacaoImpressao: TGroupBox
          Left = 3
          Top = 60
          Width = 254
          Height = 101
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
        object rgImpressao: TRadioGroup
          Left = 274
          Top = 66
          Width = 121
          Height = 60
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
        Width = 620
        Height = 230
        Align = alClient
        TabOrder = 0
        DesignSize = (
          620
          230)
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
        object Label3: TLabel
          Left = 147
          Top = 8
          Width = 422
          Height = 13
          Alignment = taRightJustify
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 
            'Recursos avan'#231'ados do componente NFSe, usar somente com orienta'#231 +
            #227'o da consultoria'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
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
    object tsConverter: TTabSheet
      Caption = 'Tratamento usando Converter'
      ImageIndex = 3
      object btnConverterEnvio: TButton
        Left = 8
        Top = 19
        Width = 193
        Height = 25
        Caption = 'Converter Envio'
        TabOrder = 0
        OnClick = btnConverterEnvioClick
      end
      object btnConverterEnvioSincrono: TButton
        Left = 8
        Top = 57
        Width = 193
        Height = 25
        Caption = 'Converter Envio Sincrono'
        TabOrder = 1
        OnClick = btnConverterEnvioSincronoClick
      end
      object btnConverterConsultaLote: TButton
        Left = 8
        Top = 97
        Width = 193
        Height = 25
        Caption = 'Converter Consulta Lote'
        TabOrder = 2
        OnClick = btnConverterConsultaLoteClick
      end
      object btnConverterConsultaNFSePorRPS: TButton
        Left = 8
        Top = 136
        Width = 193
        Height = 25
        Caption = 'Converter Consulta de NFSe Por RPS'
        TabOrder = 3
        OnClick = btnConverterConsultaNFSePorRPSClick
      end
      object btnConverterConsultaNFse: TButton
        Left = 217
        Top = 81
        Width = 193
        Height = 25
        Caption = 'Converter Consulta NFse'
        TabOrder = 4
        OnClick = btnConverterConsultaNFseClick
      end
      object btnConverterCancelamentoNFSe: TButton
        Left = 217
        Top = 36
        Width = 193
        Height = 25
        Caption = 'Converter Cancelamento NFSe'
        TabOrder = 5
        OnClick = btnConverterCancelamentoNFSeClick
      end
      object btnConverterConsultaNFSeTomadas: TButton
        Left = 216
        Top = 120
        Width = 193
        Height = 25
        Caption = 'Converter Consulta NFSe Tomadas'
        TabOrder = 6
        OnClick = btnConverterConsultaNFSeTomadasClick
      end
    end
  end
  object spdNFSeConverterX: TspdNFSeConverterX
    DelimitadorDaLinha = #13#10
    DelimitadorDoCampo = ';'
    Left = 396
    Top = 59
  end
  object OpnDlgTx2: TOpenDialog
    Filter = 'Arquivos Tx2|*.tx2'
    Left = 522
    Top = 58
  end
  object ProxyNFSe: TspdProxyNFSe
    ComponenteNFSe = NFSe
    Left = 490
    Top = 58
  end
  object svDlgExportar: TSaveDialog
    DefaultExt = 'pdf'
    Filter = 'Arquivos pdf|*.pdf'
    Left = 426
    Top = 58
  end
  object OpnDlgLogoTipo: TOpenDialog
    DefaultExt = 'jpg'
    Filter = 'Imagens JPEG (*.jpg)|*.jpg'
    Options = [ofHideReadOnly, ofNoChangeDir, ofFileMustExist, ofEnableSizing]
    Left = 584
    Top = 58
  end
  object OpnDlgBrasao: TOpenDialog
    DefaultExt = 'jpg'
    Filter = 'Imagens JPEG (*.jpg)|*.jpg'
    Options = [ofHideReadOnly, ofNoChangeDir, ofFileMustExist, ofEnableSizing]
    Left = 554
    Top = 58
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
    DiretorioTemplates = 'Templates\'
    DiretorioEsquemas = 'C:\Program Files\Borland\Delphi7\Bin\Esquemas\'
    TipoCertificado = ckFile
    ConexaoSegura = True
    DiretorioLogErro = 'C:\Program Files (x86)\Borland\Delphi7\Bin\LogErro\'
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
    Versao = '10.0.66.6780'
    MappingFileName = 'Mapping.txt'
    DiretorioXmlImpressao = 'XmlImpressao\'
    RemoverAcentos = True
    DiagnosticMode = True
    SalvarLogsEmDisco = True
    Left = 458
    Top = 58
  end
end
