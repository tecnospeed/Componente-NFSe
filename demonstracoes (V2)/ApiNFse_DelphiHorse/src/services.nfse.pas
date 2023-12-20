unit services.nfse;

interface

uses
  System.Classes,
  System.SysUtils,
  spdNFSe,
  spdNFSeTypes,
  NFSeConverterX_TLB,
  REST.Json;

type
  TServiceNFSe = class(TObject)
  private
    FspdNFSe: TspdNFSe;
    function GetPathNFSeConfig(const aCnpj: string): string;
    procedure ConfigurarComponente(const aCnpj: string);
  public
    function AtualizarArquivos(aCompleto: boolean): string;
    function GetConfig(const aCnpj: string): string;
    function SalvarConfig(const aCnpj, aConteudoIni: string): string;
    function ConverterXmlToJson(const aNomeCidade, aXmlNFSe: string): string;
    function ConverterTx2ToXml(const aNomeCidade, aTx2: string): string;
    function Consultar(const aNumeroNFse, aNumeroRPS, aSerie, aTipo, aProtocolo: string): string;
    function ConsultarCidadesHomologadas: string;
    function ConsultarNotasTomadas(const aNomeCidade, aDocumentoTomador, aIMTomador,
      aDocumentoPrestadorConsulente, aIMPrestadorConsulente, aDataInicial, aDataFinal, aPagina: string): string;
    function Cancelar(const aChaveCancelamento: string): string;
    function Enviar(const aTx2: string): string;
    function GerarPdfImpressao(const aXmlNFSe, aArquivoRPS, aCamposCustomizados: string): string;
    function VersaoComponente: string;

    constructor Create(const aCnpj: string=''); virtual;
    destructor Destroy; override;
  end;

CONST
  //Caminho onde ficarão os arquivos de cada cnpj
  PATH_ARQUIVOS = 'C:\ApiNFSe_DelphiHorse\Arquivos\';

  //Caminho onde estão os arquivos do componente nfse v2
  PATH_ARQUIVOS_COMPONENTE = 'C:\Program Files\TecnoSpeed\NFSe\Arquivos\';

implementation

{ TServiceNFSe }

constructor TServiceNFSe.Create(const aCnpj: string='');
begin
  FspdNFSe := TspdNFSe.Create(nil);

  //Informe aqui o Cnpj e o token da Software House
  FspdNFSe.ConfigurarSoftwareHouse('00000000000000', '');

  ConfigurarComponente(aCnpj);
end;

destructor TServiceNFSe.Destroy;
begin
  if Assigned(FspdNFSe) then
    FspdNFSe.Free;
  inherited;
end;

function TServiceNFSe.getPathNFSeConfig(const aCnpj: string): string;
begin
  Result := PATH_ARQUIVOS + aCnpj + '\nfseConfig.ini';
end;

procedure TServiceNFSe.ConfigurarComponente(const aCnpj: string);
var
  _pathIni: string;
begin
  _pathIni := getPathNFSeConfig(aCnpj);
  if FileExists(_pathIni) then
  begin
    FspdNFSe.LoadConfig(_pathIni);
    FspdNFSe.Arquivos := PATH_ARQUIVOS_COMPONENTE;
  end
  else
    raise Exception.Create('Arquivo não encontrado ' + _pathIni);
end;

function TServiceNFSe.getConfig(const aCnpj: string): string;
var
  _pathIni: string;
  _arquivoConfig: TStringList;
begin
  _pathIni := getPathNFSeConfig(aCnpj);
  if FileExists(_pathIni) then
  begin
    _ArquivoConfig := TStringList.Create;
    try
      _ArquivoConfig.LoadFromFile(_pathIni);
      result := _arquivoConfig.Text;
    finally
      _ArquivoConfig.Free;
    end;
  end
  else
    raise Exception.Create('Arquivo não encontrado ' + _pathIni);
end;

function TServiceNFSe.SalvarConfig(const aCnpj, aConteudoIni: string): string;
var
  _pathIni: string;
  _arquivoConfig: TStringList;
begin
  _ArquivoConfig := TStringList.Create;
  try
    _pathIni := getPathNFSeConfig(aCnpj);
    try
      _ArquivoConfig.Text := aConteudoIni;
      _ArquivoConfig.SaveToFile(_pathIni);
      Result := '{"status" : "SUCESSO"}';
    except on E: Exception do
      raise Exception.Create('Erro ao Salvar Config ' + e.Message);
    end;
  finally
    _ArquivoConfig.Free;
  end;
end;

function TServiceNFSe.VersaoComponente: string;
begin
  Result := FspdNFSe.Versao;
end;

