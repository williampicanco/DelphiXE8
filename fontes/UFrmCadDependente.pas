unit UFrmCadDependente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids;

type
  TFrmCadDependente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBNavigator1: TDBNavigator;
    Image1: TImage;
    bbtSair: TBitBtn;
    bbtIncluir: TBitBtn;
    bbtEditar: TBitBtn;
    bbtRemover: TBitBtn;
    bbtCancelar: TBitBtn;
    bbtConfirmar: TBitBtn;
    DBGrid1: TDBGrid;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBText1: TDBText;
    procedure TrataBotao;
    procedure bbtCancelarClick(Sender: TObject);
    procedure bbtConfirmarClick(Sender: TObject);
    procedure bbtEditarClick(Sender: TObject);
    procedure bbtIncluirClick(Sender: TObject);
    procedure bbtRemoverClick(Sender: TObject);
    procedure bbtSairClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadDependente: TFrmCadDependente;

implementation
  uses UFrmDmEmpresa;
{$R *.dfm}

{ TFrmCadDependente }


procedure TFrmCadDependente.bbtCancelarClick(Sender: TObject);
begin
  TrataBotao;
   DataModule1.tbDependente.Cancel;
end;

procedure TFrmCadDependente.bbtConfirmarClick(Sender: TObject);
begin
  try
    TrataBotao;
    DataModule1.tbDependente.Post;
   except
    on E:EDataBaseError do
  Showmessage('Campo obrigatório sem preencher!' + #13+#13 + E.Message);
  end;
end;

procedure TFrmCadDependente.bbtEditarClick(Sender: TObject);
begin
  DataModule1.tbDependente.Edit;
  TrataBotao;
end;

procedure TFrmCadDependente.bbtIncluirClick(Sender: TObject);
var Prox : Integer;
begin
  TrataBotao;
  DataModule1.tbDependente.last;
  Prox := DataModule1.tbDependente.RecordCount + 1;
  DataModule1.tbDependente.Append;
  DataModule1.tbDependente.FieldByName('DEP_DEPENDENTE_ID').AsInteger := Prox;

end;

procedure TFrmCadDependente.bbtRemoverClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  DataModule1.tbDependente.Delete;
end;

procedure TFrmCadDependente.bbtSairClick(Sender: TObject);
begin
  FrmCadDependente.Close;
end;

procedure TFrmCadDependente.TrataBotao;
begin
  bbtIncluir.Enabled := not bbtIncluir.Enabled;
  BbtEditar.Enabled := not BbtEditar.Enabled;
  BbtRemover.Enabled := not BbtRemover.Enabled;
  BbtCancelar.Enabled := not BbtCancelar.Enabled;
  BbtConfirmar.Enabled := True;
  BbtSair.Enabled := not BbtSair.Enabled;
end;

end.
