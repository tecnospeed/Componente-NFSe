program ExemploProxyNFSe;

uses
  Forms,
  UExemploProxyNFSe in 'UExemploProxyNFSe.pas' {frmExemplo},
  uCancelamento in 'uCancelamento.pas' {frmCancelamento},
  uConsNFSEporRPS in 'uConsNFSEporRPS.pas' {FrmConsNFSEporRPS},
  uConsNFSETomadas in 'uConsNFSETomadas.pas' {FrmConsNFSETomadas};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmExemplo, frmExemplo);
  Application.CreateForm(TfrmCancelamento, frmCancelamento);
  Application.CreateForm(TFrmConsNFSEporRPS, FrmConsNFSEporRPS);
  Application.CreateForm(TFrmConsNFSETomadas, FrmConsNFSETomadas);
  Application.Run;
end.
