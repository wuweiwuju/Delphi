object FrmAppLog: TFrmAppLog
  Left = 580
  Top = 324
  AutoScroll = False
  Caption = 'FrmAppLog'
  ClientHeight = 453
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object mlog: TMemo
    Left = 0
    Top = 0
    Width = 377
    Height = 453
    Align = alLeft
    Lines.Strings = (
      '')
    ScrollBars = ssBoth
    TabOrder = 0
    WordWrap = False
  end
  object Button1: TButton
    Left = 416
    Top = 40
    Width = 225
    Height = 33
    Caption = #22312#20027#32447#31243#20013#20889#20837#19968#26465#28040#24687
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 392
    Top = 312
    Width = 289
    Height = 129
    Color = clMenu
    Lines.Strings = (
      '                                       '#35828#26126#65306
      '1'#12289#31243#24207#25191#34892#26102#20250#22312#24403#21069#30446#24405#19979#24314#31435'Logfile'#23376#30446#24405#24182
      #24314
      #31435#20026'GBASXXXXXXXX.log'#30340#26085#24535#25991#20214#12290'XXXX'#37096#20998#34920
      #31034
      #24403#21069#24180#26376#26085','#36825#20010#25991#20214#27599#22825#24314#31435#19968#20010#65292#20320#21487#20197#22312#31243
      #24207
      #25191#34892#26102#25913#21464#31995#32479#26102#38388#30475#19968#19979#12290
      '2'#12289#33258#21160#21024#38500#26085#24535#25991#20214#21151#33021#20063#21487#20197#36890#36807#22810#24314#31435#26085#24535
      #25991#20214
      #27979#35797
      '3'#12289#19978#38754#25353#38062#20998#21035#32473#20986#20102#20174#20027#36827#31243#12289#20854#20182#32447#31243#20889#26085
      #24535#25991
      #20214#30340#26041#27861#65292#21516#26102#20063#35777#26126#19981#20250#20135#29983#20869#23384#20914#31361#12290)
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object Button2: TButton
    Left = 416
    Top = 88
    Width = 225
    Height = 33
    Caption = #21019#24314'6'#20010#32447#31243#21516#26102#21521#26085#24535#20889#20837#28040#24687
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 416
    Top = 136
    Width = 225
    Height = 33
    Caption = #37322#25918#19978#38754#30340#32447#31243
    TabOrder = 4
    OnClick = Button3Click
  end
end
