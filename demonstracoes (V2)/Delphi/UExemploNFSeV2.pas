unit uExemploNFSeV2;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, spdNFSe, spdNFSeException, IniFiles, MSXML5_TLB, spdCustomNFSe,
  spdNFSeUtils, StrUtils, spdNFSeDataset, spdNFSeXsdUtils, ComCtrls, StdCtrls,
  ExtCtrls, CheckLst, Grids, DBGrids, OleCtrls, SHDocVw, spdNFSeTypes,
  spdNFSeGov, Buttons;

//******************************************************************************************************
//
//          Declarações
//
//******************************************************************************************************
type
  TfrmExemplo = class(TForm)
    pcDados: TPageControl;
    tsNFSe: TTabSheet;
    gbOperacoesNFSe: TGroupBox;
    Label7: TLabel;
    btnConfigArquivoINI: TButton;
    btnLoadConfig: TButton;
    btnEnviarRPS: TButton;
    btnCancelar: TButton;
    btnConsultarNota: TButton;
    cbListaCertificados: TComboBox;
    btnListarCidades: TButton;
    gbConfigNFSe: TGroupBox;
    edtCidade: TLabeledEdit;
    edtCNPJ: TLabeledEdit;
    edtInscMunicipal: TLabeledEdit;
    rdProducao: TRadioButton;
    rdHomologacao: TRadioButton;
    btnAtualizaArquivos: TButton;
    GroupBox2: TGroupBox;
    edtCNPJSoftwareHouse: TLabeledEdit;
    edtTokenSoftwareHouse: TLabeledEdit;
    GroupBox3: TGroupBox;
    edtChaveCancelamento: TLabeledEdit;
    edtNumeroNFSe: TLabeledEdit;
    edtTipoRPS: TLabeledEdit;
    edtSerieRPS: TLabeledEdit;
    edtNumeroRPS: TLabeledEdit;
    tsConfiguraImpressao: TTabSheet;
    gbConfiguracoes: TGroupBox;
    Label4: TLabel;
    edtLogoEmitente: TEdit;
    tsConsultaTomadas: TTabSheet;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    edtDocumentoTomador: TEdit;
    edtIMTomador: TEdit;
    SpeedButton1: TSpeedButton;
    edtNumProtocolo: TLabeledEdit;
    lblAmbiente: TLabel;
    svDlgExportar: TSaveDialog;
    NFSe: TspdNFSe;
    OpnDlgTx2: TOpenDialog;
    OpnDlgLogoTipo: TOpenDialog;
    GroupBox4: TGroupBox;
    lblDocumentoPrestador: TLabel;
    edtDocumentoPrestador: TEdit;
    btnConsultarNotasTomadas: TButton;
    GroupBox5: TGroupBox;
    lblDataInicial: TLabel;
    edtDataInicial: TEdit;
    lblDataFinal: TLabel;
    edtDataFinal: TEdit;
    lblPagina: TLabel;
    edtPagina: TEdit;
    Label1: TLabel;
    edtNomeCidade: TEdit;
    lblIMPrestador: TLabel;
    edtIMPrestador: TEdit;
    StatusBar1: TStatusBar;
    ProgressBar1: TProgressBar;
    btnGerarTx2: TButton;
    pcMensagens: TPageControl;
    tsXML: TTabSheet;
    mmXMLEnvio: TMemo;
    tsXMLFormatado: TTabSheet;
    mmXML: TMemo;
    tsJSON: TTabSheet;
    mmJson: TMemo;
    tsFormatado: TTabSheet;
    mmTipado: TMemo;
    ckbEnviarEmailPDF: TCheckBox;
    btnExportar: TButton;
    btnImprimir: TButton;
    btnEditarDocumento: TButton;
    btnVisualizar: TButton;
    OpnDlgXml: TOpenDialog;

    {DECLARAÃ‡Ã•ES RELACIONADAS AO ENVIO e CONSULTAS}
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



    {Declarações COMUNS PARA AMBOS OS métodos}
    {Criação do Form}
    procedure FormCreate(Sender: TObject);
    {Editar o documento de impressÃ£o}
    procedure btnEditarDocumentoClick(Sender: TObject);
    {Imprimir documento}
    procedure btnImprimirClick(Sender: TObject);
    {Exporta documento de impressÃ£o no formato PDF}
    procedure btnExportarClick(Sender: TObject);
    {Visualizar documento de impressÃ£o}
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
    procedure SpeedButton1Click(Sender: TObject);
    procedure rdProducaoClick(Sender: TObject);
    procedure rdHomologacaoClick(Sender: TObject);
    procedure tsConsultaTomadasShow(Sender: TObject);
    procedure StatusBar1DrawPanel(StatusBar: TStatusBar;
      Panel: TStatusPanel; const Rect: TRect);
    procedure btnGerarTx2Click(Sender: TObject);
  private
    fLogEnvio: string;
    {Valida a presenÃ§a do arquivo .ini}
    procedure CheckConfig;
    {Anexa o PDF e realiza o envio de email}
    procedure EnviarEmail;
    {Evento utilizado para capturar o nome do log assim que ele Ã© gerado}
    procedure OnLog(const aNome, aID, aFileName: string);
    procedure getRetornoV2Tipado;
    procedure getRetornoV2Json;
    procedure getRetornoTomadasV2Tipado;
    procedure getRetornoTomadasV2Json;
    procedure MostrarLabel;
    procedure ChecarAmbiente;
    Procedure CarregarProgresso;
  public
    { Public declarations }
  end;

