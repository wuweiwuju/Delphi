unit Unit1;

interface

uses
  TLoggerUnit,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TForm1 = class(TForm)
    Start: TButton;
    Memo1: TMemo;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    procedure StartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.StartClick(Sender: TObject);
var
  Log: TLogger;
begin
  Log := TLogger.GetInstance;
  if ADOConnection1.Connected = true  then
   begin
     Self.Memo1.Lines.Add('MYSQL���ӳɹ�');
     log.Debug('MYSQL���ӳɹ�');
   end
  else
    begin
     Self.Memo1.Lines.Add('MYSQL����ʧ��');
     log.Debug('MYSQL����ʧ��');
    end;

end;

end.
