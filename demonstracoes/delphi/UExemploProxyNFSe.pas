unit uExemploProxyNFSe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, spdNFSe, spdNFSeException, IniFiles,
  MSXML5_TLB, spdCustomNFSe, spdNFSeUtils, StrUtils,
  spdNFSeDataset, spdNFSeXsdUtils, ComCtrls, StdCtrls, ExtCtrls, CheckLst, Grids,
  DBGrids, spdProxyNFSe, OleCtrls, SHDocVw, uCancelamento,uConsNFSEporRPS, uConsNFSETomadas,
  NFSeConverterX_TLB, spdNFSeTypes, spdNFSeGov;

//******************************************************************************************************
//
//          Declarações
//
//******************************************************************************************************

const
  EXEMPLO_INI_FILE = 'Exemplo.ini';
  PROTOCOLO = 'Protocolo';
  CONSULTARNFSEPORRPS_NUMERO = 'ConsultarNfsePorRps_Numero';
  CONSULTARNFSEPORRPS_SERIE = 'ConsultarNfsePorRps_Serie';
  CONSULTARNFSEPORRPS_TIPO = 'ConsultarNfsePorRps_Tipo';
  CONSULTARNFSE_NUMERONFSE = 'ConsultarNfse_NumeroNfse';
  CANCELARNFSE_CHAVE = 'CancelarNfse_Chave';
  CONSULTARNOTASTOMADAS_NOMECIDADE = 'ConsultarNotasTomadas_NomeCidade';
  CONSULTARNOTASTOMADAS_DOCUMENTOTOMADOR = 'ConsultarNotasTomadas_DocumentoTomador';
  CONSULTARNOTASTOMADAS_IMTOMADOR = 'ConsultarNotasTomadas_IMTomador';
  CONSULTARNOTASTOMADAS_DOCUMENTOPRESTADOR = 'ConsultarNotasTomadas_DocumentoPrestador';
  CONSULTARNOTASTOMADAS_IMPRESTADOR = 'ConsultarNotasTomadas_IMPrestador';
  CONSULTARNOTASTOMADAS_DATAINICIAL = 'ConsultarNotasTomadas_DataInicial';
  CONSULTARNOTASTOMADAS_DATAFINAL = 'ConsultarNotasTomadas_DataFinal';
  CONSULTARNOTASTOMADAS_PAGINA = 'ConsultarNotasTomadas_Pagina';