var
  frmExemplo: TfrmExemplo;
  vIni: TIniFile;

implementation

{$R *.dfm}

uses
  ShellApi, spdNFSeXmlUtils;


{IMPLEMENTAÇÃO UTILIZANDO COMPONENTE NFSeV2}


procedure TFrmExemplo.ChecarAmbiente;
begin
  if nfse.Ambiente = akproducao then
    rdProducao.Checked := true
  else
    rdHomologacao.checked := true;
end;

procedure TFrmExemplo.CarregarProgresso;
 var
  I: integer;
begin
  for I := ProgressBar1.Min to ProgressBar1.Max do begin
    { Atualiza a posição da ProgressBar }
    ProgressBar1.Position := I;
    { Repinta a StatusBar para forçar a atualização visual }
    StatusBar1.Repaint;
    Sleep(5);
  end;
  ProgressBar1.Position := ProgressBar1.Min;
  StatusBar1.Repaint;
end;

procedure TFrmExemplo.MostrarLabel;
begin
  if nfse.Ambiente = akProducao then
  begin
   lblAmbiente.caption := 'Ambiente de Produção';
   lblAmbiente.Font.Color := clRed;
  end
  else
  begin
   lblAmbiente.caption := 'Ambiente de Homologação';
   lblAmbiente.Font.Color := clBlue;
  end;
end;

procedure TFrmExemplo.CheckConfig;
var
  _Cidade, _CNPJ: string;
  _bConfig: Boolean;
begin
  _Cidade := trim(NFSe.Cidade);
  _CNPJ := trim(NFSe.CNPJ);

  _bConfig := (_Cidade <> '') and (_CNPJ <> '');

  if (not _bConfig) then
    raise Exception.Create('Favor, configurar o componente antes de prosseguir!');
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

  {Exemplo de configuraÃ§Ã£o do componente NFSe}
procedure TfrmExemplo.btnLoadConfigClick(Sender: TObject);
begin
  NFSe.ConfigurarSoftwareHouse(edtCNPJSoftwareHouse.Text,edtTokenSoftwareHouse.Text);


  NFSe.LoadConfig;
  NFSe.OnLog := OnLog;
  edtCidade.Text := NFSe.Cidade;
  edtCNPJ.Text := NFSe.CNPJ;
  edtInscMunicipal.Text := NFSe.InscricaoMunicipal;
  cbListaCertificados.Text := NFSe.NomeCertificado.Text;
  ChecarAmbiente;
  MostrarLabel;

