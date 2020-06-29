program PApplog;

uses
  Forms,
  Uapplog in 'Uapplog.pas' {FrmAppLog},
  logmanagerpas in 'logmanagerpas.pas',
  thdlogmghandlepas in 'thdlogmghandlepas.pas',
  uthdcheckpas in 'uthdcheckpas.pas',
  UthdWriteLogtest in 'UthdWriteLogtest.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFrmAppLog, FrmAppLog);
  Application.Run;
end.
