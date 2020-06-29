unit thdlogmghandlepas;

interface

uses
  Classes,windows,logmanagerpas,stdctrls;

type
  Tthdloghandle = class(TThread)
  private
    { Private declarations }
    FLogMgr: TLogManager;
    FNewLogAddEvent: TlogEvent;
    fmemolog:Tmemo;
  protected
    procedure Execute; override;
  public
    constructor create(ALogMgr: TLogManager;memolog:Tmemo);
    destructor destroy; override;
end;

implementation


constructor Tthdloghandle.create(ALogMgr: TLogManager;memolog:Tmemo);
begin
  inherited create(true);
  FLogMgr := ALogMgr;
  fmemolog:=memolog;
  FNewLogAddEvent := TlogEvent.Create('HAS_NEW_LOG_ADDED', false);
  Priority := tpLower;
end;

destructor Tthdloghandle.destroy;
begin
  FNewLogAddEvent.Free;      //yj
  inherited destroy;
end;

procedure Tthdloghandle.Execute;
var
  sTmp: string;
begin
  { Place thread code here }
  while true and (not terminated) do begin
    if FLogMgr.HasWaitingLog then begin
      sTmp := FLogMgr.GetFirstWaitingLog;
      if sTmp <> '' then begin
        FLogMgr.WriteLogToFile(sTmp);
        fmemolog.Lines.Add(sTmp);
      end;
      if fmemolog.Lines.Count>180 then begin //xiao
         fmemolog.Lines.Delete(0);
      end;
      //����VCL�ؼ�Ӧʹ��Synchronizeͬ�������ʱ���Լ���
      //����ô����û�б���
    end else
      FNewLogAddEvent.Wait(INFINITE);
  end;
end;

end.
