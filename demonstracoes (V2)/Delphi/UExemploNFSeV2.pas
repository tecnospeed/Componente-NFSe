unit uExemploNFSeV2;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, spdNFSe, spdNFSeException, IniFiles, MSXML5_TLB, spdCustomNFSe,
  spdNFSeUtils, StrUtils, spdNFSeDataset, spdNFSeXsdUtils, ComCtrls, StdCtrls,
  ExtCtrls, CheckLst, Grids, DBGrids, OleCtrls, SHDocVw, spdNFSeTypes,
  spdNFSeGov;

//******************************************************************************************************
//
//          Declarações
//
//******************************************************************************************************
type
  TfrmExemplo = class(TForm)
    OpnDlgTx2: TOpenDialog;
    pcMensagens: TPageControl;
    tsXML: TTabSheet;
    tsXMLFormatado: TTabSheet;
    mmXMLEnvio: TMemo;
    mmXML: TMemo;
    NFSe: TspdNFSe;
    svDlgExportar: TSaveDialog;
    OpnDlgLogoTipo: TOpenDialog;
    tsJSON: TTabSheet;
    mmJson: TMemo;
    tsFormatado: TTabSheet;
    mmTipado: TMemo;
    pcDados: TPageControl;
    tsNFSe: TTabSheet;
    gbOperacoesNFSe: TGroupBox;
    Label7: TLabel;
    lblAmbiente: TLabel;
    btnConfigArquivoINI: TButton;
    btnLoadConfig: TButton;
    btnEnviarRPS: TButton;
    btnCancelar: TButton;
    btnConsultarNota: TButton;
    cbListaCertificados: TComboBox;
    edtNumeroRPS: TLabeledEdit;
    edtSerieRPS: TLabeledEdit;
    edtTipoRPS: TLabeledEdit;
    edtNumeroNFSe: TLabeledEdit;
    edtChaveCancelamento: TLabeledEdit;
    gbConfigNFSe: TGroupBox;
    edtCidade: TLabeledEdit;
    edtCNPJ: TLabeledEdit;
    edtInscMunicipal: TLabeledEdit;
    edtNumProtocolo: TLabeledEdit;
    btnAtualizaArquivos: TButton;
    tsConfiguraImpressao: TTabSheet;
    gbConfiguracoes: TGroupBox;
    Label4: TLabel;
    edtLogoEmitente: TEdit;
    btnLogoTipoEmitente: TButton;
    gbOperacaoImpressao: TGroupBox;
    btnEditarDocumento: TButton;
    btnImprimir: TButton;
    btnExportar: TButton;
    btnVisualizar: TButton;
    ckbEnviarEmailPDF: TCheckBox;
    tsConsultaTomadas: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblDocumentoPrestador: TLabel;
    lblIMPrestador: TLabel;
    lblDataInicial: TLabel;
    lblDataFinal: TLabel;
    lblPagina: TLabel;
    edtNomeCidade: TEdit;
    edtDocumentoTomador: TEdit;
    edtIMTomador: TEdit;
    edtDocumentoPrestador: TEdit;
    edtIMPrestador: TEdit;
    edtDataInicial: TEdit;
    edtDataFinal: TEdit;
    edtPagina: TEdit;
    btnConsultarNotasTomadas: TButton;
    tsCidadesHomologadas: TTabSheet;
    btnListarCidades: TButton;
    edtCNPJSoftwareHouse: TLabeledEdit;
    edtTokenSoftwareHouse: TLabeledEdit;

    {DECLARAÇÕES RELACIONADAS AO ENVIO e CONSULTAS}
    {Abre o arquivo NFSeConfig.ini}
    procedure btnConfigArquivoINIClick(Sender: TObject);
    {Executa a ação LoadConfig}
    procedure btnLoadConfigClick(Sender: TObject);
    {Enviar RPS apartir do arquivo TX2}
    procedure btnEnviarRPSClick(Sender: TObject);
    {Consulta a Nota Com base nos parametros preenchidos}
    procedure btnConsultarNotaClick(Sender: TObject);
    {Solicita Cancelamento da Nota na prefeitura}
    procedure btnCancelarClick(Sender: TObject);
    {Consulta as Notas Tomadas}
    procedure btnConsultarNotasTomadasClick(Sender: TObject);



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
    {Executa o Dialog para busca do logtipo emitente}
    procedure btnLogoTipoEmitenteClick(Sender: TObject);
	  {Lista os certificados}
    procedure cbListaCertificadosDropDown(Sender: TObject);
    procedure mmXMLEnvioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure mmXMLKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure mmJsonKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure mmTipadoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnAtualizaArquivosClick(Sender: TObject);
    procedure btnListarCidadesClick(Sender: TObject);
  private
    fLogEnvio: string;
    {Valida a presença do arquivo .ini}
    procedure CheckConfig;
    {Anexa o PDF e realiza o envio de email}
    procedure EnviarEmail;
    {Evento utilizado para capturar o nome do log assim que ele é gerado}
    procedure OnLog(const aNome, aID, aFileName: string);
    procedure getRetornoV2Tipado;
    procedure getRetornoV2Json;
    procedure getRetornoTomadasV2Tipado;
    procedure getRetornoTomadasV2Json;
  public
    { Public declarations }
  end;

