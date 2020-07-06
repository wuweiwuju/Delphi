unit Uapplog;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,logmanagerpas,thdlogmghandlepas,uthdcheckpas,inifiles,UthdWriteLogtest;

type
  TFrmAppLog = class(TForm)
    mlog: TMemo;
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAppLog: TFrmAppLog;
  SysIniFile:TIniFile; //配置文件读取
  LogMgr: TLogManager; //日志管理类
  TimeIntervalEvent: TlogEvent; //事件
  NewLogAddEvent: TlogEvent;
  //Thdcheck: TThdcheck;
  ThdLogHandler: TThdLogHandle; //定义为写日志线程类的实例
  ListWriteThread:Tlist;
implementation

{$R *.DFM}

procedure TFrmAppLog.FormCreate(Sender: TObject);
begin
  SysIniFile := TIniFile.Create('.\Applog.ini'); //d:\common\borland\delphi5\projects
  ListWriteThread:=Tlist.Create ;
  TimeIntervalEvent := TlogEvent.Create('TEN_SECONDS_INTERVAL_UP', false);
  NewLogAddEvent := TlogEvent.Create('HAS_NEW_LOG_ADDED', false);

  LogMgr := TLogManager.create('.\LogFiles');
  //Thdcheck:=TThdcheck.create(LogMgr);
  ThdLogHandler := TThdLogHandle.create(LogMgr,mlog);

  //Thdcheck.Resume;
  ThdLogHandler.Resume;

end;

procedure TFrmAppLog.Button1Click(Sender: TObject);
begin
  LogMgr.AddLog('This is a massage from main process!');
end;

procedure TFrmAppLog.FormDestroy(Sender: TObject);
var
i:integer;
begin
  //Thdcheck.Terminate;
  TimeIntervalEvent.Signal;

  ThdLogHandler.Terminate;
  NewLogAddEvent.Signal;

  //Thdcheck.Free;
  ThdLogHandler.Free;

  LogMgr.Free;
  NewLogAddEvent.Free;
  TimeIntervalEvent.free;
  SysIniFile.Free;
  for i:=0 to ListWriteThread.count-1 do begin
     TWriteLog(ListWriteThread.Items[i]).free;
  end;
  ListWriteThread.Free;
end;

procedure TFrmAppLog.Button2Click(Sender: TObject);
var
i:integer;
begin

  for i:=0 to 5 do begin
    ListWriteThread.Add(TWriteLog.create(false));
  end;
end;

procedure TFrmAppLog.Button3Click(Sender: TObject);
var
i:integer;
begin
  for i:=0 to ListWriteThread.count-1 do begin
     TWriteLog(ListWriteThread.Items[0]).free;
     ListWriteThread.Delete(0);
  end;
end;

end.
