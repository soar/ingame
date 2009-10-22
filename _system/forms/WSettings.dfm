object FSettings: TFSettings
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'InGame: '#1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1080#1075#1088
  ClientHeight = 626
  ClientWidth = 596
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  ShowHint = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object sSpeedButton1: TsSpeedButton
    Left = 445
    Top = 398
    Width = 113
    Height = 33
    Caption = #1047#1072#1082#1088#1099#1090#1100
    SkinData.SkinSection = 'SPEEDBUTTON'
  end
  object pagesSettings: TsPageControl
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 586
    Height = 324
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ActivePage = pageBF2
    Align = alTop
    Images = FMain.imgGamesIconsX32
    MultiLine = True
    OwnerDraw = True
    TabHeight = 140
    TabOrder = 0
    TabPosition = tpLeft
    TabStop = False
    TabWidth = 46
    OnDrawTab = pagesSettingsDrawTab
    SkinData.SkinSection = 'PAGECONTROL'
    object pageBF2: TsTabSheet
      Hint = '<b>Battlefield 2</b><br />'#1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1076#1083#1103' Battlefield 2'
      Caption = 'Battlefield 2'
      ParentShowHint = False
      ShowHint = False
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object labelPageCaption: TsLabelFX
        AlignWithMargins = True
        Left = 8
        Top = 5
        Width = 425
        Height = 25
        Margins.Left = 8
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        SkinSection = 'PANEL'
        Caption = 'Battlefield 2'
        Color = clBtnFace
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 3353638
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Kind.KindType = ktCustom
        Kind.Color = clCaptionText
        Shadow.Mode = smCustom
        Shadow.BlurCount = 0
        Shadow.Distance = 0
        ExplicitLeft = 72
        ExplicitTop = 144
        ExplicitWidth = 145
      end
      object grpPaths: TsGroupBox
        AlignWithMargins = True
        Left = 8
        Top = 35
        Width = 425
        Height = 62
        Margins.Left = 8
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = #1055#1091#1090#1100' '#1082' '#1080#1075#1088#1077
        TabOrder = 0
        CaptionYOffset = 5
        SkinData.SkinSection = 'GROUPBOX'
        CaptionSkin = 'PANEL'
        object editBF2Exe: TsFilenameEdit
          AlignWithMargins = True
          Left = 162
          Top = 25
          Width = 256
          Height = 21
          Hint = 
            '<b>'#1055#1091#1090#1100' '#1082' '#1079#1072#1087#1091#1089#1082#1072#1077#1084#1086#1084#1091' '#1092#1072#1081#1083#1091' '#1080#1075#1088#1099'</b><br />'#1059#1082#1072#1078#1080#1090#1077' '#1087#1091#1090#1100' '#1082' '#1079#1072#1087#1091#1089#1082 +
            #1072#1077#1084#1086#1084#1091' '#1092#1072#1081#1083#1091' '#1080#1075#1088#1099'. '#1069#1090#1086#1090' '#1087#1091#1090#1100' '#1073#1091#1076#1077#1090' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100#1089#1103' '#1076#1083#1103' '#1079#1072#1087#1091#1089#1082#1072' '#1080#1075 +
            #1088#1086#1074#1086#1075#1086' '#1082#1083#1080#1077#1085#1090#1072'.'
          Margins.Left = 160
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alTop
          AutoSize = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 255
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Text = 'BF2.exe'
          BoundLabel.Active = True
          BoundLabel.Caption = #1055#1091#1090#1100' '#1082' '#1079#1072#1087#1091#1089#1082#1072#1077#1084#1086#1084#1091' '#1092#1072#1081#1083#1091
          BoundLabel.Indent = 3
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = 3353638
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
          SkinData.SkinSection = 'EDIT'
          GlyphMode.Blend = 0
          GlyphMode.Grayed = False
          GlyphMode.Hint = #1053#1072#1078#1084#1080#1090#1077', '#1095#1090#1086#1073#1099' '#1074#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
          DirectInput = False
          Filter = #1047#1072#1087#1091#1089#1082#1072#1077#1084#1099#1081' '#1092#1072#1081#1083' '#1080#1075#1088#1099' - BF2.exe|BF2.exe'
          DialogOptions = [ofPathMustExist, ofFileMustExist, ofNoNetworkButton, ofEnableSizing]
        end
      end
      object grpParams: TsGroupBox
        AlignWithMargins = True
        Left = 8
        Top = 102
        Width = 425
        Height = 203
        Margins.Left = 8
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1079#1072#1087#1091#1089#1082#1072
        TabOrder = 1
        CaptionYOffset = 5
        SkinData.SkinSection = 'GROUPBOX'
        CaptionSkin = 'PANEL'
        object labelParamsInfo: TsLabel
          AlignWithMargins = True
          Left = 7
          Top = 22
          Width = 411
          Height = 24
          Margins.Left = 5
          Margins.Top = 2
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 
            #1055#1072#1088#1072#1084#1077#1090#1088#1099', '#1089' '#1082#1086#1090#1086#1088#1099#1084#1080' '#1073#1091#1076#1077#1090' '#1079#1072#1087#1091#1089#1082#1072#1090#1100#1089#1103' '#1080#1075#1088#1072'. '#1042#1099' '#1084#1086#1078#1077#1090#1077' '#1074#1074#1077#1089#1090#1080' '#1080 +
            #1093' '#13#10#1089#1072#1084#1086#1089#1090#1086#1103#1090#1077#1083#1100#1085#1086' '#1080#1083#1080' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1085#1072#1089#1090#1088#1086#1081#1082#1080'.'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3353638
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ExplicitTop = 25
        end
        object rbUseCustomParams: TsRadioButton
          AlignWithMargins = True
          Left = 7
          Top = 56
          Width = 411
          Height = 19
          Hint = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1099#1077' '#1085#1072#1089#1090#1088#1086#1081#1082#1080' '#1082#1086#1084#1072#1085#1076#1085#1086#1081' '#1089#1090#1088#1086#1082#1080
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alTop
          Caption = #1042#1074#1077#1089#1090#1080' '#1074#1088#1091#1095#1085#1091#1102
          Checked = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TabStop = True
          OnClick = settingsChangeParamsMethod
          AutoSize = False
          SkinData.SkinSection = 'RADIOBUTTON'
          ShowFocus = False
        end
        object rbUseSettings: TsRadioButton
          AlignWithMargins = True
          Left = 7
          Top = 111
          Width = 411
          Height = 19
          Hint = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1086#1087#1094#1080#1080
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alTop
          Caption = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1085#1072#1089#1090#1088#1086#1081#1097#1080#1082
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = settingsChangeParamsMethod
          AutoSize = False
          SkinData.SkinSection = 'RADIOBUTTON'
          ShowFocus = False
        end
        object editCustomParams: TsEdit
          AlignWithMargins = True
          Left = 27
          Top = 80
          Width = 391
          Height = 21
          Hint = 
            '<b>'#1042#1074#1077#1076#1080#1090#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099'</b><br /><b>+joinServer bf2.sevstar.net</b>' +
            ' - '#1087#1086#1076#1082#1083#1102#1095#1080#1090#1100#1089#1103' '#1082' '#1089#1077#1088#1074#1077#1088#1091
          Margins.Left = 25
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alTop
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Indent = 0
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
        end
        object editPlayerName: TsEdit
          AlignWithMargins = True
          Left = 252
          Top = 135
          Width = 166
          Height = 21
          Margins.Left = 250
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alTop
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Active = True
          BoundLabel.Caption = #1042#1074#1077#1076#1080#1090#1077' '#1085#1080#1082' '#1080#1075#1088#1086#1082#1072
          BoundLabel.Indent = 113
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = 3353638
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
        end
        object editPlayerPassword: TsEdit
          AlignWithMargins = True
          Left = 252
          Top = 161
          Width = 166
          Height = 21
          Margins.Left = 250
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alTop
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Active = True
          BoundLabel.Caption = #1042#1074#1077#1076#1080#1090#1077' '#1074#1072#1096' '#1087#1072#1088#1086#1083#1100' '#1082' '#1072#1082#1082#1072#1091#1085#1090#1091
          BoundLabel.Indent = 50
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = 3353638
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = True
        end
      end
    end
    object pageCOD4: TsTabSheet
      Hint = '<b>Call of Duty 4</b><br />'#1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1076#1083#1103' Call of Duty 4'
      Caption = 'Call of Duty 4'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = False
      SkinData.CustomColor = False
      SkinData.CustomFont = False
    end
    object pageCS: TsTabSheet
      Caption = 'Counter-Strike'
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = False
      SkinData.CustomColor = False
      SkinData.CustomFont = False
    end
    object pageWOW: TsTabSheet
      Caption = 'World of Warcraft'
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = False
      SkinData.CustomColor = False
      SkinData.CustomFont = False
    end
  end
  object sSkinProvider: TsSkinProvider
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 24
    Top = 552
  end
  object sAlphaHints: TsAlphaHints
    Templates = <>
    TemplateName = 'Win7'
    HTMLMode = True
    PauseHide = 50000
    Left = 96
    Top = 552
  end
end
