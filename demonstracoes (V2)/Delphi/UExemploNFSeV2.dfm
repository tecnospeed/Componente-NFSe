object frmExemplo: TfrmExemplo
  Left = 541
  Top = 136
  Width = 745
  Height = 800
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
  object pcDados: TPageControl
    Left = 0
    Top = 0
    Width = 729
    Height = 377
    ActivePage = tsNFSe
    Align = alTop
    TabOrder = 0
    object tsNFSe: TTabSheet
      Caption = 'Transmiss'#227'o do XML'
      object gbOperacoesNFSe: TGroupBox
        Left = 351
        Top = 8
        Width = 365
        Height = 233
        Caption = 'Opera'#231#245'es'
        TabOrder = 2
        object Label7: TLabel
          Left = 7
          Top = 19
          Width = 53
          Height = 13
          Caption = 'Certificado:'
        end
        object btnConfigArquivoINI: TButton
          Left = 5
          Top = 65
          Width = 174
          Height = 30
          Caption = '&1. Configurar Arquivo INI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btnConfigArquivoINIClick
        end
        object btnLoadConfig: TButton
          Left = 185
          Top = 64
          Width = 174
          Height = 30
          Caption = '&2. LoadConfig'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btnLoadConfigClick
        end
        object btnEnviarRPS: TButton
          Left = 5
          Top = 101
          Width = 174
          Height = 30
          Caption = '&3. Enviar RPS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = btnEnviarRPSClick
        end
        object btnCancelar: TButton
          Left = 5
          Top = 136
          Width = 174
          Height = 30
          Caption = '&5. Cancelar NFSe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = btnCancelarClick
        end
        object btnConsultarNota: TButton
          Left = 185
          Top = 101
          Width = 174
          Height = 30
          Caption = '&4. Consultar Nota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = btnConsultarNotaClick
        end
        object cbListaCertificados: TComboBox
          Left = 5
          Top = 38
          Width = 355
          Height = 21
          DropDownCount = 10
          ItemHeight = 13
          TabOrder = 0
          OnDropDown = cbListaCertificadosDropDown
        end
        object btnListarCidades: TButton
          Left = 96
          Top = 181
          Width = 174
          Height = 30
          Caption = 'Listar Cidades Homologadas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnClick = btnListarCidadesClick
        end
        object btnGerarTx2: TButton
          Left = 185
          Top = 136
          Width = 174
          Height = 30
          Caption = 'Gerar TX2 - Teste'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = btnGerarTx2Click
        end
      end
      object gbConfigNFSe: TGroupBox
        Left = 7
        Top = 80
        Width = 337
        Height = 257
        Align = alCustom
        Caption = 'Dados do Emitente'
        TabOrder = 1
        object lblAmbiente: TLabel
          Left = 10
          Top = 211
          Width = 159
          Height = 16
          Caption = 'Ambiente de Produ'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
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
          Width = 179
          Height = 21
          EditLabel.Width = 30
          EditLabel.Height = 13
          EditLabel.Caption = 'CNPJ:'
          TabOrder = 1
        end
        object edtInscMunicipal: TLabeledEdit
          Left = 6
          Top = 130
          Width = 179
          Height = 21
          EditLabel.Width = 94
          EditLabel.Height = 13
          EditLabel.Caption = 'Inscri'#231#227'o Municipal:'
          TabOrder = 2
        end
        object rdProducao: TRadioButton
          Left = 199
          Top = 21
          Width = 113
          Height = 17
          Caption = 'Produ'#231#227'o'
          TabOrder = 3
          OnClick = rdProducaoClick
        end
        object rdHomologacao: TRadioButton
          Left = 199
          Top = 45
          Width = 113
          Height = 17
          Caption = 'Homologa'#231#227'o'
          TabOrder = 4
          OnClick = rdHomologacaoClick
        end
        object btnAtualizaArquivos: TButton
          Left = 7
          Top = 165
          Width = 162
          Height = 33
          Caption = 'Atualizar arquivos cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = btnAtualizaArquivosClick
        end
      end
      object GroupBox2: TGroupBox
        Left = 7
        Top = 8
        Width = 337
        Height = 65
        Caption = 'Configurar SoftwareHouse'
        TabOrder = 0
        object edtCNPJSoftwareHouse: TLabeledEdit
          Left = 6
          Top = 36
          Width = 139
          Height = 21
          EditLabel.Width = 109
          EditLabel.Height = 13
          EditLabel.Caption = 'CNPJ SoftwareHouse: '
          TabOrder = 0
          Text = '00000000000000'
        end
        object edtTokenSoftwareHouse: TLabeledEdit
          Left = 152
          Top = 36
          Width = 177
          Height = 21
          EditLabel.Width = 113
          EditLabel.Height = 13
          EditLabel.Caption = 'Token SoftwareHouse: '
          TabOrder = 1
          Text = '000000000000000'
        end
      end
      object GroupBox3: TGroupBox
        Left = 351
        Top = 243
        Width = 365
        Height = 94
        Caption = 'Dados da Nota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object edtChaveCancelamento: TLabeledEdit
          Left = 121
          Top = 68
          Width = 59
          Height = 21
          EditLabel.Width = 108
          EditLabel.Height = 13
          EditLabel.Caption = 'Chave Cancelamento: '
          LabelPosition = lpLeft
          TabOrder = 4
        end
        object edtNumeroNFSe: TLabeledEdit
          Left = 86
          Top = 20
          Width = 94
          Height = 21
          EditLabel.Width = 73
          EditLabel.Height = 13
          EditLabel.Caption = 'Numero NFSe: '
          LabelPosition = lpLeft
          TabOrder = 0
        end
        object edtTipoRPS: TLabeledEdit
          Left = 259
          Top = 69
          Width = 97
          Height = 21
          EditLabel.Width = 52
          EditLabel.Height = 13
          EditLabel.Caption = 'Tipo RPS: '
          LabelPosition = lpLeft
          TabOrder = 5
        end
        object edtSerieRPS: TLabeledEdit
          Left = 259
          Top = 20
          Width = 97
          Height = 21
          EditLabel.Width = 55
          EditLabel.Height = 13
          EditLabel.Caption = 'Serie RPS: '
          LabelPosition = lpLeft
          TabOrder = 1
        end
        object edtNumeroRPS: TLabeledEdit
          Left = 259
          Top = 44
          Width = 97
          Height = 21
          EditLabel.Width = 68
          EditLabel.Height = 13
          EditLabel.Caption = 'Numero RPS: '
          LabelPosition = lpLeft
          TabOrder = 3
        end
        object edtNumProtocolo: TLabeledEdit
          Left = 92
          Top = 44
          Width = 88
          Height = 21
          EditLabel.Width = 79
          EditLabel.Height = 13
          EditLabel.Caption = 'Num. Protocolo: '
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'MS Sans Serif'
          EditLabel.Font.Style = []
          EditLabel.ParentFont = False
          LabelPosition = lpLeft
          TabOrder = 2
        end
      end
    end
    object tsConfiguraImpressao: TTabSheet
      Caption = 'Impress'#227'o'
      ImageIndex = 2
      DesignSize = (
        721
        349)
      object gbConfiguracoes: TGroupBox
        Left = 0
        Top = 8
        Width = 499
        Height = 193
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Configura'#231#245'es Impress'#227'o '
        TabOrder = 0
        DesignSize = (
          499
          193)
        object Label4: TLabel
          Left = 8
          Top = 19
          Width = 127
          Height = 13
          Caption = 'Caminho logotipo emitente:'
          FocusControl = edtLogoEmitente
        end
        object SpeedButton1: TSpeedButton
          Left = 312
          Top = 28
          Width = 41
          Height = 33
          Glyph.Data = {
            06020000424D0602000000000000760000002800000019000000190000000100
            04000000000090010000000000000000000010000000100000005E493400614D
            39007E6D5D005E5F6300318EFF0058CDFE0048B3FE009B8E8100F2E2CE00FFFF
            FF00000000000000000000000000000000000000000000000000999999999999
            9999999999449000000099999999999999999999944440000000999999999999
            9999999944445000000099999999999999999994444590000000999999999999
            9999994444599000000099999999999999999444459990000000999999990079
            9999034469999000000099999000220000992035999990000000999002288888
            2002220999999000000099002888888888203999999990000000990288888888
            8882099999999000000090288888888888880099999990000000908888888888
            8888209999999000000002898888888888888099999990000000028988888888
            8888807999999000000002898888888888888209999990000000028988888888
            8888820999999000000002898888888888888099999990000000018998888888
            8888209999999000000090289888888888882099999990000000901888988888
            8882099999999000000099028899998888200999999990000000999012888888
            8200999999999000000099990012222200999999999990000000999999011100
            99999999999990000000}
          OnClick = SpeedButton1Click
        end
        object edtLogoEmitente: TEdit
          Left = 8
          Top = 35
          Width = 299
          Height = 21
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 0
        end
        object ckbEnviarEmailPDF: TCheckBox
          Left = 7
          Top = 144
          Width = 165
          Height = 15
          Caption = 'Enviar PDF por Email'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object btnExportar: TButton
          Left = 7
          Top = 100
          Width = 200
          Height = 30
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
        object btnImprimir: TButton
          Left = 7
          Top = 68
          Width = 200
          Height = 30
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
        object btnEditarDocumento: TButton
          Left = 211
          Top = 68
          Width = 200
          Height = 30
          Caption = '&Editar Documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btnEditarDocumentoClick
        end
        object btnVisualizar: TButton
          Left = 211
          Top = 100
          Width = 200
          Height = 30
          Caption = '&Visualizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = btnVisualizarClick
        end
      end
    end
    object tsConsultaTomadas: TTabSheet
      Caption = 'Consultar Notas Tomadas'
      ImageIndex = 2
      OnShow = tsConsultaTomadasShow
      object GroupBox1: TGroupBox
        Left = 9
        Top = 8
        Width = 394
        Height = 73
        Caption = 'Dados Tomador'
        TabOrder = 0
        object Label2: TLabel
          Left = 8
          Top = 24
          Width = 72
          Height = 13
          Caption = 'CNPJ Tomador'
        end
        object Label3: TLabel
          Left = 195
          Top = 21
          Width = 151
          Height = 13
          Caption = 'Inscri'#231#227'o Municipal do Tomador'
        end
        object edtDocumentoTomador: TEdit
          Left = 8
          Top = 39
          Width = 184
          Height = 21
          TabOrder = 0
        end
        object edtIMTomador: TEdit
          Left = 196
          Top = 39
          Width = 181
          Height = 21
          TabOrder = 1
        end
      end
      object GroupBox4: TGroupBox
        Left = 9
        Top = 88
        Width = 394
        Height = 69
        Caption = 'Dados Prestador'
        TabOrder = 1
        object lblDocumentoPrestador: TLabel
          Left = 10
          Top = 20
          Width = 75
          Height = 13
          Caption = 'CNPJ Prestador'
        end
        object lblIMPrestador: TLabel
          Left = 196
          Top = 20
          Width = 154
          Height = 13
          Caption = 'Inscri'#231#227'o Municipal do Prestador'
        end
        object edtDocumentoPrestador: TEdit
          Left = 10
          Top = 36
          Width = 181
          Height = 21
          TabOrder = 0
        end
        object edtIMPrestador: TEdit
          Left = 196
          Top = 36
          Width = 181
          Height = 21
          TabOrder = 1
        end
      end
      object btnConsultarNotasTomadas: TButton
        Left = 106
        Top = 290
        Width = 181
        Height = 33
        Caption = '&Consultar Notas Tomadas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = btnConsultarNotasTomadasClick
      end
      object GroupBox5: TGroupBox
        Left = 9
        Top = 160
        Width = 394
        Height = 105
        Caption = 'Dados Consulta'
        TabOrder = 2
        object lblDataInicial: TLabel
          Left = 195
          Top = 18
          Width = 110
          Height = 13
          Caption = 'Data Inicial yyyy-mm-dd'
        end
        object lblDataFinal: TLabel
          Left = 195
          Top = 59
          Width = 105
          Height = 13
          Caption = 'Data Final yyyy-mm-dd'
        end
        object lblPagina: TLabel
          Left = 9
          Top = 57
          Width = 33
          Height = 13
          Caption = 'P'#225'gina'
        end
        object Label1: TLabel
          Left = 9
          Top = 18
          Width = 165
          Height = 13
          Caption = 'Nome da Cidade  (local do servi'#231'o)'
        end
        object edtDataInicial: TEdit
          Left = 195
          Top = 32
          Width = 181
          Height = 21
          TabOrder = 1
        end
        object edtDataFinal: TEdit
          Left = 195
          Top = 73
          Width = 181
          Height = 21
          TabOrder = 3
        end
        object edtPagina: TEdit
          Left = 9
          Top = 73
          Width = 181
          Height = 21
          TabOrder = 2
        end
        object edtNomeCidade: TEdit
          Left = 9
          Top = 32
          Width = 181
          Height = 21
          TabOrder = 0
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 742
    Width = 729
    Height = 19
    Panels = <
      item
        Style = psOwnerDraw
        Width = 150
      end>
    OnDrawPanel = StatusBar1DrawPanel
  end
  object ProgressBar1: TProgressBar
    Left = 912
    Top = 40
    Width = 9
    Height = 17
    TabOrder = 2
    Visible = False
  end
  object pcMensagens: TPageControl
    Left = 0
    Top = 377
    Width = 727
    Height = 365
    ActivePage = tsXML
    Align = alLeft
    Anchors = [akLeft, akTop, akRight, akBottom]
    BiDiMode = bdLeftToRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
    object tsXML: TTabSheet
      Caption = 'Xml Envio'
      object mmXMLEnvio: TMemo
        Left = 0
        Top = 0
        Width = 719
        Height = 337
        Align = alClient
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
      Caption = 'Xml Retorno/Impressao'
      ImageIndex = 1
      object mmXML: TMemo
        Left = 0
        Top = 0
        Width = 719
        Height = 337
        Align = alClient
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
      object mmJson: TMemo
        Left = 0
        Top = 0
        Width = 719
        Height = 337
        Align = alClient
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
      object mmTipado: TMemo
        Left = 0
        Top = 0
        Width = 719
        Height = 337
        Align = alClient
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
  object svDlgExportar: TSaveDialog
    DefaultExt = 'pdf'
    Filter = 'Arquivos pdf|*.pdf'
    Left = 951
    Top = 212
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
    Left = 981
    Top = 212
  end
  object OpnDlgTx2: TOpenDialog
    Filter = 'Arquivos Tx2|*.tx2'
    Left = 1011
    Top = 212
  end
  object OpnDlgLogoTipo: TOpenDialog
    DefaultExt = 'jpg'
    Filter = 'Imagens JPEG (*.jpg)|*.jpg'
    Options = [ofHideReadOnly, ofNoChangeDir, ofFileMustExist, ofEnableSizing]
    Left = 1040
    Top = 212
  end
  object OpnDlgXml: TOpenDialog
    Left = 1032
    Top = 248
  end
end
