{
Parte integrante de uExemploPorxyNFSe, o formulário de cancelamento é
responsável por efetuar o cancelamento da nota em sua respectiva cidade.

@author(TecnoSpeed - Consultoria em TI (http://www.tecnospeed.com.br))
@created(Dezembro/2010)}
unit uCancelamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, StdCtrls, ExtCtrls;

type
  {Declaração da classe do formulário de cancelamento}
  TfrmCancelamento = class(TForm)
    wbTabelaDeChaves: TWebBrowser;
    pnlCancelamento: TPanel;
    edtChaveCancelamento: TLabeledEdit;
    btnFechar: TButton;
    cbTabelaDeChaves: TCheckBox;
    btnCancelar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtChaveCancelamentoChange(Sender: TObject);
    {Cancelar a nota}
    procedure btnCancelarClick(Sender: TObject);
    {Fechar o Formulário}
    procedure btnFecharClick(Sender: TObject);
    {Controle a abertura da tabela de chaves}
    procedure cbTabelaDeChavesClick(Sender: TObject);
  private
    { Private declarations }
    Altura_Grande: integer;
  public
    { Public declarations }
  end;

var
  frmCancelamento: TfrmCancelamento;

const
  ALTURA_PEQUENO = 134;

implementation

{$R *.dfm}

procedure TfrmCancelamento.FormCreate(Sender: TObject);
begin
  Altura_Grande := Self.ClientHeight;
  Self.ClientHeight := ALTURA_PEQUENO;
end;

procedure TfrmCancelamento.FormActivate(Sender: TObject);
var
  _existe: Boolean;
begin
  ModalResult := mrNone;
  _existe := FileExists(ExpandFileName(ExtractFileDir(ParamStr(0)) + '\..\Help\TabelaDeChaves.html'));
  cbTabelaDeChaves.Checked := false;
  cbTabelaDeChaves.Enabled := _existe;
  if not _existe then
  begin
    cbTabelaDeChaves.Caption := 'Tabela de Chaves não Encontrada no Diretório: ' +
      ' ..\Help\TabelaDeChaves.html';
  end
  else
    cbTabelaDeChaves.Caption := 'Mostrar Tabela de Chaves';

  if trim(edtChaveCancelamento.Text) = '' then
    btnCancelar.Enabled := False;
end;

procedure TfrmCancelamento.edtChaveCancelamentoChange(Sender: TObject);
begin
  btnCancelar.Enabled := True;
end;

procedure TfrmCancelamento.btnCancelarClick(Sender: TObject);
begin
  if trim(edtChaveCancelamento.Text) <> '' then
  begin
    ModalResult := mrOk;
  end
  else
    ShowMessage('O campo "Chave da NFSe" esta vazio.');
end;

procedure TfrmCancelamento.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCancelamento.cbTabelaDeChavesClick(Sender: TObject);
begin
  if cbTabelaDeChaves.Checked then
  begin
    frmCancelamento.ClientHeight := Altura_Grande;
    wbTabelaDeChaves.Navigate(ExpandFileName(ExtractFileDir(ParamStr(0)) + '\..\Help\TabelaDeChaves.html'));
    wbTabelaDeChaves.Show;
  end
  else
  begin
    frmCancelamento.ClientHeight := ALTURA_PEQUENO;
    wbTabelaDeChaves.Navigate('');
    wbTabelaDeChaves.Hide;
  end;
end;

end.
