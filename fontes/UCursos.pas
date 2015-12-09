unit UCursos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, UFrmCadsetor, UFrmCadFuncionario, UFrmCadDependente,
  UfrmConFuncionario, UfrmConSetFun,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Cadastro1: TMenuItem;
    Consulta1: TMenuItem;
    Relatrio1: TMenuItem;
    Sobre1: TMenuItem;
    Setor1: TMenuItem;
    Funcionrio1: TMenuItem;
    Dependente1: TMenuItem;
    Image1: TImage;
    Funcionrio2: TMenuItem;
    Funcionarios1: TMenuItem;
    Novo1: TMenuItem;
    Abrir1: TMenuItem;
    Salvar1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    FunciorioporSetor1: TMenuItem;
    procedure Setor1Click(Sender: TObject);
    procedure Funcionrio1Click(Sender: TObject);
    procedure Dependente1Click(Sender: TObject);
    procedure Funcionrio2Click(Sender: TObject);
    procedure Funcionarios1Click(Sender: TObject);
    procedure FunciorioporSetor1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation
 uses UFrmDmEmpresa;
{$R *.dfm}

procedure TfrmPrincipal.Dependente1Click(Sender: TObject);
begin
  FrmCadDependente.Show;
end;

procedure TfrmPrincipal.Funcionarios1Click(Sender: TObject);
begin
  DataModule1.frxReport1.LoadFromFile('C:\Treinamento\NeriDelphiAvancado\rel_funcionario.fr3');
  DataModule1.frxReport1.ShowReport();
end;

procedure TfrmPrincipal.Funcionrio1Click(Sender: TObject);
begin
  FrmCadFuncionario.Show;

end;

procedure TfrmPrincipal.Funcionrio2Click(Sender: TObject);
begin
  frmConsFuncionario.Show;
end;

procedure TfrmPrincipal.FunciorioporSetor1Click(Sender: TObject);
begin
  Form1.Show;
end;

procedure TfrmPrincipal.Setor1Click(Sender: TObject);
begin

  FrmCadSetor.Show;
end;

end.
