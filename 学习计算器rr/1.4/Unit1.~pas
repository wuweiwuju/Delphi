unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Button23: TButton;
    ListBox1: TListBox;
    Button22: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);

    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button22Click(Sender: TObject);

  private
    { Private declarations }
    
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  //function KeyboardHookProc(Code: Integer; WordParam: Word; LongParam: LongInt): LongInt; stdcall;

implementation
  var
    data,data1,data2:Real;
    OK:Integer;
    StrO:string='0';
    KBHook: HHook; {this intercepts keyboard input}
     

{$R *.dfm}


function getValue(str: String): String;
var
 i, j: Integer;
 subStr: string;
begin
  i:= pos('=', str);
  j:= length(str) - i;
  subStr:= copy(str,i+1 ,j);
  Result:= subStr;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  //edit1输入居中
  SetWindowLong(Edit1.handle, GWL_STYLE, GetWindowlong(edit1.Handle, GWL_STYLE)+ES_CENTER);
  Edit1.Refresh;

end;

procedure TForm1.Button5Click(Sender: TObject);     //1
begin
button17.SetFocus;
    if Length(Edit1.Text)> 40 then
        MessageBeep(MB_OK)
    else
    begin
    if OK =1 then
       Edit1.Text:='';
    Edit1.Text:=Edit1.Text +'1';
    end;
OK:=0;

end;

procedure TForm1.Button6Click(Sender: TObject);     //2
begin
button17.SetFocus;
    if Length(Edit1.Text)> 40 then
        MessageBeep(MB_OK)
    else
    begin
    if OK =1 then
       Edit1.Text:='';
    Edit1.Text:=Edit1.Text +'2';
    end;
OK:=0;
end;

procedure TForm1.Button7Click(Sender: TObject);   //3
begin
button17.SetFocus;
  if Length(Edit1.Text)> 40 then
      MessageBeep(MB_OK)
  else
  begin
  if OK =1 then
       Edit1.Text:='';
  Edit1.Text:=Edit1.Text +'3';
  end;
OK:=0;
end;

procedure TForm1.Button8Click(Sender: TObject);   //4
begin
button17.SetFocus;
  if Length(Edit1.Text)> 40 then
      MessageBeep(MB_OK)
  else
    begin
    if OK =1 then
       Edit1.Text:='';
    Edit1.Text:=Edit1.Text +'4';
    end;
OK:=0;
end;

procedure TForm1.Button9Click(Sender: TObject);    //5
begin
button17.SetFocus;
  if Length(Edit1.Text)> 40 then
      MessageBeep(MB_OK)
  else
    begin
    if OK =1 then
       Edit1.Text:='';
    Edit1.Text:=Edit1.Text +'5';
    end;
OK:=0;
end;

procedure TForm1.Button10Click(Sender: TObject);  //6
begin
button17.SetFocus;
   if Length(Edit1.Text)> 40 then
      MessageBeep(MB_OK)
   else
    begin
    if OK =1 then
       Edit1.Text:='';
    Edit1.Text:=Edit1.Text +'6';
    end;
OK:=0;
end;

procedure TForm1.Button11Click(Sender: TObject);  //7
begin
button17.SetFocus;
  if Length(Edit1.Text)> 40 then
      MessageBeep(MB_OK)
  else
    begin
    if OK =1 then
       Edit1.Text:='';
    Edit1.Text:=Edit1.Text +'7';
    end;
OK:=0;
end;

procedure TForm1.Button12Click(Sender: TObject);   //8
begin
button17.SetFocus;
  if Length(Edit1.Text)> 40 then
      MessageBeep(MB_OK)
  else
    begin
    if OK =1 then
       Edit1.Text:='';
    Edit1.Text:=Edit1.Text +'8';
    end;
OK:=0;
end;

procedure TForm1.Button13Click(Sender: TObject);  //9
begin
button17.SetFocus;
  if Length(Edit1.Text)> 40 then
      MessageBeep(MB_OK)
  else
    begin
    if OK =1 then
       Edit1.Text:='';
    Edit1.Text:=Edit1.Text +'9';
    end;
OK:=0;
end;

procedure TForm1.Button14Click(Sender: TObject);  //0
begin
button17.SetFocus;
    if  Edit1.Text ='' then
        MessageBeep(MB_OK)
    else
      begin
        if Length(Edit1.Text)> 40 then
            MessageBeep(MB_OK)
        else
        begin
        if OK =1 then
           Edit1.Text:=''
        else
          Edit1.Text:=Edit1.Text +'0';
        end;
      end;
OK:=0;
end;

procedure TForm1.Button15Click(Sender: TObject);   //00
begin
button17.SetFocus;
    if  Edit1.Text ='' then
        MessageBeep(MB_OK)
    else
    begin
       if Length(Edit1.Text)> 40 then
       MessageBeep(MB_OK)
       else
       begin
       if OK =1 then
          Edit1.Text:=''
       else
          Edit1.Text:=Edit1.Text +'00';
       end;
    end;
OK:=0;
end;

