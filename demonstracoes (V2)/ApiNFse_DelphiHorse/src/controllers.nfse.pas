unit controllers.nfse;

interface

uses
  Horse,
  Horse.OctetStream,
  System.JSON,
  System.SysUtils,
  System.Classes,
  services.nfse;

procedure Registry;

implementation

procedure DoGetVersaoComponente(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  _nfse: TServiceNFSe;
begin
  Writeln(FormatDateTime('dd/mm/YYYY hh:MM:ss:zzz',Now) + ' - executando rota get nfse/versaoComponente');

  _nfse := TServiceNFSe.Create;
  try
    Res.Send<TJSONObject>(TJSONObject.Create(TJSONPair.Create('versao', _nfse.VersaoComponente())));
  finally
    _nfse.Free;
  end;
end;

procedure DoGetCidadesHomologadas(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  _nfse: TServiceNFSe;
begin
  Writeln(FormatDateTime('dd/mm/YYYY hh:MM:ss:zzz',Now) + ' - executando rota get nfse/cidadesHomologadas');

  _nfse := TServiceNFSe.Create;
  try
    Res.Send(_nfse.ConsultarCidadesHomologadas());
  finally
    _nfse.Free;
  end;
end;

procedure DoGetConverterTx2ToXml(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  _nfse: TServiceNFSe;
begin
  Writeln(FormatDateTime('dd/mm/YYYY hh:MM:ss:zzz',Now) + ' - executando rota get nfse/converterTx2ToXml');

  if Trim(Req.ContentFields.Field('cnpj').AsString) = EmptyStr then
    raise EHorseException.New.Error('Parametro cnpj não foi informado.').Status(THTTPStatus.BadRequest);
  if Trim(Req.ContentFields.Field('nomeCidade').AsString) = EmptyStr then
    raise EHorseException.New.Error('Parametro nomeCidade não foi informado.').Status(THTTPStatus.BadRequest);
  if Trim(Req.ContentFields.Field('tx2').AsString) = EmptyStr then
    raise EHorseException.New.Error('Parametro xml não foi informado.').Status(THTTPStatus.BadRequest);

  _nfse := TServiceNFSe.Create(Trim(Req.ContentFields.Field('cnpj').AsString));
  try
    Res.Send(_nfse.ConverterTx2ToXml(Trim(Req.ContentFields.Field('nomeCidade').AsString),
                                     Trim(Req.ContentFields.Field('tx2').AsString))).ContentType('application/xml');
  finally
    _nfse.Free;
  end;
end;

procedure DoGetConverterXmlToJson(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  _nfse: TServiceNFSe;
begin
  Writeln(FormatDateTime('dd/mm/YYYY hh:MM:ss:zzz',Now) + ' - executando rota get nfse/converterXmlToJson');

  if Trim(Req.ContentFields.Field('nomeCidade').AsString) = EmptyStr then
    raise EHorseException.New.Error('Parametro nomeCidade não foi informado.').Status(THTTPStatus.BadRequest);
  if Trim(Req.ContentFields.Field('xml').AsString) = EmptyStr then
    raise EHorseException.New.Error('Parametro xml não foi informado.').Status(THTTPStatus.BadRequest);

  _nfse := TServiceNFSe.Create;
  try
    Res.Send(_nfse.ConverterXmlToJson(Trim(Req.ContentFields.Field('nomeCidade').AsString),
                                      Trim(Req.ContentFields.Field('xml').AsString))).ContentType('application/json');
  finally
    _nfse.Free;
  end;
end;

procedure DoGetConsultarNfse(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  _nfse: TServiceNFSe;
begin
  Writeln(FormatDateTime('dd/mm/YYYY hh:MM:ss:zzz',Now) + ' - executando rota get nfse/consultar');

  if Trim(Req.ContentFields.Field('cnpj').AsString) = EmptyStr then
    raise EHorseException.New.Error('Parametro cnpj não foi informado.').Status(THTTPStatus.BadRequest);

  if (Trim(Req.ContentFields.Field('numeroNfse').AsString) = EmptyStr) and
     (Trim(Req.ContentFields.Field('numeroRps').AsString) = EmptyStr) and
     (Trim(Req.ContentFields.Field('protocolo').AsString) = EmptyStr) then
    raise EHorseException.New.Error('Informe pelo menos 1 desses parametros (numeroNfse, numeroRps ou protocolo).').Status(THTTPStatus.BadRequest);

  if Trim(Req.ContentFields.Field('numeroRps').AsString) <> EmptyStr then
  begin
    if Trim(Req.ContentFields.Field('serie').AsString) = EmptyStr then
      raise EHorseException.New.Error('Parametro serie não foi informado.').Status(THTTPStatus.BadRequest);
    if Trim(Req.ContentFields.Field('tipo').AsString) = EmptyStr then
      raise EHorseException.New.Error('Parametro tipo não foi informado.').Status(THTTPStatus.BadRequest);
  end;

  _nfse := TServiceNFSe.Create(Trim(Req.ContentFields.Field('cnpj').AsString));
  try
    Res.Send(_nfse.Consultar(Trim(Req.ContentFields.Field('numeroNfse').AsString),
                             Trim(Req.ContentFields.Field('numeroRps').AsString),
                             Trim(Req.ContentFields.Field('serie').AsString),
                             Trim(Req.ContentFields.Field('tipo').AsString),
                             Trim(Req.ContentFields.Field('protocolo').AsString))).ContentType('application/json');
  finally
    _nfse.Free;
  end;
end;

procedure DoGetConsultarTomadas(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  _nfse: TServiceNFSe;
begin
  Writeln(FormatDateTime('dd/mm/YYYY hh:MM:ss:zzz',Now) + ' - executando rota get nfse/consultarTomadas');

  if Trim(Req.ContentFields.Field('cnpj').AsString) = EmptyStr then
    raise EHorseException.New.Error('Parametro cnpj não foi informado.').Status(THTTPStatus.BadRequest);
  if Trim(Req.ContentFields.Field('nomeCidade').AsString) = EmptyStr then
    raise EHorseException.New.Error('Parametro nomeCidade não foi informado.').Status(THTTPStatus.BadRequest);
  if Trim(Req.ContentFields.Field('documentoTomador').AsString) = EmptyStr then
    raise EHorseException.New.Error('Parametro documentoTomador não foi informado.').Status(THTTPStatus.BadRequest);
  if Trim(Req.ContentFields.Field('dataInicial').AsString) = EmptyStr then
    raise EHorseException.New.Error('Parametro dataInicial não foi informado.').Status(THTTPStatus.BadRequest);
  if Trim(Req.ContentFields.Field('dataFinal').AsString) = EmptyStr then
    raise EHorseException.New.Error('Parametro dataFinal não foi informado.').Status(THTTPStatus.BadRequest);

  _nfse := TServiceNFSe.Create(Trim(Req.ContentFields.Field('cnpj').AsString));
  try
    Res.Send(_nfse.ConsultarNotasTomadas(Trim(Req.ContentFields.Field('nomeCidade').AsString),
                                         Trim(Req.ContentFields.Field('documentoTomador').AsString),
                                         Trim(Req.ContentFields.Field('imTomador').AsString),
                                         Trim(Req.ContentFields.Field('documentoPrestador').AsString),
                                         Trim(Req.ContentFields.Field('imPrestador').AsString),
                                         Trim(Req.ContentFields.Field('dataInicial').AsString),
                                         Trim(Req.ContentFields.Field('dataFinal').AsString),
                                         Trim(Req.ContentFields.Field('pagina').AsString))).ContentType('application/json; charset=utf-8');
  finally
    _nfse.Free;
  end;
end;

procedure DoEnviarNfse(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  _nfse: TServiceNFSe;
begin
  Writeln(FormatDateTime('dd/mm/YYYY hh:MM:ss:zzz',Now) + ' - executando rota post nfse/enviar');

  if Trim(Req.ContentFields.Field('cnpj').AsString) = EmptyStr then
    raise EHorseException.New.Error('Parametro cnpj não foi informado.').Status(THTTPStatus.BadRequest);
  if Trim(Req.ContentFields.Field('tx2').AsString) = EmptyStr then
    raise EHorseException.New.Error('Parametro tx2 não foi informado.').Status(THTTPStatus.BadRequest);

  _nfse := TServiceNFSe.Create(Trim(Req.ContentFields.Field('cnpj').AsString));
  try
    Res.Send(_nfse.Enviar(Trim(Req.ContentFields.Field('tx2').AsString))).ContentType('application/json; charset=utf-8');
  finally
    _nfse.Free;
  end;
end;

procedure DoCancelarNfse(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  _nfse: TServiceNFSe;
begin
  Writeln(FormatDateTime('dd/mm/YYYY hh:MM:ss:zzz',Now) + ' - executando rota post nfse/cancelar');

  if Trim(Req.ContentFields.Field('cnpj').AsString) = EmptyStr then
    raise EHorseException.New.Error('Parametro cnpj não foi informado.').Status(THTTPStatus.BadRequest);
  if Trim(Req.ContentFields.Field('chave').AsString) = EmptyStr then
    raise EHorseException.New.Error('Parametro chave não foi informado.').Status(THTTPStatus.BadRequest);

  _nfse := TServiceNFSe.Create(Trim(Req.ContentFields.Field('cnpj').AsString));
  try
    Res.Send(_nfse.Cancelar(Trim(Req.ContentFields.Field('chave').AsString))).ContentType('application/json; charset=utf-8');
  finally
    _nfse.Free;
  end;
end;

procedure DoGerarPdfNfse(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  _nfse: TServiceNFSe;
  _pathPdf: string;
  _pdf: TFileStream;
begin
  Writeln(FormatDateTime('dd/mm/YYYY hh:MM:ss:zzz',Now) + ' - executando rota post nfse/gerarPdf');

  if Trim(Req.ContentFields.Field('cnpj').AsString) = EmptyStr then
    raise EHorseException.New.Error('Parametro cnpj não foi informado.').Status(THTTPStatus.BadRequest);
  if Trim(Req.ContentFields.Field('xmlNfse').AsString) = EmptyStr then
    raise EHorseException.New.Error('Parametro xmlNfse não foi informado.').Status(THTTPStatus.BadRequest);

  _nfse := TServiceNFSe.Create(Trim(Req.ContentFields.Field('cnpj').AsString));
  try
    _pathPdf := _nfse.GerarPdfImpressao(Trim(Req.ContentFields.Field('xmlNfse').AsString),
                                        Trim(Req.ContentFields.Field('xmlRps').AsString),
                                        Trim(Req.ContentFields.Field('camposCustomizados').AsString));

    _pdf := TFileStream.Create(_pathPdf, fmOpenRead);
    Res.Send<TStream>(_pdf).ContentType('application/pdf');
  finally
    _nfse.Free;
  end;
end;

procedure DoGetConfig(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  _nfse: TServiceNFSe;
begin
  Writeln(FormatDateTime('dd/mm/YYYY hh:MM:ss:zzz',Now) + ' - executando rota get nfse/config');

  if Trim(Req.Params.Field('cnpj').AsString) = EmptyStr then
    raise EHorseException.New.Error('Parametro cnpj não foi informado.').Status(THTTPStatus.BadRequest);

  _nfse := TServiceNFSe.Create();
  try
    Res.Send(_nfse.getConfig(Trim(Req.Params.Field('cnpj').AsString))).ContentType('text/plain');
  finally
    _nfse.Free;
  end;
end;

procedure DoSaveConfig(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  _nfse: TServiceNFSe;
begin
  Writeln(FormatDateTime('dd/mm/YYYY hh:MM:ss:zzz',Now) + ' - executando rota post nfse/config');

  if Trim(Req.ContentFields.Field('cnpj').AsString) = EmptyStr then
    raise EHorseException.New.Error('Parametro cnpj não foi informado.').Status(THTTPStatus.BadRequest);
  if Trim(Req.ContentFields.Field('conteudoIni').AsString) = EmptyStr then
    raise EHorseException.New.Error('Parametro conteudoIni não foi informado.').Status(THTTPStatus.BadRequest);

  _nfse := TServiceNFSe.Create;
  try
    Res.Send(_nfse.SalvarConfig(Trim(Req.ContentFields.Field('cnpj').AsString),
                                Trim(Req.ContentFields.Field('conteudoIni').AsString))).ContentType('application/json');
  finally
    _nfse.Free;
  end;
end;

procedure DoAtualizarArquivos(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  _nfse: TServiceNFSe;
begin
  Writeln(FormatDateTime('dd/mm/YYYY hh:MM:ss:zzz',Now) + ' - executando rota post nfse/atualizarArquivos');

  _nfse := TServiceNFSe.Create();
  try
    Res.Send(_nfse.AtualizarArquivos(Trim(Req.Query.Field('modoCompleto').AsString)= '1')).ContentType('application/json');
  finally
    _nfse.Free;
  end;
end;

procedure Registry;
begin
  THorse
    .Get('nfse/cidadesHomologadas', DoGetCidadesHomologadas)
    .Get('nfse/converterTx2ToXml', DoGetConverterTx2ToXml)
    .Get('nfse/converterXmlToJson', DoGetConverterXmlToJson)
    .Get('nfse/consultar', DoGetConsultarNfse)
    .Get('nfse/consultarTomadas', DoGetConsultarTomadas)
    .Get('nfse/versaoComponente', DoGetVersaoComponente)
    .Get('nfse/config/:cnpj', DoGetConfig)
    .Post('nfse/config', DoSaveConfig)
    .Post('nfse/atualizarArquivos', DoAtualizarArquivos)
    .Post('nfse/cancelar', DoCancelarNfse)
    .Post('nfse/enviar', DoEnviarNfse)
    .Post('nfse/gerarPdf', DoGerarPdfNfse)
    ;
end;

end.