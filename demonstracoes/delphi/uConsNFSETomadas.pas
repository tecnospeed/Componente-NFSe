unit uConsNFSETomadas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmConsNFSETomadas = class(TForm)
    GroupBox1: TGroupBox;
    edtNomeCidade: TEdit;
    edtDocumentoTomador: TEdit;
    edtIMTomador: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblDocumentoPrestador: TLabel;
    edtDocumentoPrestador: TEdit;
    lblIMPrestador: TLabel;
    edtIMPrestador: TEdit;
    lblDataInicial: TLabel;
    edtDataInicial: TEdit;
    lblDataFinal: TLabel;
    edtDataFinal: TEdit;
    lblPagina: TLabel;
    edtPagina: TEdit;
    btnConsultarNFSeTomadas: TButton;
    btnCancelar: TButton;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsNFSETomadas: TFrmConsNFSETomadas;

implementation

{$R *.dfm}

end.
