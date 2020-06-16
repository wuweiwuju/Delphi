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
    procedure ADOConnection1AfterConnect(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
     Self.Memo1.Lines.Add('MYSQL连接成功');
     log.Debug('MYSQL连接成功');
   end
  else
    begin
     Self.Memo1.Lines.Add('MYSQL连接失败');
     log.Debug('MYSQL连接失败');
    end;
                        
end;

procedure TForm1.ADOConnection1AfterConnect(Sender: TObject);
begin
  self.Memo1.Lines.Add('连接成功');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ADOConnection1.Open('root', 'lovemyself');
  ADOQuery1.Connection := ADOConnection1;
end;

end.