var
  frmExemplo: TfrmExemplo;

implementation

{$R *.dfm}

uses
  ShellApi, spdNFSeXmlUtils;


{IMPLEMENTAÇÃO UTILIZANDO COMPONENTE NFSeV2}

procedure TFrmExemplo.CheckConfig;
var
  _Cidade, _CNPJ: string;
  _bConfig: Boolean;
begin
  _Cidade := trim(NFSe.Cidade);
  _CNPJ := trim(NFSe.CNPJ);

  _bConfig := (_Cidade <> '') and (_CNPJ <> '');

  if (not _bConfig) then
    raise Exception.Create('Favor configurar o componente antes de prosseguir!');
end;

procedure TfrmExemplo.mmJsonKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  C: string;
begin
  if ssCtrl in Shift then
  begin
    C := LowerCase(Char(Key));
    if C = 'a' then
    begin
      mmJson.SelectAll;
    end;
  end;
end;

procedure TfrmExemplo.mmTipadoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  C: string;
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

procedure TfrmExemplo.mmXMLEnvioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  C: string;
begin
  if ssCtrl in Shift then
  begin
    C := LowerCase(Char(Key));
    if C = 'a' then
    begin
      mmXMLEnvio.SelectAll;
    end;
  end;
end;

procedure TfrmExemplo.mmXMLKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  C: string;
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

  {Exemplo de configuração do componente NFSe}
procedure TfrmExemplo.btnLoadConfigClick(Sender: TObject);
begin
  NFSe.ConfigurarSoftwareHouse(edtCNPJSoftwareHouse.Text,edtTokenSoftwareHouse.Text);
  NFSe.LoadConfig;
  NFSe.OnLog := OnLog;
  edtCidade.Text := NFSe.Cidade;
  edtCNPJ.Text := NFSe.CNPJ;
  edtInscMunicipal.Text := NFSe.InscricaoMunicipal;
  cbListaCertificados.Text := NFSe.NomeCertificado.Text;
  lblAmbiente.Visible := (NFSe.Ambiente = akProducao);
end;

procedure TfrmExemplo.btnEnviarRPSClick(Sender: TObject);
begin
  CheckConfig;
  if (NFSe.Ambiente = akProducao) and (Application.MessageBox('O componente está configurado ' + 'para enviar em ambiente de produção, deseja continuar?', 'Atenção!', MB_YESNO + MB_ICONWARNING) = IDNO) then
    exit;
  if OpnDlgTx2.Execute then
  begin
    NFSe.Enviar(OpnDlgTx2.FileName);
    getRetornoV2Tipado;
    getRetornoV2Json;
  end;
end;

procedure TfrmExemplo.btnEditarDocumentoClick(Sender: TObject);
begin
  CheckConfig;
  OpnDlgTx2.Execute;
  Nfse.EditarImpressao(mmXML.Text, mmXMLEnvio.Text, OpnDlgTx2.FileName);