type
  TfrmExemplo = class(TForm)
    pcDados: TPageControl;
    tsProxyNFSe: TTabSheet;
    tsComandos: TTabSheet;
    OpnDlgTx2: TOpenDialog;
    wbBanner: TWebBrowser;
    pcMensagens: TPageControl;
    tsXML: TTabSheet;
    tsXMLFormatado: TTabSheet;
    mmXMLFormatado: TMemo;
    mmXML: TMemo;
    gbOperacoesProxyNFSe: TGroupBox;
    btnConfigArquivoINI: TButton;
    btnLoadConfig: TButton;
    btnGerarXMLviaTX2: TButton;
    btnAssinarXML: TButton;
    btnCancelar: TButton;
    btnConsultarNFSe: TButton;
    btnConsultarLoteRPS: TButton;
    gbConfigProxyNFSe: TGroupBox;
    edtCidade: TLabeledEdit;
    edtCNPJ: TLabeledEdit;
    edtInscMunicipal: TLabeledEdit;
    edtNumProtocolo: TLabeledEdit;
    NFSe: TspdNFSe;
    ProxyNFSe: TspdProxyNFSe;
    svDlgExportar: TSaveDialog;
    tsConfiguraImpressao: TTabSheet;
    OpnDlgLogoTipo: TOpenDialog;
    OpnDlgBrasao: TOpenDialog;
    gbConfiguracoes: TGroupBox;
    Label3: TLabel;
    edtBrasaoCidade: TEdit;
    Label4: TLabel;
    edtLogoEmitente: TEdit;
    Label5: TLabel;
    edtTituloImpressao: TEdit;
    btnLogoTipoEmitente: TButton;
    btnBrasaoCidade: TButton;
    pImpressao: TPanel;
    rgImpressao: TRadioGroup;
    gbOperacaoImpressao: TGroupBox;
    btnEditarDocumento: TButton;
    btnImprimir: TButton;
    btnExportar: TButton;
    btnVisualizar: TButton;
    ckbEnviarEmailPDF: TCheckBox;
    ckbModoAvancado: TCheckBox;
    gbComandos: TGroupBox;
    edtComandoCidade: TLabeledEdit;
    btnComandoLoadConfig: TButton;
    lbComandos: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    sgParametros: TStringGrid;
    btnComandoCopiarParametro: TButton;
    btnComandoExecutar: TButton;
    Label7: TLabel;
    cbListaCertificados: TComboBox;
    edtSecretaria: TEdit;
    lblSecretaria: TLabel;
    lblSubtituloNFSe: TLabel;
    edtSubtituloNFSe: TEdit;
    lblSubtituloRPS: TLabel;
    edtSubtituloRPS: TEdit;
    lblAmbiente: TLabel;
    btnConsultarNFSeporRPS: TButton;
    spdNFSeConverterX: TspdNFSeConverterX;
    tsCSV: TTabSheet;
    mmCSV: TMemo;
    tsFormatado: TTabSheet;
    mmTipado: TMemo;
    btnEnviarRPS: TButton;
    rbTipoEnvioSin: TRadioButton;
    rbTipoEnvioAss: TRadioButton;
    btnConsultarNotasTomadas: TButton;

    {DECLARAÇÕES RELACIONADAS AO ENVIO POR PROXYNFSe}
    {Abre o arquivo NFSeConfig.ini}
    procedure btnConfigArquivoINIClick(Sender: TObject);
    {Executa a ação LoadConfig}
    procedure btnLoadConfigClick(Sender: TObject);
    {Gera o XML apartir do arquivo TX2}
    procedure btnGerarXMLviaTX2Click(Sender: TObject);
    {Envia o lote RPS}
    procedure btnEnviarRPSClick(Sender: TObject);
    {Assina o arquivo RPS}
    procedure btnAssinarXMLClick(Sender: TObject);
    {Consulta o lote RPS}
    procedure btnConsultarLoteRPSClick(Sender: TObject);
    {Consulta uma NFSe pelo seu RPS}
    procedure btnConsultarNFSeporRPSClick(Sender: TObject);
    {Consulta uma NFSe}
    procedure btnConsultarNFSeClick(Sender: TObject);
    {Consulta as Notas Tomadas}
    procedure btnConsultarNotasTomadasClick(Sender: TObject);
    {Cancela determinada NFSe}
    procedure btnCancelarClick(Sender: TObject);

    {DECLARAÇÕES RELACIONADAS AO ENVIO POR COMANDO}
    {Carrega as configurações do arquivo .ini, para utlização de comandos}
    procedure btnComandoLoadConfigClick(Sender: TObject);
    {ListBox contendo todos os comandos de determinada cidade}
    procedure lbComandosClick(Sender: TObject);
    {Botão para executar determinado comando}
    procedure btnComandoExecutarClick(Sender: TObject);
    {Copia o conteúdo da resposta para a linha de parâmetros}
    procedure btnComandoCopiarParametroClick(Sender: TObject);

    {DECLARAÇÕES COMUNS PARA AMBOS OS MÉTODOS}
    {Criação do Form}
    procedure FormCreate(Sender: TObject);
    {Editar o documento de impressão}
    procedure btnEditarDocumentoClick(Sender: TObject);
    {Imprimir documento}
    procedure btnImprimirClick(Sender: TObject);
    {Exporta documento de impressão no formato PDF}
    procedure btnExportarClick(Sender: TObject);
    {Visualizar documento de impressão}
    procedure btnVisualizarClick(Sender: TObject);
    {Executa o Dialog para busca do brasão da cidade}
    procedure btnBrasaoCidadeClick(Sender: TObject);
    {Executa o Dialog para busca do logtipo emitente}
    procedure btnLogoTipoEmitenteClick(Sender: TObject);
    {Ativa a aba de envio por comandos e os parâmetros extras}
    procedure ckbModoAvancadoClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
	{Lista os certificados}
    procedure cbListaCertificadosDropDown(Sender: TObject);
    procedure mmXMLFormatadoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure mmXMLKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure mmCSVKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure mmTipadoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    fLogEnvio : String;
    {Lê configurações do exemplo de um arquivo .ini}
    function LerIni(const aName: string): string;
    {Escreve configurações do exemplo em um arquivo .ini}
    procedure GravarIni(aName, aValue: string);
    {Valida a presença do arquivo .ini}
    procedure CheckConfig;
    {Mostra e formata o XML de retorno
     @param aXML XML de retorno do método utilizado}
    procedure FormatReturnXML(aXML: string);
    {Configura os dados para impressão de acordo com as configurações da cidade
    @param aXML XML que será impresso}
    procedure ConfigurarImpressao(const aXML: string);
    {Configura o componente para o envio de email}
    procedure ConfigurarOpcoesEmail;
    {Anexa o PDF e realiza o envio de email}
    procedure EnviarEmail;
    {Verifica qual modo de impressão será utilizado printRPS ou printNFSe}
    function getModoImpressao: TspdModoImpressaoNFSe;
    {Valida o conteúdo do arquivo TX2 e retorna uma lista contendo o nome
    de todos os campos que estão com seu valor em branco
    @param aCaminhoTX2 Caminho completo onde se encontra o arquivo TX2}
    function ObterCamposVaziosTx2(const aCaminhoTX2: string): TStringList;
    {Evento utilizado para capturar o nome do log assim que ele é gerado}
    procedure OnLog(const aNome, aID, aFileName: String);
    {Exibe em tela os campos carregados nas propriedades do NFeConverter}
    procedure getRetornoEnvio(const aRet : IspdRetEnvioNFSe);
    {Exibe em tela os campos carregados nas propriedades do NFeConverter}
    procedure getRetornoEnvioSincrno(const aRet : IspdRetEnvioSincronoNFSe);
    {Exibe em tela os campos carregados nas propriedades do NFeConverter}
    procedure getRetornoConsultaLoteNFSe(const aRet : IspdRetConsultaLoteNFSe);
    {Exibe em tela os campos carregados nas propriedades do NFeConverter}
    procedure getRetornoConsultaNFSe(const aRet : IspdRetConsultaNFSe);
    {Exibe em tela os campos carregados nas propriedades do NFeConverter}
    procedure getRetornoCancelamento(const aRet : IspdRetCancelaNFSe);
    {Se estiver no modo avançado solicita os parâmetros extras das operações}
    function PedirParametrosExtras(var aParametrosExtras: string; const aOperacao: string): boolean;
    {Realiza o envio de RPS no modo síncrono}
    procedure EnvioSincrono;
    {Realiza o envio de RPS no modo assíncrono}
    procedure EnvioAssincrono;
  public
    { Public declarations }
  end;

var
  frmExemplo: TfrmExemplo;

implementation

{$R *.dfm}

uses ShellApi, spdNFSeXmlUtils;


{IMPLEMENTAÇÃO UTILIZANDO COMPONENTE ProxyNFSe}

procedure TFrmExemplo.CheckConfig;
var
  _Cidade, _CNPJ : string;
  _bConfig : Boolean;
begin
  _Cidade := trim(NFSe.Cidade);
  _CNPJ := trim(NFSe.CNPJ);  

  _bConfig := (_Cidade <> '') and (_CNPJ <> '');

  if (not _bConfig) then
    raise Exception.Create('Favor configurar o componente antes de prosseguir!');
end;

procedure LerGravarIni(const aSection, aName: string; var aValue: string; Ler: Boolean);
var
  _IniFile: TIniFile;
  _CurrentDir: string;
begin
  _CurrentDir := ExtractFilePath(ParamStr(0));
  SetCurrentDir(_CurrentDir);
  _IniFile := TIniFile.Create(_CurrentDir + EXEMPLO_INI_FILE);
  try
    if Ler then
      aValue := _IniFile.ReadString(aSection, aName, aValue)
    else
      _IniFile.WriteString(aSection, aName, aValue);
  finally
    _IniFile.Free;
  end;
end;

function TfrmExemplo.LerIni(const aName: string): string;
begin
  LerGravarIni(NFSe.Cidade, aName, Result, True);
end;

procedure TfrmExemplo.mmCSVKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  C : String;
begin
  if ssCtrl in Shift then
  begin
    C := LowerCase(Char(Key));
    if C = 'a' then
    begin
      mmCSV.SelectAll;
    end;
  end;
end;

procedure TfrmExemplo.mmTipadoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  C : String;
begin
  if ssCtrl in Shift then
  begin
    C := LowerCase(Char(Key));
    if C = 'a' then
    begin
      mmTipado.SelectAll;
    end;
  end;
end;