function TServiceNFSe.AtualizarArquivos(aCompleto: boolean): string;
begin
  try
    if aCompleto then
      FspdNFSe.ModoAtualizarArquivos := TModoAtualizarArquivosKind.mkCompleto
    else
      FspdNFSe.ModoAtualizarArquivos := TModoAtualizarArquivosKind.mkParcial;
    FspdNFSe.AtualizarArquivos;
    Result := '{"status" : "SUCESSO"}';
  except on e: Exception do
    Raise Exception.Create('Erro ao Atualizar Arquivos ' + e.Message);
  end;
end;

function TServiceNFSe.Enviar(const aTx2: string): string;
begin
  try
    FspdNFSe.Enviar(aTx2);
    Result := FspdNFSe.RetornoJson;
  except on e: Exception do
    Raise Exception.Create('Erro ao Enviar NFSe ' + e.Message);
  end;
end;

function TServiceNFSe.Cancelar(const aChaveCancelamento: string): string;
begin
  try
    FspdNFSe.CancelarNota(aChaveCancelamento);
    Result := FspdNFSe.RetornoJson;
  except on e: Exception do
    Raise Exception.Create('Erro ao Cancelar NFSe ' + e.Message);
  end;
end;

function TServiceNFSe.GerarPdfImpressao(const aXmlNFSe, aArquivoRPS, aCamposCustomizados: string): string;
var
  _pathPdf: string;
begin
  try
    _pathPdf := FspdNFSe.DiretorioXmlImpressao + FormatDateTime('yyyymmddhhnnsszzzz', now) +
      IntToStr(Random(9999999)) + IntToStr(Random(9999999)) + '.pdf';
    FspdNFSe.ExportarImpressaoParaPDF(aXmlNFSe,
                                      aArquivoRPS,
                                      aCamposCustomizados,
                                      _pathPdf);
    Result := _pathPdf;
  except on e: Exception do
    Raise Exception.Create('Erro ao Gerar PDF NFSe ' + e.Message);
  end;
end;

function TServiceNFSe.ConsultarCidadesHomologadas: string;
begin
  try
    Result := FspdNFSe.ConsultarCidadesHomologadas;
  except on e: Exception do
    Raise Exception.Create('Erro ao ConsultarCidadesHomologadas ' + e.Message);
  end;
end;

function TServiceNFSe.Consultar(const aNumeroNFse, aNumeroRPS, aSerie, aTipo, aProtocolo: string): string;
begin
   try
    Result := FspdNFSe.Consultar(aNumeroNFse,
                                 aNumeroRPS,
                                 aSerie,
                                 aTipo,
                                 aProtocolo);
    Result := FspdNFSe.RetornoJson;
  except on e: Exception do
    Raise Exception.Create('Erro ao Consultar NFSe ' + e.Message);
  end;
end;

function TServiceNFSe.ConsultarNotasTomadas(const aNomeCidade, aDocumentoTomador, aIMTomador,
  aDocumentoPrestadorConsulente, aIMPrestadorConsulente, aDataInicial, aDataFinal,
  aPagina: string): string;
begin
  try
    FspdNFSe.ConsultarNotasTomadas(aNomeCidade,
                                   aDocumentoTomador,
                                   aIMTomador,
                                   aDocumentoPrestadorConsulente,
                                   aIMPrestadorConsulente,
                                   aDataInicial,
                                   aDataFinal,
                                   aPagina);
    Result := FspdNFSe.RetornoJsonTomadas;
  except on e: Exception do
    Raise Exception.Create('Erro ao Consultar Notas Tomadas ' + e.Message);
  end;
end;

function TServiceNFSe.ConverterTx2ToXml(const aNomeCidade, aTx2: string): string;
var
  _converter: TspdNFSeConverterX;
begin
  _Converter := TspdNFSeConverterX.Create(nil);
  try
    _converter.Cidade := aNomeCidade;
    _converter.DiretorioEsquemas := PATH_ARQUIVOS_COMPONENTE + 'Esquemas\';
    _converter.DiretorioScripts  := PATH_ARQUIVOS_COMPONENTE + 'Scripts\';
    try
      Result := _Converter.ConverterEnvioNFSe(aTx2, FspdNFSe.ParametrosExtras);
    except on e: Exception do
      Raise Exception.Create('Erro ao ConverterTx2ToXml ' + e.Message);
    end;
  finally
    _Converter.Free;
  end;
end;

function TServiceNFSe.ConverterXmlToJson(const aNomeCidade, aXmlNFSe: string): string;
begin
  try
    FspdNFSe.Cidade := aNomeCidade;
    Result := FspdNFSe.ConverterXmlToJson(aXmlNFSe);
  except on e: Exception do
    Raise Exception.Create('Erro ao ConverterXmlToJson ' + e.Message);
  end;
end;

end.