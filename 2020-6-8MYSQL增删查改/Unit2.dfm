object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 192
  Top = 131
  Height = 400
  Width = 917
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=lovemyself;Persist Security Info=Tru' +
      'e;User ID=root;Data Source=mysql delphi;Initial Catalog=delphi'
    LoginPrompt = False
    Left = 168
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery2
    Left = 448
    Top = 96
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *from shangpin')
    Left = 320
    Top = 96
  end
end
