unit UfrmConFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Datasnap.DBClient,
  Data.FMTBcd, Data.SqlExpr, IBX.IBCustomDataSet, IBX.IBTable, Data.Win.ADODB,
  IBX.IBQuery;

type
  TfrmConsFuncionario = class(TForm)
    Panel1: TPanel;
    dbgPesquisa: TDBGrid;
    bbtSair: TBitBtn;
    dsPes: TDataSource;
    bbtLocalizar: TBitBtn;
    GroupBox1: TGroupBox;
    edtNome: TEdit;
    tbConFunc: TIBTable;
    dbMatricula: TDBEdit;
    dbSetor: TDBEdit;
    dbNome: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dsPesquisa: TDataSource;
    Edit1: TEdit;

    procedure bbtSairClick(Sender: TObject);
    procedure bbtLocalizarClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmConsFuncionario: TfrmConsFuncionario;

implementation
 uses UFrmDmEmpresa;
{$R *.dfm}


procedure TfrmConsFuncionario.bbtLocalizarClick(Sender: TObject);
Var strQry: string;
begin

  DataModule1.tbFuncionario.Locate('FUN_NOME', Edit1.Text, [loPartialKey,loCaseInsensitive]);

  ShowMessage ('Nome �: '+ Edit1.Text + ' / ' + 'Matr�cula:' + dbMatricula.Text + ' / ' + 'Setor: ' + dbSetor.Text);

end;

procedure TfrmConsFuncionario.bbtSairClick(Sender: TObject);
begin
  frmConsFuncionario.Close;
end;

procedure TfrmConsFuncionario.Edit1Change(Sender: TObject);
begin
  DataModule1.tbFuncionario.Locate('FUN_NOME', Edit1.Text, [loPartialKey,loCaseInsensitive]) ;
  //DataModule1.QryConsFuncionario.Locate('FUN_NOME', Edit1.Text, [loPartialKey,loCaseInsensitive]);
  //ClientDataSet1.Locate('FUN_NOME', Edit1.Text, [loPartialKey,loCaseInsensitive]);
end;

end.