end;

procedure TfrmExemplo.btnImprimirClick(Sender: TObject);
begin
  CheckConfig;
  OpnDlgTx2.Execute;
  Nfse.Imprimir(mmXML.Text, mmXMLEnvio.Text, OpnDlgTx2.FileName);
end;

procedure TfrmExemplo.btnExportarClick(Sender: TObject);
begin
  CheckConfig;
  OpnDlgTx2.Execute;
  svDlgExportar.FileName := NFSe.Cidade + '.pdf';
  if svDlgExportar.Execute then
    Nfse.ExportarImpressaoParaPDF(mmXML.Text, mmXMLEnvio.Text, OpnDlgTx2.FileName, svDlgExportar.FileName);

  if ckbEnviarEmailPDF.Checked then
    EnviarEmail;
end;

procedure TfrmExemplo.btnVisualizarClick(Sender: TObject);
begin
  CheckConfig;
  OpnDlgTx2.Execute;
  Nfse.VisualizarImpressao(mmXML.Text, mmXMLEnvio.Text, OpnDlgTx2.FileName);
end;

procedure TfrmExemplo.cbListaCertificadosDropDown(Sender: TObject);
begin
  cbListaCertificados.Clear;
  NFSe.ListarCertificados(cbListaCertificados.Items);
end;

procedure TfrmExemplo.FormCreate(Sender: TObject);
begin
  frmExemplo.Caption := 'Tecnospeed NFSeV2 - Versão: ' + NFse.Versao;
  pcDados.TabIndex := 0;
  edtLogoEmitente.Text := ExtractFilePath(Application.ExeName) + '\LogoEmit.jpg';
  edtCNPJSoftwareHouse.Text := '08187168000160';
  edtTokenSoftwareHouse.Text := '';
end;

procedure TfrmExemplo.EnviarEmail;
var
  _anexos: TStringList;
begin
  _anexos := TStringList.Create;
  try
    _anexos.Add(svDlgExportar.FileName);
    NFSe.EnviarEmail(_anexos);
  finally
    FreeAndNil(_anexos);
  end;
end;

procedure TfrmExemplo.btnLogoTipoEmitenteClick(Sender: TObject);
begin
  OpnDlgLogoTipo.InitialDir := ExtractFileDir(edtLogoEmitente.Text);
  OpnDlgLogoTipo.FileName := ExtractFileName(edtLogoEmitente.Text);
  if OpnDlgLogoTipo.Execute then
    edtLogoEmitente.Text := OpnDlgLogoTipo.FileName;
end;

procedure TfrmExemplo.btnConsultarNotasTomadasClick(Sender: TObject);
begin
  NFSe.ConsultarNotasTomadas(edtNomeCidade.Text, edtDocumentoTomador.Text, edtIMTomador.Text, edtDocumentoPrestador.Text, edtIMPrestador.Text, edtDataInicial.Text, edtDataFinal.Text, edtPagina.Text);
  getRetornoTomadasV2Tipado;
  getRetornoTomadasV2Json;
end;

procedure TfrmExemplo.OnLog(const aNome, aID, aFileName: string);
begin
  fLogEnvio := '';

  if (AnsiContainsText(aNome, 'resposta')) then
    fLogEnvio := aFileName;
  if ((AnsiContainsText(aNome, 'enviar_lote_rps_envio')) or (AnsiContainsText(aNome, 'enviar_lote_sincrono_envio'))) then
    mmXMLEnvio.Text := aFileName;
end;

procedure TfrmExemplo.getRetornoV2Tipado;
var
  i: Integer;
