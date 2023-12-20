program DemoApiNFSe;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.CORS,
  Horse.Jhonson,
  Horse.OctetStream,
  Horse.HandleException,
  Horse.BasicAuthentication,
  System.SysUtils,
  System.JSON,
  controllers.nfse in 'src\controllers.nfse.pas',
  services.nfse in 'src\services.nfse.pas';

begin
  THorse
    .Use(CORS)
    .Use(Jhonson())
    .Use(OctetStream)
    .Use(HandleException)
    .Use(HorseBasicAuthentication(
      function(const AUsername, APassword: string): Boolean
      begin
        Result := AUsername.Equals('admin') and APassword.Equals('123mudar');
      end, THorseBasicAuthenticationConfig.New.SkipRoutes(['/status'])));

  THorse.Get('/status',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send<TJSONObject>(TJSONObject.Create(TJSONPair.Create('status', 'OK')));
    end);

  controllers.nfse.Registry;

  THorse.Listen(9000,
    procedure
    begin
      Writeln('API NFSe usando Horse + componente NFSe TecnoSpeed');
      Writeln('Rodando na porta ' + THorse.Port.ToString);
      Writeln('--------------------------------------------------');
    end);
end.