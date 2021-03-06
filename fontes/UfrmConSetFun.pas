unit UfrmConSetFun;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label1: TLabel;
    procedure DBLookupComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
 uses UFrmDmEmpresa;
{$R *.dfm}

procedure TForm1.DBLookupComboBox1Click(Sender: TObject);
var StrQry: string;
begin
  StrQry := 'SELECT * FROM funcionario WHERE FUN_SETOR_ID = " ' +
  DataModule1.tbSetor.FieldByName('SET_SETOR_ID').AsString + '";';

  with DataModule1, QryConsSetor,SQL Do
  begin
    Close;
    Clear;
    Add(StrQry);
  end;
end;

end.
