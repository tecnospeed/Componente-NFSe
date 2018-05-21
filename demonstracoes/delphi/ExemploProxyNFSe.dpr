program ExemploProxyNFSe;

uses
  Forms,
  UExemploProxyNFSe in 'UExemploProxyNFSe.pas' {frmExemplo},
  uCancelamento in 'uCancelamento.pas' {frmCancelamento},
  uConsNFSEporRPS in 'uConsNFSEporRPS.pas' {FrmConsNFSEporRPS};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmExemplo, frmExemplo);
  Application.CreateForm(TfrmCancelamento, frmCancelamento);
  Application.CreateForm(TFrmConsNFSEporRPS, FrmConsNFSEporRPS);
  Application.Run;
end.
