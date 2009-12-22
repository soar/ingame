object FDownload: TFDownload
  AlignWithMargins = True
  Left = 0
  Top = 0
  Width = 404
  Height = 71
  TabOrder = 0
  DesignSize = (
    404
    71)
  object imgFileTypeIcon: TImage
    Left = 6
    Top = 6
    Width = 48
    Height = 48
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
  end
  object sgDownloadProgress: TsGauge
    AlignWithMargins = True
    Left = 60
    Top = 48
    Width = 284
    Height = 17
    Margins.Left = 60
    Margins.Right = 60
    Margins.Bottom = 6
    Align = alBottom
    SkinData.SkinSection = 'GAUGE'
    ForeColor = clBlack
    Suffix = '%'
    ExplicitLeft = 79
    ExplicitWidth = 273
  end
  object lblUpdateName: TsLabelFX
    AlignWithMargins = True
    Left = 60
    Top = 6
    Width = 284
    Height = 20
    Margins.Left = 60
    Margins.Top = 6
    Margins.Right = 60
    Align = alTop
    AutoSize = False
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103': N/A'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 3353638
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ExplicitLeft = 70
    ExplicitWidth = 316
  end
  object imgState: TImage
    Left = 350
    Top = 6
    Width = 48
    Height = 48
    Anchors = [akTop, akRight]
    ExplicitLeft = 346
  end
  object sFrameAdapter: TsFrameAdapter
    SkinData.SkinSection = 'BAR'
    Left = 32
    Top = 224
  end
end