begin
  mmTipado.Clear;
  for i := 0 to NFSe.RetornoWS.Count - 1 do
  begin
    if NFSe.RetornoWS.Items[i].Status = 'EMPROCESSAMENTO' then
    begin
      mmTipado.Lines.Add('Status: EMPROCESSAMENTO');
      mmTipado.Lines.Add('Protocolo: ' + NFSe.RetornoWS.Items[i].Protocolo);
      if NFSe.RetornoWS.Items[i].Protocolo <> '' then
        edtNumProtocolo.text := NFSe.RetornoWS.Items[i].Protocolo;
    end
    else if NFSe.RetornoWS.Items[i].Status = 'ERRO' then
    begin
      mmTipado.Lines.Add('Status: ERRO');
      mmTipado.Lines.Add('Motivo: ' + NFSe.RetornoWS.Items[i].Motivo);
    end
    else
    begin
      mmTipado.Lines.Add('Status: ' + NFSe.RetornoWS.Items[i].Status);
      mmTipado.Lines.Add('Protocolo: ' + NFSe.RetornoWS.Items[i].Protocolo);
      mmTipado.Lines.Add('CNPJ: ' + NFSe.RetornoWS.Items[i].CNPJ);
      mmTipado.Lines.Add('Inscricao Municipal: ' + NFSe.RetornoWS.Items[i].InscricaoMunicipal);
      mmTipado.Lines.Add('Serie do RPS: ' + NFSe.RetornoWS.Items[i].SerieRps);
      mmTipado.Lines.Add('Número do RPS: ' + NFSe.RetornoWS.Items[i].NumeroRps);
      mmTipado.Lines.Add('Número da NFS-e: ' + NFSe.RetornoWS.Items[i].NumeroNFSe);
      mmTipado.Lines.Add('Data de Emissão: ' + NFSe.RetornoWS.Items[i].DataEmissaoNFSe);
      mmTipado.Lines.Add('Código de Verificação: ' + NFSe.RetornoWS.Items[i].CodVerificacao);
      mmTipado.Lines.Add('Situação: ' + NFSe.RetornoWS.Items[i].Situacao);
      mmTipado.Lines.Add('Data De Cancelamento: ' + NFSe.RetornoWS.Items[i].DataCancelamento);
      mmTipado.Lines.Add('Chave de Cancelamento: ' + NFSe.RetornoWS.Items[i].ChaveCancelamento);
      mmTipado.Lines.Add('Tipo: ' + NFSe.RetornoWS.Items[i].Tipo);
      mmTipado.Lines.Add('Motivo: ' + NFSe.RetornoWS.Items[i].Motivo);
      mmTipado.Lines.Add('XML: ' + NFSe.RetornoWS.Items[i].XmlImpressao);
      mmTipado.Lines.Add('Data de Autorização: ' + NFSe.RetornoWS.Items[i].DataAutorizacao);
      mmTipado.Lines.Add('');
      mmTipado.Lines.Add('================================================');
      mmTipado.Lines.Add('');
      
      //Tratamentos somente para Demo
      if NFSe.RetornoWS.Items[i].Protocolo <> '' then
        edtNumProtocolo.text := NFSe.RetornoWS.Items[i].Protocolo;
      edtNumeroRPS.text := NFSe.RetornoWS.Items[i].NumeroRps;
      edtSerieRPS.text := NFSe.RetornoWS.Items[i].SerieRps;
      edtTipoRPS.text := NFSe.RetornoWS.Items[i].Tipo;
      edtNumeroNFSe.Text := NFSe.RetornoWS.Items[i].NumeroNFSe;
      edtChaveCancelamento.Text := NFSe.RetornoWS.Items[i].ChaveCancelamento;
      mmXML.Text := NFSe.RetornoWS.Items[i].XmlImpressao;
    end;
  end;
end;

procedure TfrmExemplo.getRetornoV2Json;
begin
  mmJson.Clear;
  mmJson.Lines.Add(NFSe.RetornoJson);
end;

procedure TfrmExemplo.btnConsultarNotaClick(Sender: TObject);
begin
  CheckConfig;
  NFSe.Consultar(edtNumeroNFSe.Text, edtNumeroRPS.Text, edtSerieRPS.Text, edtTipoRPS.Text, edtNumProtocolo.Text);
  getRetornoV2Tipado;
  getRetornoV2Json;
end;