procedure TForm1.Button16Click(Sender: TObject);   //.
begin
button17.SetFocus;
  if  Edit1.Text ='' then
      Edit1.Text:= '0.'
  else
  begin
    if Length(Edit1.Text)> 40 then
      MessageBeep(MB_OK)
    else
    begin
    if OK =1 then
      begin
       Edit1.Text:='';
       Edit1.Text:= '0.';
      end
    else
       Edit1.Text:=Edit1.Text +'.';
    end;
  end;
OK:=0;
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
  button17.SetFocus;
    Edit1.Text:='';
    OK:=0;
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
    Close;
end;

procedure TForm1.Button1Click(Sender: TObject);      //+
var
  i:Integer;
begin
button17.SetFocus;
  i:=Length(Edit1.Text);
  if Edit1.Text='' then
     MessageBeep(MB_OK)
  else
  begin
      if (Edit1.Text[i]='+')or (Edit1.Text[i]='-')or
         (Edit1.Text[i]='*')or (Edit1.Text[i]='*') then
         MessageBeep(MB_OK)
      else
         Edit1.Text:=Edit1.Text+'+';
  end;


end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i:Integer;
begin
button17.SetFocus;
  i:=Length(Edit1.Text);
  if Edit1.Text='' then
     MessageBeep(MB_OK)
  else
  begin
      if (Edit1.Text[i]='+')or (Edit1.Text[i]='-')or
         (Edit1.Text[i]='*')or (Edit1.Text[i]='*') then
         MessageBeep(MB_OK)
      else
         Edit1.Text:=Edit1.Text+'-';
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i:Integer;
begin
button17.SetFocus;
  i:=Length(Edit1.Text);
  if Edit1.Text='' then
     MessageBeep(MB_OK)
  else
  begin
      if (Edit1.Text[i]='+')or (Edit1.Text[i]='-')or
         (Edit1.Text[i]='*')or (Edit1.Text[i]='*') then
         MessageBeep(MB_OK)
      else
         Edit1.Text:=Edit1.Text+'*';
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  i:Integer;
begin
edit1.SetFocus;
  i:=Length(Edit1.Text);
  if Edit1.Text='' then
     MessageBeep(MB_OK)
  else
  begin
      if (Edit1.Text[i]='+')or (Edit1.Text[i]='-')or
         (Edit1.Text[i]='*')or (Edit1.Text[i]='*') then
         MessageBeep(MB_OK)
      else
         Edit1.Text:=Edit1.Text+'/';
  end;
end;

procedure TForm1.Button17Click(Sender: TObject);
var
   i:string;
   mun:array[1..40] of Real;
   mun1:array[1..40] of string;
   L,j,a,k:Integer;
begin
edit1.SetFocus;
  a:=1;
  j:=1;
  OK:=1;
  k:=1;
  L:=1;
   for  a:=1 to Length(Edit1.Text) do
   begin
   if (Edit1.Text[a]='+') or (Edit1.Text[a]='-') or
   (Edit1.Text[a]='*') or (Edit1.Text[a]='/') then
   begin
      mun[j]:= StrToFloat(i);
      mun1[L]:= Edit1.Text[a];
      j:=1+j;
      L:=1+L;
      i:='';
   end
   else
      i:=i+ Edit1.Text[a];
   end;
   mun[j]:= StrToFloat(i);
   data:= mun[1];
   for a:=2 to j do
    begin
    data1:= mun[a];
    if mun1[k]='+' then
      data2:=data+data1
    else if mun1[k]='-' then
      data2:=data-data1
    else if mun1[k]='*' then
      data2:=data*data1
    else if mun1[k]='/' then
      data2:=data/data1;
    k:=k+1;
    data:= data2;
    end;
   Edit1.Text:=Edit1.Text+'='+floattostr(data2);
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
button17.SetFocus;
 Edit1.Text := Copy(Edit1.Text,0,Length(Edit1.Text)-1);

  Edit1.SelStart := Length(Edit1.Text);
end;



procedure TForm1.Button21Click(Sender: TObject);
begin
if edit1.text  <> stro then listBox1.AddItem(edit1.text,sender);
end;

procedure TForm1.Button23Click(Sender: TObject);
begin
  listBox1.Clear;
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
if KeyPreview then
begin
  if key = #43 then //+
    button1.Click;
  if key = #45 then //-
    button2.Click;
  if key = #42 then //*
    button3.Click;
  if key = #47 then // /
    button4.Click;

  if key = #13 then // 回车
    button17.Click;
  if key = #8 then // 删除
    button20.Click;

  if key = '1' then
    button5.Click;
  if key = '2' then
    button6.Click;
  if key = '3' then
    button7.Click;
  if key = '4' then
    button8.Click;
  if key = '5' then
    button9.Click;
  if key = '6' then
    button10.Click;
  if key = '7' then
    button11.Click;
  if key = '8' then
    button12.Click;
  if key = '9' then
    button13.Click;


  end;
end;



procedure TForm1.Button22Click(Sender: TObject);

begin
showmessage(getValue( edit1.Text));

end;

end.
