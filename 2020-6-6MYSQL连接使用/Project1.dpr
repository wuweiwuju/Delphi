program Project1;

uses
  TConfiguratorUnit, {��Ҫ����õ�Ԫ}Forms,
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  doPropertiesConfiguration('log4delphi.properties');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
