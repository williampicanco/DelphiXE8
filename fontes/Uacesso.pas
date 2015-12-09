unit Uacesso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, Vcl.Grids, Vcl.DBGrids,
  IBX.IBSQL, Vcl.Menus, inifiles, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmAcesso = class(TForm)
    lblUsuario: TLabel;
    lblSenha: TLabel;
    editUsuario: TEdit;
    editSenha: TEdit;
    btnAcesso: TButton;
    BANCO_DADOS: TIBDatabase;
    IBTransaction1: TIBTransaction;
    dsLogin: TDataSource;
    ibqueryLogin: TIBQuery;
    ibqueryLoginLOG_CODIGO: TIntegerField;
    ibqueryLoginLOG_NOME: TIBStringField;
    ibqueryLoginLOG_SENHA: TIBStringField;
    ibqueryLoginLOG_NIVEL: TIntegerField;
    PopupMenu1: TPopupMenu;
    NovobancodeDados1: TMenuItem;
    OpenDialog1: TOpenDialog;
    Image1: TImage;
    procedure btnAcessoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NovobancodeDados1Click(Sender: TObject);
  private
    tentativas: Integer;
    iniconf:TIniFile;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAcesso: TfrmAcesso;

implementation

{$R *.dfm}

procedure TfrmAcesso.btnAcessoClick(Sender: TObject);
begin
   ibqueryLogin.Close;
   ibqueryLogin.ParamByName('nome').AsString:=editUsuario.Text;
   ibqueryLogin.ParamByName('senha').AsString:=editSenha.Text;
   ibqueryLogin.Open;
   if(ibqueryLogin.RecordCount > 0) then
   begin
      ShowMessage('acesso liberado,SEJA BEM VINDO!');
   end
   else
   begin
      ModalResult := mrNone;
      if (tentativas = 1) then
      begin
        inc(tentativas);
        ShowMessage('acesso N�O liberado, voc� s� tem mais uma chance!');
      end
      else
      begin//se errar login ou senha na segunda vez, cai nesse else e o sistema � fechado.
          ShowMessage('acesso NEGADO');
          Close;
      end;
   end;
end;

procedure TfrmAcesso.FormCreate(Sender: TObject);
begin
   tentativas := 1;
   iniconf:= TIniFile.Create(ExtractFilePath(Application.ExeName)+'conf.ini');
   iniconf.WriteString('banco_dados', 'path', BANCO_DADOS.DatabaseName);
end;

procedure TfrmAcesso.NovobancodeDados1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
       BANCO_DADOS.Connected:= False;
       BANCO_DADOS.DatabaseName:=OpenDialog1.FileName;
  end;

end;

end.
