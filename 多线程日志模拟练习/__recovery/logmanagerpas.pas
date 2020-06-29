unit logmanagerpas;

interface
uses windows, sysutils,syncobjs,classes,dialogs,FileCtrl,db;
type
{*************************}
TLogMessage = class
private
  FLogMsg: string;
public
  constructor Create(AStr: string);
  property LogMessage: string read FLogMsg;
end;
{*************************}
TlogEvent = class(TEvent)
public
  constructor Create(const Name: string; Manual: Boolean);//事件的创建
  procedure Signal;//事件执行状态的标志
  procedure Reset;
  function Wait (TimeOut: Dword): Boolean;
end;
{*************************}
TLogManager = class
private
  FLogMsgQueue: TList; //存储等待TlogMessage的列表对象
  FLogFile: TextFile;
  FQueueLock: TCriticalSection; //重要区段变量
  FFileLock: TCriticalSection;
  FNewLogAddEvent: TlogEvent;  //写日志同步事件
  FFileStoredDir: string;
  procedure LockQueue;
  procedure UnLockQueue;
  procedure LockFile;
  procedure UnLockFile;
  procedure NewFileOfCurrentDay(ADate: TDateTime);
public
  constructor create(ADirName: string);
  destructor destroy; override;
  procedure AddLog(AStr: string); //加入一条日志
  function HasWaitingLog:boolean; //列表中有日志为true
  function GetFirstWaitingLog: string; //得到日志列表中的第一个日志字符串
  procedure WriteLogToFile(AStr: string);
  procedure FlushLogsToFile; //清空文件缓存
  procedure MoveToNextDay(ADate: TDateTime);
  procedure DelPreviousLogFiles(ADate: TDateTime; ADaysAgo: integer);//删除旧的日志
end;

implementation

{ TlogEvent }

constructor TlogEvent.Create(const Name: string; Manual: Boolean);
begin
  inherited create(nil, Manual, false, PChar(Name));
end;

procedure TlogEvent.Reset;
begin
  inherited ResetEvent;
end;

procedure TlogEvent.Signal;
begin
  inherited SetEvent;
end;

function TlogEvent.Wait(TimeOut: Dword): Boolean;
begin
  if WaitFor(TimeOut) = wrSignaled then
    result := true
  else
    result := false;
end;

{ TLogManager }

procedure TLogManager.AddLog(AStr: string);
begin
  LockQueue;
  try
    //创建一条日志列表并存入列表
    FLogMsgQueue.Add(TLogMessage.Create(AStr));
  finally
    UnLockQueue;
  end;
  FNewLogAddEvent.Signal;
end;

constructor TLogManager.create(ADirName: string);
begin
 inherited create;
  FFileStoredDir := ADirName;//日志文件的存储目录

  if not DirectoryExists(ADirName) then
    ForceDirectories(ADirName);

  NewFileOfCurrentDay(now);
  FLogMsgQueue := TList.Create; //日志列表
  FQueueLock := TCriticalSection.Create; //用于日志列表
  FFileLock := TCriticalSection.Create; //用于文件I/O
  FNewLogAddEvent := TlogEvent.Create('HAS_NEW_LOG_ADDED', false);
  //设置访问name为'HAS_NEW_LOG_ADDED'，使用自动复位

end;

procedure TLogManager.DelPreviousLogFiles(ADate: TDateTime;
  ADaysAgo: integer);
var
  TmpDate: TDateTime;
  FileName: string;
  IndDay: integer;

  function GenFileName: string;
  begin
    result := FFileStoredDir+'\GBAS'+FormatDateTime('yyyymmdd', TmpDate);
    result := result +'.Log';
  end;
begin
  TmpDate := ADate - ADaysAgo;
  for IndDay := 1 to 60 do begin
    FileName := GenFileName;
    DeleteFile(PChar(FileName));
    TmpDate := TmpDate - 1;
  end;
end;

destructor TLogManager.destroy;
var
  i: integer;
begin
  Flush(FLogFile);
  CloseFile(FLogFile);
  for i:= 0 to FLogMsgQueue.Count-1 do begin
    TLogMessage(FLogMsgQueue.Items[i]).Free;
  end;
  FLogMsgQueue.Free;
  FQueueLock.Free;
  FFileLock.Free;
  FNewLogAddEvent.Free;
  inherited destroy;
end;

procedure TLogManager.FlushLogsToFile;
begin
  LockFile;
  try
    Flush(FLogFile);
  finally
    UnLockFile;
  end;

end;

function TLogManager.GetFirstWaitingLog: string;
begin
  result := '';
  LockQueue;
  try
    if FLogMsgQueue.Count>0 then begin
      result := TLogMessage(FLogMsgQueue.items[0]).LogMessage;
      TLogMessage(FLogMsgQueue.items[0]).Free;
      FLogMsgQueue.Delete(0);
    end;
  finally
    UnLockQueue;
  end;

end;

function TLogManager.HasWaitingLog: boolean;
begin
  if FLogMsgQueue.Count > 0 then
    result := true
  else
    result := false;
end;

procedure TLogManager.LockFile;
begin
 FFileLock.enter

end;

procedure TLogManager.LockQueue;
begin
  FQueueLock.Enter;

end;

procedure TLogManager.MoveToNextDay(ADate: TDateTime);
begin
  LockFile;
  try
    Flush(FLogFile);
    CloseFile(FLogFile);
    NewFileOfCurrentDay(ADate);
  finally
    UnLockFile;
  end;

end;

procedure TLogManager.NewFileOfCurrentDay(ADate: TDateTime);
var
  sTmpName, sTitle: string;
  Stream: TStream;
begin
  sTmpName := FFileStoredDir + '\GBAS'+FormatDateTime('yyyymmdd', ADate)+'.Log';
  sTitle := 'Following is the Logs of BCIA-GBAS Server on ' + FormatDateTime('yyyy/mm/dd', ADate) + ':';
  if not FileExists(sTmpName) then begin
    Stream := TFileStream.Create(sTmpName, fmCreate);
    Stream.WriteBuffer(Pointer(sTitle)^, Length(sTitle));
    Stream.Free;
  end;

  AssignFile(FLogFile, sTmpName);
  Append(FLogFile);

end;


procedure TLogManager.UnLockFile;
begin
 FFileLock.Leave;
end;

procedure TLogManager.UnLockQueue;
begin
  FQueueLock.Leave;
end;

procedure TLogManager.WriteLogToFile(AStr: string);
begin
  LockFile;
  try
    Writeln(FLogFile, AStr);
  finally
    UnLockFile;
  end;

end;

{ TLogMessage }

constructor TLogMessage.Create(AStr: string);
begin
  inherited create;
      FLogMsg := '['+FormatDateTime('yyyy/mm/dd hh:nn:ss:zzz', now)+']';
      FLogMsg := FLogMsg + ',  Information: '+AStr;
end;

end.
