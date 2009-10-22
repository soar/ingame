unit WLauncher;

interface

uses
    // Std
    Windows,        Classes,        Controls,       Forms,
    ComCtrls,       ImgList,        ExtCtrls,       Buttons,
    SysUtils,       Dialogs,

    // Skin Support
    sSkinManager,   sStatusBar,     sSkinProvider,  acAlphaImageList,
    sPanel,         acAlphaHints,   sSpeedButton,

    // Self
    UCmdLine;

type
    TFLauncher = class(TForm)
        // Skin Components
        sSkinProvider:  TsSkinProvider;
        sAlphaHints:    TsAlphaHints;
        sStatusBar:     TsStatusBar;

        // Части дизайна
        pnlStart:       TsPanel;
        btnBF2:         TsSpeedButton;
        btnCOD4:        TsSpeedButton;
        btnCS:          TsSpeedButton;
        btnWoW:         TsSpeedButton;

        // Эффекты сворачивания и разворачивания формы
        procedure FormCreate (Sender: TObject);
        procedure FormShow (Sender: TObject);
        procedure FormClose (Sender: TObject; var Action: TCloseAction);
    protected
        // Параметры при создании формы
        procedure CreateParams (var Params: TCreateParams); override;
    end;

implementation

uses
    WMain, USettings, Vars;

{$ifndef NoDFM}{$R *.dfm}{$endif}

//  Изменяем параметры создания формы, для отображения на панели задач.
procedure TFLauncher.CreateParams (var Params: TCreateParams);
begin
    inherited CreateParams (Params);
    Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
    Params.WndParent := GetDesktopWindow;
end;

procedure TFLauncher.FormCreate (Sender: TObject);
begin
    if ((CSettings.sLauncher.PositionLeft >= 0) and (CSettings.sLauncher.PositionTop >= 0)) then begin
        Left := CSettings.sLauncher.PositionLeft;
        Top  := CSettings.sLauncher.PositionTop;
        Position := poDesigned;
    end;

    { TODO : Добавить скрытие окна по необходимости }
    //if (not CSettings.sLauncher.ShowOnStart) then ShowWindow (Handle, SW_HIDE);
end;

procedure TFLauncher.FormShow (Sender: TObject);
begin
    DrawAnimatedRects (Handle, IDANI_CAPTION, Rect (Screen.Width, Screen.Height, Screen.Width, Screen.Height), BoundsRect);
    ShowWindow (Handle, SW_SHOWNORMAL);
end;

procedure TFLauncher.FormClose (Sender: TObject; var Action: TCloseAction);
begin
    FLauncher.OnShow := FormShow;
    DrawAnimatedRects (Handle, IDANI_CAPTION, BoundsRect, Rect (Screen.Width, Screen.Height, Screen.Width, Screen.Height));
    ShowWindow (Handle, SW_HIDE);
end;

end.
