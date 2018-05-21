unit uConsNFSEporRPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmConsNFSEporRPS = class(TForm)
    GroupBox1: TGroupBox;
    edNumRPS: TEdit;
    edSerieRPS: TEdit;
    edTPRps: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnConsultarNFSe: TButton;
    btnCancelar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsNFSEporRPS: TFrmConsNFSEporRPS;

implementation

{$R *.dfm}

end.
