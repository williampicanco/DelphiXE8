program SistemaEmpresa;

uses
  Vcl.Forms,
  sysutils,
  UCursos in 'UCursos.pas' {frmPrincipal},
  Uacesso in 'Uacesso.pas' {frmLogin},
  Vcl.Themes,
  Vcl.Styles,
  UFrmDmEmpresa in '..\dados\UFrmDmEmpresa.pas' {DataModule1: TDataModule},
  UFrmCadSetor in 'UFrmCadSetor.pas' {FrmCadSetor},
  UFrmCadFuncionario in 'UFrmCadFuncionario.pas' {FrmCadFuncionario},
  UFrmCadDependente in 'UFrmCadDependente.pas' {FrmCadDependente},
  UfrmConFuncionario in 'UfrmConFuncionario.pas' {frmConsFuncionario},
  UfrmConSetFun in 'UfrmConSetFun.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  frmAcesso:= TfrmAcesso.Create(nil);
  if (frmAcesso.ShowModal = 1) then
  begin
    Application.MainFormOnTaskbar := True;
    TStyleManager.TrySetStyle('Turquoise Gray');
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFrmCadSetor, FrmCadSetor);
  Application.CreateForm(TFrmCadFuncionario, FrmCadFuncionario);
  Application.CreateForm(TFrmCadDependente, FrmCadDependente);
  Application.CreateForm(TfrmConsFuncionario, frmConsFuncionario);
  Application.CreateForm(TForm1, Form1);
  FreeAndNil(frmAcesso);//liberando completamente da memória o formulário frmAcesso.
    Application.Run;
  end;

end.