end;

procedure TfrmExemplo.btnEnviarRPSClick(Sender: TObject);
begin
  CheckConfig;
  mmTipado.Clear;
  if (NFSe.Ambiente = akProducao) and (Application.MessageBox('O componente está configurado ' + 'para enviar em ambiente de produção, deseja continuar?', 'Atenção!', MB_YESNO + MB_ICONWARNING) = IDNO) then
    exit;
  if mmXmlenvio.Text <> '' then
    NFSe.Enviar(mmXmlenvio.Text)
  else
    begin
    OpnDlgTx2.Execute;
    NFSe.Enviar(OpnDlgTx2.FileName);
    end;

    CarregarProgresso;
    getRetornoV2Tipado;
    getRetornoV2Json;
    pcMensagens.TabIndex := 3;
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
  CarregarProgresso;
end;

procedure TfrmExemplo.btnExportarClick(Sender: TObject);
begin
  CheckConfig;
  OpnDlgTx2.Execute;
  svDlgExportar.FileName := NFSe.Cidade + '.pdf';
  if svDlgExportar.Execute then
    Nfse.ExportarImpressaoParaPDF(mmXML.Text, mmXMLEnvio.Text, OpnDlgTx2.FileName, svDlgExportar.FileName);
    CarregarProgresso;

  if ckbEnviarEmailPDF.Checked then
    EnviarEmail;
end;

procedure TfrmExemplo.btnVisualizarClick(Sender: TObject);
begin
  CheckConfig;
  OpnDlgTx2.Execute;
  Nfse.VisualizarImpressao(mmXML.Text, mmXMLEnvio.Text, OpnDlgTx2.FileName);
  CarregarProgresso;
end;

procedure TfrmExemplo.cbListaCertificadosDropDown(Sender: TObject);
begin
  cbListaCertificados.Clear;
  NFSe.ListarCertificados(cbListaCertificados.Items);
end;

procedure TfrmExemplo.FormCreate(Sender: TObject);
begin
  frmExemplo.Caption := 'Tecnospeed NFSeV2 - Versão: ' + NFse.Versao;
  vIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+ 'nfseconfig.ini');
  pcDados.TabIndex := 0;
  edtLogoEmitente.Text := ExtractFilePath(Application.ExeName) + '\LogoEmit.jpg';
  ChecarAmbiente;
end;

// Método exemplo para envio de e-mail com o componente
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
  CarregarProgresso;
  getRetornoTomadasV2Tipado;
  getRetornoTomadasV2Json;
  pcMensagens.TabIndex := 3;
end;

procedure TfrmExemplo.OnLog(const aNome, aID, aFileName: string);
begin
  fLogEnvio := '';

  if (AnsiContainsText(aNome, 'resposta')) then
    fLogEnvio := aFileName;
  if ((AnsiContainsText(aNome, 'enviar_lote_rps_envio')) or (AnsiContainsText(aNome, 'enviar_lote_sincrono_envio'))) then
    mmXMLEnvio.Lines.LoadFromFile(aFileName);

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
      mmTipado.Lines.Add('Inscrição Municipal: ' + NFSe.RetornoWS.Items[i].InscricaoMunicipal);
      mmTipado.Lines.Add('Série do RPS: ' + NFSe.RetornoWS.Items[i].SerieRps);
      mmTipado.Lines.Add('Número do RPS: ' + NFSe.RetornoWS.Items[i].NumeroRps);
      mmTipado.Lines.Add('Número da NFS-e: ' + NFSe.RetornoWS.Items[i].NumeroNFSe);
      mmTipado.Lines.Add('Data de Emissão ' + NFSe.RetornoWS.Items[i].DataEmissaoNFSe);
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
  CarregarProgresso;
  getRetornoV2Tipado;
  getRetornoV2Json;
  pcMensagens.TabIndex := 3;