procedure TfrmExemplo.mmXMLFormatadoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  C : String;
begin
  if ssCtrl in Shift then
  begin
    C := LowerCase(Char(Key));
    if C = 'a' then
    begin
      mmXMLFormatado.SelectAll;
    end;
  end;
end;

procedure TfrmExemplo.mmXMLKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  C : String;
begin
  if ssCtrl in Shift then
  begin
    C := LowerCase(Char(Key));
    if C = 'a' then
    begin
      mmXML.SelectAll;
    end;
  end;
end;

procedure TFrmExemplo.GravarIni(aName, aValue: string);
begin
  LerGravarIni(NFSe.Cidade, aName, aValue, False);
end;

procedure TfrmExemplo.btnConfigArquivoINIClick(Sender: TObject);
var
  _ExecuteFile: string;
  _NomeCertificado: string;
  _CurrentDir: string;
  _IniFile: TIniFile;
begin
  (Sender as TWinControl).Enabled := False;
  try
    if cbListaCertificados.Text <> '' then
    begin
      _NomeCertificado := Trim(cbListaCertificados.Text);

      _CurrentDir := ExtractFilePath(ParamStr(0));
      SetCurrentDir(_CurrentDir);
      _IniFile := TIniFile.Create(_CurrentDir + 'nfseConfig.ini');
      try
        _IniFile.WriteString('NFSE', 'NomeCertificado', _NomeCertificado);
      finally
        _IniFile.Free;
      end;
    end;
    _ExecuteFile := ExtractFilePath(ParamStr(0)) + 'nfseConfig.ini';
    ShellExecute(Application.Handle, nil, Pchar(_ExecuteFile), nil, nil, SW_SHOWNORMAL);
  finally
    (Sender as TWinControl).Enabled := True;
  end;
end;

