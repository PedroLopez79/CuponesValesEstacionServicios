object fraBombaNew: TfraBombaNew
  Left = 0
  Top = 0
  Width = 659
  Height = 430
  TabOrder = 0
  TabStop = True
  object lvBombas: TListView
    Left = 0
    Top = 0
    Width = 659
    Height = 430
    Align = alClient
    Columns = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    IconOptions.AutoArrange = True
    LargeImages = dmImages.EstadoBomba
    ReadOnly = True
    ParentFont = False
    TabOrder = 0
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 232
    Top = 128
  end
end