end;

procedure TfrmExemplo.btnCancelarClick(Sender: TObject);
begin
  NFSe.CancelarNota(edtChaveCancelamento.Text);
  CarregarProgresso;
  getRetornoV2Tipado;
  getRetornoV2Json;
  pcMensagens.TabIndex := 3;
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
    mmTipado.Lines.Add('Número de Verificação: ' + NFSe.RetornoWSNotasTomadas.Items[i].CodVerificacao);
    mmTipado.Lines.Add('Número: ' + NFSe.RetornoWSNotasTomadas.Items[i].Situacao);
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
  CarregarProgresso;
  Showmessage('Arquivos Atualizados com sucesso para a cidade: ' + NFSe.Cidade)
end;

procedure TfrmExemplo.btnListarCidadesClick(Sender: TObject);
begin
  CheckConfig;
  mmXMLEnvio.Text := NFSe.ConsultarCidadesHomologadas;
  CarregarProgresso;
  pcMensagens.TabIndex := 0;  
end;

procedure TfrmExemplo.SpeedButton1Click(Sender: TObject);
begin
  OpnDlgLogoTipo.InitialDir := ExtractFileDir(edtLogoEmitente.Text);
  OpnDlgLogoTipo.FileName := ExtractFileName(edtLogoEmitente.Text);
  if OpnDlgLogoTipo.Execute then
    edtLogoEmitente.Text := OpnDlgLogoTipo.FileName;
end;

procedure TfrmExemplo.rdProducaoClick(Sender: TObject);
begin
  vIni.WriteString('NFSE', 'Ambiente', '1');
  nfse.Ambiente := akproducao;
  MostrarLabel;
end;

procedure TfrmExemplo.rdHomologacaoClick(Sender: TObject);
begin
  vIni.WriteString('NFSE', 'Ambiente', '2');
  nfse.Ambiente := akHomologacao;
  MostrarLabel;
end;

procedure TfrmExemplo.tsConsultaTomadasShow(Sender: TObject);
begin
 edtNomecidade.Text := nfse.Cidade;
 if edtdatainicial.Text = '' then
 edtdatainicial.Text := FormatDateTime('YYYY-MM-DD',Now - 10);
 if edtDataFinal.Text = '' then
 edtDataFinal.Text := FormatDateTime('YYYY-MM-DD',Now);
 edtpagina.Text := '1';
 edtDocumentoTomador.Text := nfse.CNPJ;
 edtIMTomador.Text := nfse.InscricaoMunicipal;
end;

procedure TfrmExemplo.StatusBar1DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
    { Se for o primeiro painel... }
  if pcMensagens.TabIndex = 3 then begin
    { Ajusta a tamanho da ProgressBar de acordo com o tamanho do painel }
    ProgressBar1.Width := Rect.Right - Rect.Left +1;
    ProgressBar1.Height := Rect.Bottom - Rect.Top +1;
    { Pinta a ProgressBar no DC (device-context) da StatusBar }
    ProgressBar1.PaintTo(StatusBar.Canvas.Handle, Rect.Left, Rect.Top);
  end;
end;