procedure TfrmExemplo.btnLoadConfigClick(Sender: TObject);
begin
  NFSe.ConfigurarSoftwareHouse('09186683000198', '0000000000000000');
  NFSe.LoadConfig;

  spdNFSeConverterX.DiretorioEsquemas := NFSe.DiretorioEsquemas;
  spdNFSeConverterX.DiretorioScripts := ExpandFileName(NFSe.DiretorioEsquemas + '\..\Scripts\');
  spdNFSeConverterX.Cidade := NFSe.Cidade;
  ProxyNFSe.ComponenteNFSe.OnLog := OnLog;

  edtCidade.Text := NFSe.Cidade;
  edtCNPJ.Text := NFSe.CNPJ;
  edtInscMunicipal.Text := NFSe.InscricaoMunicipal;
  cbListaCertificados.Text := NFSe.NomeCertificado.Text;

  edtBrasaoCidade.Text := ProxyNFSe.ComponenteNFSe.DiretorioTemplates +
    'Impressao\' + NFSe.ColecaoAtiva.Name + '\Brasao.jpg';
  edtLogoEmitente.Text := ProxyNFSe.ComponenteNFSe.DiretorioTemplates +
    'Impressao\LogoEmit.jpg';

  lblAmbiente.Visible := (NFSe.Ambiente = akProducao);

  edtNumProtocolo.Text := LerIni(PROTOCOLO);

  {Exemplo de configuração do método ConfigurarSoftwareHouse do componente NFSe e converterX}
end;

procedure TfrmExemplo.btnGerarXMLviaTX2Click(Sender: TObject);
var
  _XML, _AvisoCamposVazios, _Extras: string;
  _CamposVazios: TStringList;
  _Gerar: Boolean;
begin
  CheckConfig;
  OpnDlgTx2.InitialDir := '..\..\NFSe\Utils\ExemplosTX2\Padrão Município\';
  OpnDlgTx2.FileName := ProxyNFSe.ComponenteNFSe.Cidade + '.tx2';
  if OpnDlgTx2.Execute then
  begin
    _Gerar := True;

    // Verificar se deve gerar XML mesmo com campos vazios no arquivo TX2
    _CamposVazios := ObterCamposVaziosTx2(OpnDlgTx2.FileName);
    (Sender as TWinControl).Enabled := False;
    try
      if _CamposVazios.Count > 0 then
      begin
        _AvisoCamposVazios :=
          'Os campos abaixo estão com seu conteúdo em branco no arquivo TX2:'#13#13 +
          _CamposVazios.Text + #13 +
          'Isso pode causar um erro de esquema no XML de envio.'#13 +
          'Deseja gerar o XML mesmo assim?';
        _Gerar := (MessageBox(Handle, PChar(_AvisoCamposVazios) , 'Aviso',
          MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES);
      end;

      if _Gerar and PedirParametrosExtras(_Extras, 'GerarXml') then
      begin
        if rbTipoEnvioSin.Checked then
        begin
          if _Extras = EmptyStr then
            _Extras := 'EnvioSincrono=true'
          else
            _Extras := ';EnvioSincrono=true'
        end;

        _XML :=  spdNFSeConverterX.ConverterEnvioNFSe(OpnDlgTx2.FileName, _Extras);

        mmXMLFormatado.Font.Color := clBlue;
        mmXML.Lines.Text := _XML;
        mmXMLFormatado.Lines.Text := ReformatXml(_XML);

        rgImpressao.ItemIndex := 0;
      end;
    finally
      (Sender as TWinControl).Enabled := True;
      FreeAndNil(_CamposVazios);
    end;
  end;
end;

procedure TfrmExemplo.btnAssinarXMLClick(Sender: TObject);
var
  _XML, _Extras: string;
begin
  CheckConfig;
  (Sender as TWinControl).Enabled := False;
  try
    _Extras := '';
    if PedirParametrosExtras(_Extras, 'Assinar') then
    begin
      _XML := ProxyNFSe.Assinar(mmXML.Text, _Extras);
      FormatReturnXML(_XML);
    end;
  finally
    (Sender as TWinControl).Enabled := True;
  end;
end;

procedure TfrmExemplo.btnConsultarLoteRPSClick(Sender: TObject);
var
  _XML, _Extras: string;
  _Ret : IspdRetConsultaLoteNFSe;

begin
  CheckConfig;
  try
    (Sender as TWinControl).Enabled := False;
    try
      _Extras := '';
      if PedirParametrosExtras(_Extras, 'ConsultarLote') then
      begin
        _XML := ProxyNFSe.ConsultarLote(edtNumProtocolo.Text, _Extras);
        FormatReturnXML(_XML);
        rgImpressao.ItemIndex := 1;

        mmCSV.Clear;

        mmCSV.Text := spdNFSeConverterX.ConverterRetConsultarLoteNFSe(_XML,'');
        _Ret := spdNFSeConverterX.ConverterRetConsultarLoteNFSeTipo(_XML);

        getRetornoConsultaLoteNFSe(_Ret)
      end;
    finally
      (Sender as TWinControl).Enabled := True;
      _Ret := nil;
    end;
  except
    raise;
  end;
end;

procedure TfrmExemplo.btnConsultarNFSeClick(Sender: TObject);
var
  _XML, _NumNota, _Extras: String;
   _Ret : IspdRetConsultaNFSe;
begin
  CheckConfig;
  try
    try
      (Sender as TWinControl).Enabled := False;
      _NumNota := LerIni(CONSULTARNFSE_NUMERONFSE);
      _Extras := '';
      if InputQuery('Digite o Número da NFSe', '', _NumNota) and
        PedirParametrosExtras(_Extras, 'ConsultarNfse') then
      begin
        _XML := ProxyNFSe.ConsultarNota(_NumNota, _Extras);
        FormatReturnXML(_XML);
        rgImpressao.ItemIndex := 1;

        GravarIni(CONSULTARNFSE_NUMERONFSE, _NumNota);

        mmCSV.Clear;

        mmCSV.Text := spdNFSeConverterX.ConverterRetConsultarNFSe(_XML,'');
        _Ret := spdNFSeConverterX.ConverterRetConsultarNFSeTipo(_XML);

        getRetornoConsultaNFSe(_Ret);
      end;
    finally
      (Sender as TWinControl).Enabled := True;
      _Ret := nil;
    end;
  except
    raise;
  end;
end;

procedure TfrmExemplo.btnCancelarClick(Sender: TObject);
var
  _XML, _Extras: String;
  _Ret : IspdRetCancelaNFSe;
begin
  CheckConfig;
  try
    try
      (Sender as TWinControl).Enabled := False;
      frmCancelamento.edtChaveCancelamento.Text := LerIni(CANCELARNFSE_CHAVE);
      frmCancelamento.ShowModal;
      _Extras := '';
      if (frmCancelamento.ModalResult = mrOk) and
        PedirParametrosExtras(_Extras, 'CancelarNfse') then
      begin
        _XML := ProxyNFSe.CancelarNota(
          frmCancelamento.edtChaveCancelamento.Text, _Extras);

        FormatReturnXML(_XML);

        GravarIni(CANCELARNFSE_CHAVE, frmCancelamento.edtChaveCancelamento.Text);

        mmCSV.Clear;
        mmCSV.Text := spdNFSeConverterX.ConverterRetCancelarNFSe(_XML,'');
        _Ret := spdNFSeConverterX.ConverterRetCancelarNFSeTipo(_XML);
        getRetornoCancelamento(_Ret);
      end;
    finally
      (Sender as TWinControl).Enabled := True;
       _Ret := nil;
    end;
  except
    raise;
  end;
end;


{IMPLEMENTAÇÃO UTILIZANDO COMANDOS}

procedure TfrmExemplo.btnComandoLoadConfigClick(Sender: TObject);
begin
  lbComandos.Clear;
  edtComandoCidade.Clear;
  NFSe.LoadConfig;
  edtComandoCidade.Text := NFSe.Cidade;
  lbComandos.Items.CommaText := NFSe.ListarComandos;
  btnComandoExecutar.Enabled := True;
end;

procedure TfrmExemplo.lbComandosClick(Sender: TObject);
var
  _nomeComando, _paramentros: string;
  _arrParametros: TStringList;
  _cont: integer;
begin
  _arrParametros := TStringList.Create;
  try
    _nomeComando := lbComandos.Items.Strings[lbComandos.ItemIndex];
    _paramentros := NFSe.Comando(_nomeComando).Parametros.Listar;
    _arrParametros.CommaText := _paramentros;

    sgParametros.RowCount := 2;
    For _cont := 1 to _arrParametros.Count do
    begin
      sgParametros.RowCount := _arrParametros.Count + 1;
      sgParametros.Cells[0,_cont] := _arrParametros[_cont-1];
      sgParametros.Cells[1,_cont] := '';
    end;
  finally
    _arrParametros.Free;
  end;
end;

procedure TfrmExemplo.btnComandoExecutarClick(Sender: TObject);
var
  _nomeComando, _nomeParametro, _valorParametro, _resposta: string;
  _cont: integer;
begin
  (Sender as TWinControl).Enabled := False;
  try
    _nomeComando := lbComandos.Items.Strings[lbComandos.ItemIndex];

    if not AnsiSameText(_nomeComando, 'ConsultaSequenciaLote') then
    begin
      for _cont := 1 to sgParametros.RowCount-1 do
      begin
        _nomeParametro := sgParametros.Cells[0,_cont];
        _valorParametro := sgParametros.Cells[1,_cont];
        NFSe.Comando(_nomeComando).Parametros[_nomeParametro] := _valorParametro;
      end;
    end;

    _resposta := NFSe.Executar(_nomeComando);
    FormatReturnXML(_resposta);
  finally
    (Sender as TWinControl).Enabled := True;
  end;
end;

procedure TfrmExemplo.btnComandoCopiarParametroClick(Sender: TObject);
begin
  sgParametros.Cells[1,1] := mmXML.Text;
end;


{IMPLEMENTAÇÃO COMUM PARA AMBOS OS MÉTODOS}

procedure TfrmExemplo.FormatReturnXML(aXML: string);
begin
    mmXMLFormatado.Clear;
    mmXML.Clear;
    mmXMLFormatado.Font.Color := clBlue;

    mmXML.Lines.Text := aXML;
    aXML := ProxyNFSe.ComponenteNFSe.ExtractEscapedContent(aXML);
    mmXMLFormatado.Lines.Text := ReformatXml(aXML);
end;

function TfrmExemplo.getModoImpressao: TspdModoImpressaoNFSe;
begin
  if rgImpressao.ItemIndex = 0 then
    Result := printRPS
  else
    Result := printNFSe;
end;

procedure TfrmExemplo.btnEditarDocumentoClick(Sender: TObject);
var
  _XML: string;
begin
  CheckConfig;
  _XML := mmXML.Text;
  ProxyNFSe.ComponenteNFSe.ConfiguracoesImpressao.ModoImpressao := getModoImpressao;
  ConfigurarImpressao(_XML);
  ProxyNFSe.ComponenteNFSe.Impressao.EditarDocumento;
end;

procedure TfrmExemplo.btnImprimirClick(Sender: TObject);
var
  _XML: string;
begin
  CheckConfig;
  _XML := mmXML.Text;
  ProxyNFSe.ComponenteNFSe.ConfiguracoesImpressao.ModoImpressao := getModoImpressao;
  ConfigurarImpressao(_XML);
  ProxyNFSe.ComponenteNFSe.Impressao.ImprimirDocumento;
end;

procedure TfrmExemplo.btnExportarClick(Sender: TObject);
var
  _XML: string;
begin
  CheckConfig;
  _XML := mmXML.Text;
  ProxyNFSe.ComponenteNFSe.ConfiguracoesImpressao.ModoImpressao := getModoImpressao;
  ConfigurarImpressao(_XML);
  svDlgExportar.FileName := ProxyNFSe.ComponenteNFSe.Cidade + '.pdf';
  if svDlgExportar.Execute then
  begin
    if _XML <> '' then
      ProxyNFSe.ComponenteNFSe.Impressao.ExportarDocumentoParaPDF('', '', svDlgExportar.FileName);

    if ckbEnviarEmailPDF.Checked then
    begin
      ConfigurarOpcoesEmail;
      EnviarEmail;
    end;
  end;
end;

procedure TfrmExemplo.btnVisualizarClick(Sender: TObject);
var
  _XML: string;
begin
  CheckConfig;
  _XML := mmXML.Text;
  ProxyNFSe.ComponenteNFSe.ConfiguracoesImpressao.ModoImpressao := getModoImpressao;
  ConfigurarImpressao(_XML);
  ProxyNFSe.ComponenteNFSe.Impressao.VisualizarDocumento;
end;

procedure TfrmExemplo.btnEnviarRPSClick(Sender: TObject);
begin
  if (NFSe.Ambiente = akProducao) and (Application.MessageBox('O componente está configurado ' +
    'para enviar em ambiente de produção, deseja continuar?', 'Atenção!',
    MB_YESNO + MB_ICONWARNING) = IDNO) then exit;

  CheckConfig;
  try
    (Sender as TWinControl).Enabled := False;

    if rbTipoEnvioSin.Checked then
      EnvioSincrono
    else
      EnvioAssincrono;

  finally
    (Sender as TWinControl).Enabled := True;
  end;
end;

procedure TfrmExemplo.cbListaCertificadosDropDown(Sender: TObject);
begin
  cbListaCertificados.Clear;
  NFSe.ListarCertificados(cbListaCertificados.Items);
end;

procedure TfrmExemplo.FormCreate(Sender: TObject);
begin
  if ProxyNFSe.ComponenteNFSe = nil then
    raise Exception.Create('Favor ligar o componente ProxyNFSe ao componente NFSe.');

  Application.Icon.LoadFromFile(ExtractFilePath(Application.ExeName) + 'nfse.ico');
  frmExemplo.Caption := 'Tecnospeed NFSe - Versão: ' + ProxyNFSe.ComponenteNFSe.Versao;
  btnComandoLoadConfig.Hint := 'Carregado do arquivo: "' +  ExtractFilePath(Application.ExeName) + 'nfseConfig.ini"';
  sgParametros.Cells[0,0] := 'NomeParametro';
  sgParametros.Cells[1,0] := 'ValorParametro';
  {$IFDEF Win32}
  wbBanner.Navigate('http://www.tecno-services.com/imagens/BannerNFe.gif');
  {$ENDIF}
  tsComandos.TabVisible := False;
  pcDados.TabIndex := 0;

  edtBrasaoCidade.Text := ProxyNFSe.ComponenteNFSe.DiretorioTemplates + 'Impressao\Brasão Tecnospeed.jpg';
  edtLogoEmitente.Text := ProxyNFSe.ComponenteNFSe.DiretorioTemplates + 'Impressao\LogoEmit.jpg';
end;

procedure TfrmExemplo.FormDestroy(Sender: TObject);
begin
  GravarIni('Protocolo', edtNumProtocolo.Text);
end;

procedure TfrmExemplo.ConfigurarImpressao(const aXML: string);
begin
  with ProxyNFSe.ComponenteNFSe do
  begin
    Impressao.CriarDatasets(aXML);
    Impressao.Configurar('BrasaoMunicipio',edtBrasaoCidade.Text);
    Impressao.Configurar('LogotipoEmitente',edtLogoEmitente.Text);
    Impressao.Configurar('Titulo', edtTituloImpressao.Text);
    Impressao.Configurar('SecretariaResponsavel', edtSecretaria.Text);
    Impressao.Configurar('SubtituloNFSe', edtSubtituloNFSe.Text);
    Impressao.Configurar('SubtituloRPS', edtSubtituloRPS.Text);
    Impressao.Configurar('ArquivoMunicipios', NFSe.DiretorioTemplates + '\Impressao\municipios.txt');
  end;

  if ProxyNFSe.ComponenteNFSe.ConfiguracoesImpressao.ModoImpressao = printRPS then
  begin
    with ProxyNFSe.ComponenteNFSe.Impressao do
    begin
      First;
      while not Eof do
      begin
        Editar;
        { Exemplo de como setar os campos customizados do Mapping de impressão.
        if Campo('NomeFantasiaPrestador').AsString = '' then
          Campo('NomeFantasiaPrestador').AsString := 'NOME FANTASIA PRESTADOR';
        }
        Salvar;
        Next;
      end;
    end;
  end;
end;

function TfrmExemplo.ObterCamposVaziosTx2(const aCaminhoTX2: string): TStringList;
var
  _file, _CamposVazios : TStringList;
  _i, _pos : integer;
  _conteudo, _campo : string;
begin
  _file := TStringList.Create;
  _CamposVazios := TStringList.Create;
  try
    _file.LoadFromFile(aCaminhoTX2);

    for _i := 0 to _file.Count - 1 do
    begin
      _pos := Pos('=', _file[_i]);
      if _pos > 0 then
      begin
        _conteudo := copy(_file[_i], _pos+1, 1);
        if (trim(_conteudo) = '') then
        begin
          _campo := copy(_file[_i], 1, _pos-1);
          _CamposVazios.Add(_campo);
        end;
      end;
    end;
    Result := _CamposVazios;
  finally
    FreeAndNil(_file);
  end;
end;

procedure TfrmExemplo.ConfigurarOpcoesEmail;
begin
  with ProxyNFSe.ComponenteNFSe.EmailSettings do
  begin
    ServidorSmtp := 'smtp.gmail.com'; // CONFIGURAR SERVIDOR SMTP, por exemplo: smtp.gmail.com
    Usuario := 'testenfse@gmail.com'; // CONFIGURAR USUARIO
    Senha := 'tecnospeed'; // CONFIGURAR SENHA
    EmailRemetente := ''; // CONFIGURAR EMAIL DO REMETENTE, exemplo: jose@gmail.com
    EmailDestinatario := InputBox('Envio de Email', 'Informe o email destinatário', 'email@servidor.com') ; // CONFIGURAR EMAIL(S) DO(s) TOMADOR DE SERVIÇO(S), exemplo: fulano@yahoo.com.br
    Autenticacao := true; // Verificar se o servidor de smtp necessita ser autenticado.
    Assunto := 'Teste envio de email';
    Mensagem := 'Esta mensagem é um teste';
    Porta := 587;
  end;
end;

procedure TfrmExemplo.EnviarEmail;
var
  _anexos: TStringList;
begin
  _anexos := TStringList.Create;
  try
    _anexos.Add(svDlgExportar.FileName);
    ProxyNFSe.ComponenteNFSe.EnviarEmail(ProxyNFSe.ComponenteNFSe.EmailSettings.EmailDestinatario, _anexos);
  finally
    FreeAndNil(_anexos);
  end;
end;

procedure TfrmExemplo.EnvioAssincrono;
var
  _protocolo, _Extras: string;
  _XML : TStringList;
  _Ret : IspdRetEnvioNFSe;
begin
  _XML := TStringList.Create;
  try
    try
      _Extras := '';
      if PedirParametrosExtras(_Extras, 'Enviar') then
      begin
        _protocolo := ProxyNFSe.Enviar(mmXML.Text, _Extras);
        mmXML.Text := _protocolo;
        mmXMLFormatado.Clear;

        _XML.LoadFromFile(fLogEnvio);
        mmCSV.Text := spdNFSeConverterX.ConverterRetEnvioNFSe(_XML.Text,'');
        _Ret := spdNFSeConverterX.ConverterRetEnvioNFSeTipo(_XML.Text);

        getRetornoEnvio(_Ret);

        if Pos('-1;', _protocolo) = 0 then
        begin
          edtNumProtocolo.Text := _protocolo;
          mmXMLFormatado.Text := 'Protocolo: ' + _protocolo;
          GravarIni(PROTOCOLO, _protocolo);
        end
        else
        begin
          edtNumProtocolo.Text := '';
          mmXMLFormatado.Font.Color := clRed;
          mmXMLFormatado.Text := 'Envio de RPS sem sucesso.'  +
            ' A resposta do servidor está gravada no arquivo de log localizado em: '+
            copy(_protocolo, 4, (length(_protocolo )-2));
        end;
      end;
    finally
      _XML.Free;
      _Ret := nil;
    end;
  except
    raise;
  end;
end;

procedure TfrmExemplo.EnvioSincrono;
var
  _XML, _Extras: string;
  _Ret : IspdRetEnvioSincronoNFSe;
  _LogXml : TStringList;

begin
  _LogXml := TStringList.Create;

  try
    try
      _Extras := '';
      if PedirParametrosExtras(_Extras, 'Enviar') then
      begin
        _XML := ProxyNFSe.EnviarSincrono(mmXML.Text, _Extras);
        FormatReturnXML(_XML);
        rgImpressao.ItemIndex := 1;

        mmCSV.Clear;

        _LogXml.LoadFromFile(fLogEnvio);

        mmCSV.Text := spdNFSeConverterX.ConverterRetEnvioSincronoNFSe(_LogXml.Text,'');
        _Ret := spdNFSeConverterX.ConverterRetEnvioSincronoNFSeTipo(_LogXml.Text);

        getRetornoEnvioSincrno(_Ret);

        if Pos('-1;', mmXML.Text) > 0 then
        begin
          mmXMLFormatado.Font.Color := clRed;
          mmXMLFormatado.Text := 'Envio de RPS no modo Síncrono sem sucesso.'  +
            ' A resposta do servidor está gravada no arquivo de log localizado em: '+
            copy(mmXML.Text, 4, (length(mmXML.Text )-2));
        end;
      end;
    finally
      _Ret := nil;
      _LogXml.Free;
    end;
  except
    raise;
  end;
end;

procedure TfrmExemplo.btnBrasaoCidadeClick(Sender: TObject);
begin
  OpnDlgBrasao.InitialDir := ExtractFileDir(edtBrasaoCidade.Text);
  OpnDlgBrasao.FileName := ExtractFileName(edtBrasaoCidade.Text);
  if OpnDlgBrasao.Execute then
    edtBrasaoCidade.Text := OpnDlgBrasao.FileName;
end;

procedure TfrmExemplo.btnLogoTipoEmitenteClick(Sender: TObject);
begin
  OpnDlgLogoTipo.InitialDir := ExtractFileDir(edtLogoEmitente.Text);
  OpnDlgLogoTipo.FileName := ExtractFileName(edtLogoEmitente.Text);
  if OpnDlgLogoTipo.Execute then
    edtLogoEmitente.Text := OpnDlgLogoTipo.FileName;
end;

procedure TfrmExemplo.ckbModoAvancadoClick(Sender: TObject);
begin
  if tsComandos.TabVisible then
    tsComandos.TabVisible := False
  else
    tsComandos.TabVisible := True;
end;

procedure TfrmExemplo.btnConsultarNFSeporRPSClick(Sender: TObject);
var
  _XML, _NumNota, _Extras: string;
  _FormDados: TFrmConsNFSEporRPS;
  _Ret : IspdRetConsultaNFSe;
begin
  CheckConfig;
  try
    _FormDados := TFrmConsNFSEporRPS.Create(nil);
    try
      (Sender as TWinControl).Enabled := False;
      _NumNota := '';
      _FormDados.edNumRPS.Text   := LerIni(CONSULTARNFSEPORRPS_NUMERO);
      _FormDados.edSerieRPS.Text := LerIni(CONSULTARNFSEPORRPS_SERIE);
      _FormDados.edTPRps.Text    := LerIni(CONSULTARNFSEPORRPS_TIPO);
      _FormDados.ShowModal;
      _Extras := '';
      if (_FormDados.ModalResult = mrok) and
        PedirParametrosExtras(_Extras, 'ConsultarNfsePorRps') then
      begin
        _XML := ProxyNFSe.ConsultarNFSePorRPS(_FormDados.edNumRPS.Text,
          _FormDados.edSerieRPS.Text, _FormDados.edTPRps.Text, _Extras);
        FormatReturnXML(_XML);

        GravarIni(CONSULTARNFSEPORRPS_NUMERO, _FormDados.edNumRPS.Text);
        GravarIni(CONSULTARNFSEPORRPS_SERIE,  _FormDados.edSerieRPS.Text);
        GravarIni(CONSULTARNFSEPORRPS_TIPO,   _FormDados.edTPRps.Text);

        mmCSV.Clear;

        mmCSV.Text := spdNFSeConverterX.ConverterRetConsultarNFSePorRPS(_XML,'');
        _Ret := spdNFSeConverterX.ConverterRetConsultarNFSePorRpsTipo(_XML);
        getRetornoConsultaNFSe(_Ret);

      end;
      rgImpressao.ItemIndex := 1;
    finally
      _FormDados.Free;
      (Sender as TWinControl).Enabled := True;
    end;
  except
    raise;
  end;
end;

procedure TfrmExemplo.btnConsultarNotasTomadasClick(Sender: TObject);
var
  _XML, _Extras: string;
  _FormDados: TFrmConsNFSETomadas;
begin
  CheckConfig;
  try
    _FormDados := TFrmConsNFSETomadas.Create(nil);
    try
      (Sender as TWinControl).Enabled := False;
      _FormDados.edtNomeCidade.Text   := LerIni(CONSULTARNOTASTOMADAS_NOMECIDADE);
      _FormDados.edtDocumentoTomador.Text   := LerIni(CONSULTARNOTASTOMADAS_DOCUMENTOTOMADOR);
      _FormDados.edtIMTomador.Text   := LerIni(CONSULTARNOTASTOMADAS_IMTOMADOR);
      _FormDados.edtDocumentoPrestador.Text   := LerIni(CONSULTARNOTASTOMADAS_DOCUMENTOPRESTADOR);
      _FormDados.edtIMPrestador.Text   := LerIni(CONSULTARNOTASTOMADAS_IMPRESTADOR);
      _FormDados.edtDataInicial.Text   := LerIni(CONSULTARNOTASTOMADAS_DATAINICIAL);
      _FormDados.edtDataFinal.Text   := LerIni(CONSULTARNOTASTOMADAS_DATAFINAL);
      _FormDados.edtPagina.Text   := LerIni(CONSULTARNOTASTOMADAS_PAGINA);
      _FormDados.ShowModal;
      _Extras := '';
      if (_FormDados.ModalResult = mrok) and
        PedirParametrosExtras(_Extras, 'ConsultarNotasTomadas') then
      begin
        _XML := ProxyNFSe.ConsultarNotasTomadas(_FormDados.edtNomeCidade.Text,
          _FormDados.edtDocumentoTomador.Text, _FormDados.edtIMTomador.Text, _FormDados.edtDocumentoPrestador.Text,
          _FormDados.edtIMPrestador.Text, _FormDados.edtDataInicial.Text, _FormDados.edtDataFinal.Text, _FormDados.edtPagina.Text,
          _Extras);
        FormatReturnXML(_XML);

        GravarIni(CONSULTARNOTASTOMADAS_NOMECIDADE, _FormDados.edtNomeCidade.Text);
        GravarIni(CONSULTARNOTASTOMADAS_DOCUMENTOTOMADOR, _FormDados.edtDocumentoTomador.Text);
        GravarIni(CONSULTARNOTASTOMADAS_IMTOMADOR, _FormDados.edtIMTomador.Text);
        GravarIni(CONSULTARNOTASTOMADAS_DOCUMENTOPRESTADOR, _FormDados.edtDocumentoPrestador.Text);
        GravarIni(CONSULTARNOTASTOMADAS_IMPRESTADOR, _FormDados.edtIMPrestador.Text);
        GravarIni(CONSULTARNOTASTOMADAS_DATAINICIAL, _FormDados.edtDataInicial.Text);
        GravarIni(CONSULTARNOTASTOMADAS_DATAFINAL, _FormDados.edtDataFinal.Text);
        GravarIni(CONSULTARNOTASTOMADAS_PAGINA, _FormDados.edtPagina.Text);

        mmCSV.Clear;

      end;
      rgImpressao.ItemIndex := 1;
    finally
      _FormDados.Free;
      (Sender as TWinControl).Enabled := True;
    end;
  except
    raise;
  end;
end;

procedure TfrmExemplo.OnLog(const aNome, aID, aFileName: String);
begin
  fLogEnvio := '';

  if (AnsiContainsText(aNome,'resposta')) then
    fLogEnvio := aFileName;
end;

{ ; ======================================================= ;}
{ ; |  Tratamento de retornos utilizando o NFSeConverter  | ;}
{ ; ======================================================= ;}

procedure TfrmExemplo.getRetornoEnvio(const aRet : IspdRetEnvioNFSe);
begin
   mmTipado.Clear;

   case aRet.Status of
     0 : mmTipado.Lines.Add('Status: SUCESSO');
     1 : mmTipado.Lines.Add('Status: EM PROCESSAMENTO');
     2 : mmTipado.Lines.Add('Status: ERRO');
   end;

   mmTipado.Lines.Add('Motivo: ' + aRet.Motivo);
   mmTipado.Lines.Add('Protocolo: ' + aRet.NumeroProtocolo);
end;

procedure TfrmExemplo.getRetornoEnvioSincrno(const aRet: IspdRetEnvioSincronoNFSe);
var
  i : integer;
begin
  mmTipado.Clear;

  if aRet.Status = 1 then
    mmTipado.Lines.Add('Status: EMPROCESSAMENTO')
  else
	  if aRet.Status = 2 then
    begin
      mmTipado.Lines.Add('Status: ERRO');
      mmTipado.Lines.Add('Motivo: ' + aRet.Motivo);
    end
    else
    begin
      for i := 0 to aRet.ListaDeNFes.Count - 1 do
      begin
        mmTipado.Lines.Add('Status: SUCESSO');

        mmTipado.Lines.Add('CNPJ: ' + aRet. ListaDeNFes.Item(i).Cnpj);
        mmTipado.Lines.Add('Inscricao Municipal: ' + aRet.ListaDeNFes.Item(i).InscMunicipal);
        mmTipado.Lines.Add('Serie do RPS: ' + aRet.ListaDeNFes.Item(i).SerieRps);
        mmTipado.Lines.Add('Número do RPS: ' + aRet.ListaDeNFes.Item(i).NumeroRps);
        mmTipado.Lines.Add('Número da NFS-e: ' + aRet.ListaDeNFes.Item(i).NumeroNFSe);
        mmTipado.Lines.Add('Data de Emissão: ' + aRet.ListaDeNFes.Item(i).DataEmissaoNFSe);
        mmTipado.Lines.Add('Código de Verificação: ' + aRet.ListaDeNFes.Item(i).CodVerificacao);
        mmTipado.Lines.Add('Situação: ' + aRet.ListaDeNFes.Item(i).Situacao);
        mmTipado.Lines.Add('Data De Cancelamento: ' + aRet.ListaDeNFes.Item(i).DataCancelamento);
        mmTipado.Lines.Add('Chave de Cancelamento: ' + aRet.ListaDeNFes.Item(i).ChaveCancelamento);
        mmTipado.Lines.Add('Tipo: ' + aRet.ListaDeNFes.Item(i).Tipo);
        mmTipado.Lines.Add('Motivo: ' + aRet.ListaDeNFes.Item(i).Motivo);
        mmTipado.Lines.Add('XML: ' + aRet.ListaDeNFes.Item(i).Xml);

        mmTipado.Lines.Add('');
        mmTipado.Lines.Add('================================================');
        mmTipado.Lines.Add('');
      end;
    end;
end;

procedure TfrmExemplo.getRetornoConsultaLoteNFSe(const aRet: IspdRetConsultaLoteNFSe);
var
  i : integer;
begin
  mmTipado.Clear;

  if aRet.Status = 1 then
    mmTipado.Lines.Add('Status: EMPROCESSAMENTO')
   else
	 if aRet.Status = 2 then
   begin
    mmTipado.Lines.Add('Status: ERRO');
    mmTipado.Lines.Add('Motivo: ' + aRet.Motivo);
   end
  else
   begin
    for i := 0 to aRet.ListaDeNFes.Count - 1 do
     begin
        mmTipado.Lines.Add('Status: SUCESSO');

        mmTipado.Lines.Add('CNPJ: ' + aRet.ListaDeNFes.Item(i).Cnpj);
        mmTipado.Lines.Add('Inscricao Municipal: ' + aRet.ListaDeNFes.Item(i).InscMunicipal);
        mmTipado.Lines.Add('Serie do RPS: ' + aRet.ListaDeNFes.Item(i).SerieRps);
        mmTipado.Lines.Add('Número do RPS: ' + aRet.ListaDeNFes.Item(i).NumeroRps);
        mmTipado.Lines.Add('Número da NFS-e: ' + aRet.ListaDeNFes.Item(i).NumeroNFSe);
        mmTipado.Lines.Add('Data de Emissão: ' + aRet.ListaDeNFes.Item(i).DataEmissaoNFSe);
        mmTipado.Lines.Add('Código de Verificação: ' + aRet.ListaDeNFes.Item(i).CodVerificacao);
        mmTipado.Lines.Add('Situação: ' + aRet.ListaDeNFes.Item(i).Situacao);
        mmTipado.Lines.Add('Data De Cancelamento: ' + aRet.ListaDeNFes.Item(i).DataCancelamento);
        mmTipado.Lines.Add('Chave de Cancelamento: ' + aRet.ListaDeNFes.Item(i).ChaveCancelamento);
        mmTipado.Lines.Add('Tipo: ' + aRet.ListaDeNFes.Item(i).Tipo);
        mmTipado.Lines.Add('Motivo: ' + aRet.ListaDeNFes.Item(i).Motivo);
        mmTipado.Lines.Add('XML: ' + aRet.ListaDeNFes.Item(i).Xml);

        mmTipado.Lines.Add('');
        mmTipado.Lines.Add('================================================');
        mmTipado.Lines.Add('');

     end;
    end;
end;

procedure TfrmExemplo.getRetornoConsultaNFSe(const aRet: IspdRetConsultaNFSe);
begin
   mmTipado.Clear;

    if aRet.Status = 2 then
     begin
       mmTipado.Lines.Add('Status: ERRO');
       mmTipado.Lines.Add('Motivo: ' + aRet.Motivo);
     end
    else
      begin
        case aRet.Status of
           0 : mmTipado.Lines.Add('Status: SUCESSO');
           1 : mmTipado.Lines.Add('Status: EM PROCESSAMENTO');
        end;

        mmTipado.Lines.Add('CNPJ: ' + aRet.Cnpj);
        mmTipado.Lines.Add('Inscricao Municipal: ' + aRet.InscMunicipal);
        mmTipado.Lines.Add('Serie do RPS: ' + aRet.SerieRps);
        mmTipado.Lines.Add('Número do RPS: ' + aRet.NumeroRps);
        mmTipado.Lines.Add('Número da NFS-e: ' + aRet.NumeroNFSe);
        mmTipado.Lines.Add('Data de Emissão: ' + aRet.DataEmissaoNFSe);
        mmTipado.Lines.Add('Código de Verificação: ' + aRet.CodVerificacao);
        mmTipado.Lines.Add('Situação: ' + aRet.Situacao);
        mmTipado.Lines.Add('Data De Cancelamento: ' + aRet.DataCancelamento);
        mmTipado.Lines.Add('Chave de Cancelamento: ' + aRet.ChaveCancelamento);
        mmTipado.Lines.Add('Tipo: ' + aRet.Tipo);
        mmTipado.Lines.Add('Motivo: ' + aRet.Motivo);
        mmTipado.Lines.Add('XML: ' + aRet.Xml);
      end;
end;

procedure TfrmExemplo.getRetornoCancelamento(const aRet: IspdRetCancelaNFSe);
begin
  mmTipado.Clear;

  if aRet.Status = 2 then
    begin
      mmTipado.Lines.Add('Status: ERRO');
      mmTipado.Lines.Add('Motivo: ' + aRet.Motivo);
    end
  else
    begin
      case aRet.Status of
        0 : mmTipado.Lines.Add('Status: SUCESSO');
        1 : mmTipado.Lines.Add('Status: EM PROCESSAMENTO');
      end;
      mmTipado.Lines.Add('Data do Cancelamento: ' + aRet.DataCancelamento);
    end;

end;

function TfrmExemplo.PedirParametrosExtras(var aParametrosExtras: string;
  const aOperacao: string): boolean;
begin
  Result := True;
  if ckbModoAvancado.Checked then
  begin
    aParametrosExtras := LerIni(aOperacao + '_Extras');
    Result := InputQuery('Informe os parâmetros extras:',
      'Informe os parâmetros extras separados por ponto-e-vírgula, caso sejam necessários. '#13+
      'Em caso contrário, apenas clique em OK.',
      aParametrosExtras);
    if Result then
      GravarIni(aOperacao + '_Extras', aParametrosExtras);
  end
  else
    aParametrosExtras := '';
end;

end.
