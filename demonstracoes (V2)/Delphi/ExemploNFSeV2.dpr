program ExemploProxyNFSe;

uses
  Forms,
  UExemploNFSeV2 in 'UExemploNFSeV2.pas' {frmExemplo};

begin
  Application.Initialize;
  Application.CreateForm(TfrmExemplo, frmExemplo);
  Application.Run;
end.

