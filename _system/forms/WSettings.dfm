object FSettings: TFSettings
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'InGame: '#1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1080#1075#1088
  ClientHeight = 470
  ClientWidth = 600
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
    Left = 461
    Top = 409
    Width = 113
    Height = 33
    Caption = #1047#1072#1082#1088#1099#1090#1100
    SkinData.SkinSection = 'SPEEDBUTTON'
  end
  object pagesSettings: TsPageControl
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 600
    Height = 396
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
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
    ExplicitLeft = 5
    ExplicitTop = 5
    ExplicitWidth = 590
    object pageBF2: TsTabSheet
      Hint = '<b>Battlefield 2</b><br />'#1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1076#1083#1103' Battlefield 2'
      Caption = 'Battlefield 2'
      ParentShowHint = False
      ShowHint = False
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      ExplicitWidth = 442
      object BF2_labelPageCaption: TsLabelFX
        AlignWithMargins = True
        Left = 8
        Top = 5
        Width = 439
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
      object BF2_grpPaths: TsGroupBox
        AlignWithMargins = True
        Left = 8
        Top = 35
        Width = 439
        Height = 106
        Margins.Left = 8
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = #1047#1072#1087#1091#1089#1082' '#1080' '#1087#1091#1090#1080
        TabOrder = 0
        CaptionYOffset = 5
        SkinData.SkinSection = 'GROUPBOX'
        CaptionSkin = 'PANEL'
        ExplicitWidth = 429
        object BF2_editExePath: TsFilenameEdit
          AlignWithMargins = True
          Left = 157
          Top = 25
          Width = 275
          Height = 21
          Hint = 
            '<b>'#1055#1091#1090#1100' '#1082' '#1079#1072#1087#1091#1089#1082#1072#1077#1084#1086#1084#1091' '#1092#1072#1081#1083#1091' '#1080#1075#1088#1099'</b><br />'#1059#1082#1072#1078#1080#1090#1077' '#1087#1091#1090#1100' '#1082' '#1079#1072#1087#1091#1089#1082 +
            #1072#1077#1084#1086#1084#1091' '#1092#1072#1081#1083#1091' '#1080#1075#1088#1099'. '#1069#1090#1086#1090' '#1087#1091#1090#1100' '#1073#1091#1076#1077#1090' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100#1089#1103' '#1076#1083#1103' '#1079#1072#1087#1091#1089#1082#1072' '#1080#1075 +
            #1088#1086#1074#1086#1075#1086' '#1082#1083#1080#1077#1085#1090#1072'.'
          Margins.Left = 155
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
          ExplicitWidth = 265
        end
        object BF2_cbRunWithUpdate: TsCheckBox
          AlignWithMargins = True
          Left = 7
          Top = 56
          Width = 425
          Height = 19
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1086#1073#1085#1086#1074#1083#1103#1090#1100' '#1087#1088#1080' '#1079#1072#1087#1091#1089#1082#1077' ('#1088#1077#1082#1086#1084#1077#1085#1076#1091#1077#1090#1089#1103' '#1074#1082#1083#1102#1095#1080#1090#1100')'
          Align = alTop
          Checked = True
          State = cbChecked
          TabOrder = 1
          SkinData.SkinSection = 'CHECKBOX'
          ImgChecked = 0
          ImgUnchecked = 0
          ExplicitWidth = 415
        end
        object BF2_cbOptimizeForPing: TsCheckBox
          AlignWithMargins = True
          Left = 7
          Top = 80
          Width = 425
          Height = 19
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = #1054#1087#1090#1080#1084#1080#1079#1080#1088#1086#1074#1072#1090#1100' '#1087#1086#1076' '#1087#1080#1085#1075
          Align = alTop
          AutoSize = False
          Checked = True
          State = cbChecked
          TabOrder = 2
          SkinData.SkinSection = 'CHECKBOX'
          ImgChecked = 0
          ImgUnchecked = 0
          ExplicitWidth = 415
        end
      end
      object BF2_grpParams: TsGroupBox
        AlignWithMargins = True
        Left = 8
        Top = 146
        Width = 439
        Height = 227
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
        ExplicitWidth = 429
        object BF2_labelParamsInfo: TsLabel
          AlignWithMargins = True
          Left = 7
          Top = 24
          Width = 425
          Height = 24
          Margins.Left = 5
          Margins.Top = 4
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
          ExplicitWidth = 411
        end
        object BF2_rbUseCustomParams: TsRadioButton
          AlignWithMargins = True
          Left = 7
          Top = 87
          Width = 425
          Height = 19
          Hint = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1099#1077' '#1085#1072#1089#1090#1088#1086#1081#1082#1080' '#1082#1086#1084#1072#1085#1076#1085#1086#1081' '#1089#1090#1088#1086#1082#1080
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alTop
          Caption = #1042#1074#1077#1089#1090#1080' '#1074#1088#1091#1095#1085#1091#1102
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = settingsChangeParamsMethod
          AutoSize = False
          SkinData.SkinSection = 'RADIOBUTTON'
          ShowFocus = False
          ExplicitWidth = 415
        end
        object BF2_rbUseSettings: TsRadioButton
          AlignWithMargins = True
          Left = 7
          Top = 142
          Width = 425
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
          ExplicitWidth = 415
        end
        object BF2_editCustomParams: TsEdit
          AlignWithMargins = True
          Left = 27
          Top = 111
          Width = 405
          Height = 21
          Hint = 
            '<b>'#1042#1074#1077#1076#1080#1090#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099'</b><br />'#13#10'<b>+joinServer [address]</b> - '#1087 +
            #1086#1076#1082#1083#1102#1095#1080#1090#1100#1089#1103' '#1082' '#1089#1077#1088#1074#1077#1088#1091',<br />'#13#10'<b>+playerName [account]</b> - '#1080#1084#1103 +
            ' '#1072#1082#1082#1072#1091#1085#1090#1072',<br />'#13#10'<b>+playerPassword ['#1087#1072#1088#1086#1083#1100']</b> - '#1087#1072#1088#1086#1083#1100' '#1082' '#1072#1082#1082 +
            #1072#1091#1085#1090#1091',<br />'#13#10#1080' '#1090'.'#1076'.'
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
          ExplicitWidth = 395
        end
        object BF2_editPlayerName: TsEdit
          AlignWithMargins = True
          Left = 252
          Top = 166
          Width = 180
          Height = 21
          Hint = 
            '<b>'#1048#1084#1103' '#1072#1082#1082#1072#1091#1085#1090#1072'</b><br />'#1041#1091#1076#1077#1090' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100#1089#1103' '#1076#1083#1103' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1086#1075 +
            #1086'<br />'#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103' '#1082' '#1072#1082#1082#1072#1091#1085#1090#1091' Battlefield'
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
          ExplicitWidth = 170
        end
        object BF2_editPlayerPassword: TsEdit
          AlignWithMargins = True
          Left = 252
          Top = 192
          Width = 180
          Height = 21
          Hint = 
            '<b>'#1055#1072#1088#1086#1083#1100' '#1082' '#1072#1082#1082#1072#1091#1085#1090#1091'</b><br />'#1041#1091#1076#1077#1090' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100#1089#1103' '#1076#1083#1103' '#1072#1074#1090#1086#1084#1072#1090#1080#1095 +
            #1077#1089#1082#1086#1075#1086'<br />'#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103' '#1082' '#1072#1082#1082#1072#1091#1085#1090#1091' Battlefield'
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
          PasswordChar = '*'
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
          ExplicitWidth = 170
        end
        object BF2_rbNotUseParams: TsRadioButton
          AlignWithMargins = True
          Left = 7
          Top = 58
          Width = 425
          Height = 19
          Hint = #1053#1077' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1087#1072#1088#1072#1084#1077#1090#1088#1099
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alTop
          Caption = #1053#1077' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1087#1072#1088#1072#1084#1077#1090#1088#1099
          Checked = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          TabStop = True
          OnClick = settingsChangeParamsMethod
          AutoSize = False
          SkinData.SkinSection = 'RADIOBUTTON'
          ShowFocus = False
          ExplicitWidth = 415
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object pageCS: TsTabSheet
      Caption = 'Counter-Strike'
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = False
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object pageWOW: TsTabSheet
      Caption = 'World of Warcraft'
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = False
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
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
    HTMLMode = True
    PauseHide = 50000
    SkinSection = 'HINT'
    Left = 96
    Top = 552
  end
end
