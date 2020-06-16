object Form1: TForm1
  Left = 575
  Top = 244
  Width = 460
  Height = 436
  Caption = #20256#22855#24037#20316#23460
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Start: TButton
    Left = 168
    Top = 360
    Width = 81
    Height = 33
    Caption = 'Start'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = StartClick
  end
  object Memo1: TMemo
    Left = 8
    Top = 152
    Width = 417
    Height = 201
    Lines.Strings = (
      '')
    TabOrder = 1
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=lovemyself;Persist Security Info=Tru' +
      'e;User ID=root;Data Source=mysql delphi;Initial Catalog=delphi'
    LoginPrompt = False
    AfterConnect = ADOConnection1AfterConnect
    Left = 88
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *from shangpin')
    Left = 184
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 296
    Top = 8
  end
end