procedure TfrmExemplo.btnGerarTx2Click(Sender: TObject);
begin
  mmXMLEnvio.Clear;
            mmXMLEnvio.Lines.Add  ('Formato=tx2');
            mmXmlEnvio.Lines.Add  ('padrao=TecnoNFSe') ;
            mmXmlEnvio.Lines.Add  ('') ;
            mmXmlEnvio.Lines.Add  ('INCLUIR') ;
            mmXmlEnvio.Lines.Add  ('NumeroLote=965') ;
            mmXmlEnvio.Lines.Add  ('CPFCNPJRemetente=08187168000160') ;
            mmXmlEnvio.Lines.Add  ('InscricaoMunicipalRemetente=') ;
            mmXmlEnvio.Lines.Add  ('ValorTotalServicos=0.10') ;
            mmXmlEnvio.Lines.Add  ('ValorTotalDeducoes=0.00') ;
            mmXmlEnvio.Lines.Add  ('ValorTotalBaseCalculo=0.10') ;
            mmXmlEnvio.Lines.Add  ('SALVAR') ;
            mmXmlEnvio.Lines.Add  ('') ;
            mmXmlEnvio.Lines.Add  ('INCLUIRRPS') ;
            mmXmlEnvio.Lines.Add  ('SituacaoNota=1') ;
            mmXmlEnvio.Lines.Add  ('TipoRps=1') ;
            mmXmlEnvio.Lines.Add  ('SerieRps=1') ;
            mmXmlEnvio.Lines.Add  ('NumeroRps=574') ;
            mmXmlEnvio.Lines.Add  ('DataEmissao=' + FormatDateTime('YYYY-MM-DD',Now)+'-03:00' );
            mmXmlEnvio.Lines.Add  ('Competencia=' + FormatDateTime('YYYY-MM-DD',Now)+'-03:00' );
            mmXmlEnvio.Lines.Add  ('CpfCnpjPrestador=') ;
            mmXmlEnvio.Lines.Add  ('InscricaoMunicipalPrestador=') ;
            mmXmlEnvio.Lines.Add  ('RazaoSocialPrestador=TECNOSPEED TECNOLOGIA DA INFORMACAO') ;
            mmXmlEnvio.Lines.Add  ('InscricaoEstadualPrestador=081871680') ;
            mmXmlEnvio.Lines.Add  ('TipoLogradouroPrestador=Rua') ;
            mmXmlEnvio.Lines.Add  ('EnderecoPrestador=Endereco Teste') ;
            mmXmlEnvio.Lines.Add  ('NumeroPrestador=42') ;
            mmXmlEnvio.Lines.Add  ('ComplementoPrestador=Complemento teste sem acento') ;
            mmXmlEnvio.Lines.Add  ('TipoBairroPrestador=Bairro') ;
            mmXmlEnvio.Lines.Add  ('BairroPrestador=Bairro testes') ;
            mmXmlEnvio.Lines.Add  ('CodigoCidadePrestador=4115200') ;
            mmXmlEnvio.Lines.Add  ('DescricaoCidadePrestador=Maringa') ;
            mmXmlEnvio.Lines.Add  ('TelefonePrestador=00000000') ;
            mmXmlEnvio.Lines.Add  ('EmailPrestador=emailtestes@gmail.com') ;
            mmXmlEnvio.Lines.Add  ('CepPrestador=87020025') ;
            mmXmlEnvio.Lines.Add  ('OptanteSimplesNacional=2') ;
            mmXmlEnvio.Lines.Add  ('IncentivadorCultural=2') ;
            mmXmlEnvio.Lines.Add  ('RegimeEspecialTributacao=0') ;
            mmXmlEnvio.Lines.Add  ('NaturezaTributacao=0') ;
            mmXmlEnvio.Lines.Add  ('IncentivoFiscal=2') ;
            mmXmlEnvio.Lines.Add  ('TipoTributacao=6') ;
            mmXmlEnvio.Lines.Add  ('ExigibilidadeISS=1') ;
            mmXmlEnvio.Lines.Add  ('Operacao=A') ;
            mmXmlEnvio.Lines.Add  ('CodigoItemListaServico=0105') ;
            mmXmlEnvio.Lines.Add  ('CodigoTributacaoMunicipio=0105') ;
            mmXmlEnvio.Lines.Add  ('CodigoCnae=') ;
            mmXmlEnvio.Lines.Add  ('DiscriminacaoServico=SERVICOS DE RECEBIMENTO DE FATURAS|REFERENTE AO MES 08/2019') ;
            mmXmlEnvio.Lines.Add  ('MunicipioIncidencia=4115200') ;
            mmXmlEnvio.Lines.Add  ('CodigoCidadePrestacao=4115200') ;
            mmXmlEnvio.Lines.Add  ('DescricaoCidadePrestacao=Maringa') ;
            mmXmlEnvio.Lines.Add  ('CpfCnpjTomador=04002391086') ;
            mmXmlEnvio.Lines.Add  ('RazaoSocialTomador=TECNOSPEED TECNOLOGIA DA INFORMACAO') ;
            mmXmlEnvio.Lines.Add  ('InscricaoEstadualTomador') ;
            mmXmlEnvio.Lines.Add  ('InscricaoMunicipalTomador') ;
            mmXmlEnvio.Lines.Add  ('TipoLogradouroTomador=AVENIDA') ;
            mmXmlEnvio.Lines.Add  ('EnderecoTomador=AVENIDA DUQUE DE CAXIAS') ;
            mmXmlEnvio.Lines.Add  ('NumeroTomador=882') ;
            mmXmlEnvio.Lines.Add  ('ComplementoTomador=SALA 909') ;
            mmXmlEnvio.Lines.Add  ('BairroTomador=ZONA 7') ;
            mmXmlEnvio.Lines.Add  ('CodigoCidadeTomador=4115200') ;
            mmXmlEnvio.Lines.Add  ('DescricaoCidadeTomador=MARINGA') ;
            mmXmlEnvio.Lines.Add  ('UfTomador=PR') ;
            mmXmlEnvio.Lines.Add  ('CepTomador=87050111') ;
            mmXmlEnvio.Lines.Add  ('PaisTomador=1058') ;
            mmXmlEnvio.Lines.Add  ('DDDTomador=044') ;
            mmXmlEnvio.Lines.Add  ('TelefoneTomador=99999999') ;
            mmXmlEnvio.Lines.Add  ('EmailTomador=teste@tecnospeed.com.br') ;
            mmXmlEnvio.Lines.Add  ('AliquotaPIS=0.00') ;
            mmXmlEnvio.Lines.Add  ('AliquotaCOFINS=0.00') ;
            mmXmlEnvio.Lines.Add  ('AliquotaINSS=0.00') ;
            mmXmlEnvio.Lines.Add  ('AliquotaIR=0.00') ;
            mmXmlEnvio.Lines.Add  ('AliquotaCSLL=0.00') ;
            mmXmlEnvio.Lines.Add  ('ValorPIS=0.00') ;
            mmXmlEnvio.Lines.Add  ('ValorCOFINS=0.00') ;
            mmXmlEnvio.Lines.Add  ('ValorINSS=0.00') ;
            mmXmlEnvio.Lines.Add  ('ValorIR=0.00') ;
            mmXmlEnvio.Lines.Add  ('ValorCSLL=0.00') ;
            mmXmlEnvio.Lines.Add  ('OutrasRetencoes=0.00') ;
            mmXmlEnvio.Lines.Add  ('DescontoIncondicionado=0.00') ;
            mmXmlEnvio.Lines.Add  ('DescontoCondicionado=0.00') ;
            mmXmlEnvio.Lines.Add  ('ValorDeducoes=0.00') ;
            mmXmlEnvio.Lines.Add  ('ValorServicos=0.10') ;
            mmXmlEnvio.Lines.Add  ('BaseCalculo=0.10') ;
            mmXmlEnvio.Lines.Add  ('AliquotaISS=5.8547') ;
            mmXmlEnvio.Lines.Add  ('ValorIss=0.05') ;
            mmXmlEnvio.Lines.Add  ('IssRetido=2') ;
            mmXmlEnvio.Lines.Add  ('ValorISSRetido=0.00') ;
            mmXmlEnvio.Lines.Add  ('ValorLiquidoNfse=0.10') ;
    mmXmlEnvio.Lines.Add  ('SALVARRPS') ;
end;

end.