procedure TfrmExemplo.btnCancelarClick(Sender: TObject);
begin
  NFSe.CancelarNota(edtChaveCancelamento.Text);
  getRetornoV2Tipado;
  getRetornoV2Json;
end;

procedure TfrmExemplo.getRetornoTomadasV2Json;
begin
  mmJson.Clear;
  mmJson.Lines.Add(NFSe.RetornoJsonTomadas);
end;

procedure TfrmExemplo.getRetornoTomadasV2Tipado;
var
  i: Integer;
begin
  mmTipado.Clear;

  for i := 0 to NFSe.RetornoWSNotasTomadas.Count - 1 do
  begin
    mmTipado.Lines.Add('Status: ' + NFSe.RetornoWSNotasTomadas.Items[i].Status);
    mmTipado.Lines.Add('CNPJ: ' + NFSe.RetornoWSNotasTomadas.Items[i].CNPJ);
    mmTipado.Lines.Add('Inscricao Municipal: ' + NFSe.RetornoWSNotasTomadas.Items[i].InscricaoMunicipal);
    mmTipado.Lines.Add('Serie do RPS: ' + NFSe.RetornoWSNotasTomadas.Items[i].SerieRps);
    mmTipado.Lines.Add('Número do RPS: ' + NFSe.RetornoWSNotasTomadas.Items[i].NumeroRps);
    mmTipado.Lines.Add('Número da NFS-e: ' + NFSe.RetornoWSNotasTomadas.Items[i].NumeroNFSe);
    mmTipado.Lines.Add('Data de Emissão: ' + NFSe.RetornoWSNotasTomadas.Items[i].DataEmissaoNFSe);
    mmTipado.Lines.Add('Código de Verificação: ' + NFSe.RetornoWSNotasTomadas.Items[i].CodVerificacao);
    mmTipado.Lines.Add('Situação: ' + NFSe.RetornoWSNotasTomadas.Items[i].Situacao);
    mmTipado.Lines.Add('Data De Cancelamento: ' + NFSe.RetornoWSNotasTomadas.Items[i].DataCancelamento);
    mmTipado.Lines.Add('Chave de Cancelamento: ' + NFSe.RetornoWSNotasTomadas.Items[i].ChaveCancelamento);
    mmTipado.Lines.Add('Tipo: ' + NFSe.RetornoWSNotasTomadas.Items[i].Tipo);
    mmTipado.Lines.Add('Motivo: ' + NFSe.RetornoWSNotasTomadas.Items[i].Motivo);

    mmTipado.Lines.Add('ValorServicos: ' + NFSe.RetornoWSNotasTomadas.Items[i].ValorServicos);
    mmTipado.Lines.Add('ValorDeducoes: ' + NFSe.RetornoWSNotasTomadas.Items[i].ValorDeducoes);
    mmTipado.Lines.Add('ValorPis: ' + NFSe.RetornoWSNotasTomadas.Items[i].ValorPis);
    mmTipado.Lines.Add('ValorCofins: ' + NFSe.RetornoWSNotasTomadas.Items[i].ValorCofins);
    mmTipado.Lines.Add('ValorInss: ' + NFSe.RetornoWSNotasTomadas.Items[i].ValorInss);
    mmTipado.Lines.Add('ValorIr: ' + NFSe.RetornoWSNotasTomadas.Items[i].ValorIr);
    mmTipado.Lines.Add('ValorCsll: ' + NFSe.RetornoWSNotasTomadas.Items[i].ValorCsll);
    mmTipado.Lines.Add('AliquotaIss: ' + NFSe.RetornoWSNotasTomadas.Items[i].AliquotaIss);
    mmTipado.Lines.Add('ValorIss: ' + NFSe.RetornoWSNotasTomadas.Items[i].ValorIss);
    mmTipado.Lines.Add('IssRetido: ' + NFSe.RetornoWSNotasTomadas.Items[i].IssRetido);
    mmTipado.Lines.Add('Data de Autorização: ' + NFSe.RetornoWSNotasTomadas.Items[i].DataAutorizacao);

    mmTipado.Lines.Add('RazaoSocialPrestador: ' + NFSe.RetornoWSNotasTomadas.Items[i].RazaoSocialPrestador);
    mmTipado.Lines.Add('EnderecoPrestador' + NFSe.RetornoWSNotasTomadas.Items[i].EnderecoPrestador);
    mmTipado.Lines.Add('NumeroPrestador' + NFSe.RetornoWSNotasTomadas.Items[i].NumeroPrestador);
    mmTipado.Lines.Add('ComplementoPrestador' + NFSe.RetornoWSNotasTomadas.Items[i].ComplementoPrestador);
    mmTipado.Lines.Add('BairroPrestador' + NFSe.RetornoWSNotasTomadas.Items[i].BairroPrestador);
    mmTipado.Lines.Add('CodigoCidadePrestador' + NFSe.RetornoWSNotasTomadas.Items[i].CodigoCidadePrestador);
    mmTipado.Lines.Add('CepPrestador' + NFSe.RetornoWSNotasTomadas.Items[i].CepPrestador);
    mmTipado.Lines.Add('CpfCnpjTomador' + NFSe.RetornoWSNotasTomadas.Items[i].CpfCnpjTomador);
    mmTipado.Lines.Add('InscMunicipalTomador' + NFSe.RetornoWSNotasTomadas.Items[i].InscMunicipalTomador);
    mmTipado.Lines.Add('RazaoSocialTomador' + NFSe.RetornoWSNotasTomadas.Items[i].RazaoSocialTomador);
    mmTipado.Lines.Add('EnderecoTomador' + NFSe.RetornoWSNotasTomadas.Items[i].EnderecoTomador);
    mmTipado.Lines.Add('NumeroTomador' + NFSe.RetornoWSNotasTomadas.Items[i].NumeroTomador);
    mmTipado.Lines.Add('ComplementoTomador' + NFSe.RetornoWSNotasTomadas.Items[i].ComplementoTomador);
    mmTipado.Lines.Add('BairroTomador' + NFSe.RetornoWSNotasTomadas.Items[i].BairroTomador);
    mmTipado.Lines.Add('CodigoCidadeTomador' + NFSe.RetornoWSNotasTomadas.Items[i].CodigoCidadeTomador);
    mmTipado.Lines.Add('CepTomador' + NFSe.RetornoWSNotasTomadas.Items[i].CepTomador);
    mmTipado.Lines.Add('EmailTomador' + NFSe.RetornoWSNotasTomadas.Items[i].EmailTomador);
    mmTipado.Lines.Add('TelefoneTomador' + NFSe.RetornoWSNotasTomadas.Items[i].TelefoneTomador);
    mmTipado.Lines.Add('ItemListaServico' + NFSe.RetornoWSNotasTomadas.Items[i].ItemListaServico);
    mmTipado.Lines.Add('CodigoCNAE' + NFSe.RetornoWSNotasTomadas.Items[i].CodigoCNAE);
    mmTipado.Lines.Add('CodTributacaoMunicipio' + NFSe.RetornoWSNotasTomadas.Items[i].CodTributacaoMunicipio);
    mmTipado.Lines.Add('CodigoCidadePrestacao' + NFSe.RetornoWSNotasTomadas.Items[i].CodigoCidadePrestacao);
    mmTipado.Lines.Add('DiscriminacaoServico' + NFSe.RetornoWSNotasTomadas.Items[i].DiscriminacaoServico);
    mmTipado.Lines.Add('XML: ' + NFSe.RetornoWSNotasTomadas.Items[i].Xml);

    mmTipado.Lines.Add('');
    mmTipado.Lines.Add('================================================');
    mmTipado.Lines.Add('');
  end;
end;

procedure TfrmExemplo.btnAtualizaArquivosClick(Sender: TObject);
begin
  NFSe.AtualizarArquivos;
  Showmessage('Arquivos Atualizados com sucesso para a cidade: ' + NFSe.Cidade)
end;

procedure TfrmExemplo.btnListarCidadesClick(Sender: TObject);
begin
  mmXMLEnvio.Text := NFSe.ConsultarCidadesHomologadas;
end;

end.


