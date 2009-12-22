unit WMain;

interface

uses
    // Std
    Windows,        Messages,       Classes,        Graphics,
    Forms,          Menus,          SysUtils,       CoolTrayIcon,
    Dialogs,        ImgList,        Controls,       XPMan,
    // Skin Support
    sSkinManager,   sSkinProvider,  acAlphaHints,   acAlphaImageList,
    // Self
    UVars,
    WLauncher,      WSettings,      USettings,      UCmdLine,
    ULocalization,  UInstallation,  UCrypt,         UExceptions;

type
    TFMain = class(TForm)
        // Поддержка скинов
        sSkinManager: TsSkinManager;
        sSkinProvider: TsSkinProvider;
        sAlphaHints: TsAlphaHints;

        // Vcl
        trayIcon: TCoolTrayIcon;
        imgIconsX16: TsAlphaImageList;
        imgGamesIconsX32: TsAlphaImageList;

        // Главное меню
        mainMenu: TPopupMenu;
            // Пункты и категории главного меню
            mcGames: TMenuItem;
                mnGameBF2: TMenuItem;
                    mnGameBF2Run: TMenuItem;
                    mnGameBF2Settings: TMenuItem;
            mcSystem: TMenuItem;
                mnGamesSettings: TMenuItem;
                mnAbout: TMenuItem;
                mnExit: TMenuItem;

        procedure ShowLauncher (Sender: TObject);
        procedure ShowGamesSettings (Sender: TObject);

        procedure Quit (Sender: TObject);
        procedure GetMenuExtraLineData (FirstItem: TMenuItem; var SkinSection, Caption: string; var Glyph: TBitmap; var LineVisible: Boolean);
    private
        { Private declarations }
    protected
        procedure GetMessage (var msg: TWMCopyData); message WM_COPYDATA;
    public
        // Конструктор и деструктор
        constructor Create (AOwner: TComponent); override;
        destructor Destroy (); override;
    end;

var
    ResLibrary: THandle;

    FMain:      TFMain;

    FLauncher:  TFLauncher;
    FSettings:  TFSettings;

    CLocalize:  TCLocalization;
    CSettings:  TCSettings;
    CCmdLine:   TCCmdLine;
    CCrypt:     TCCrypt;

implementation

{$ifndef NoDFM}{$R *.dfm}{$endif}

//  Конструктор
//  Переопределяем создание формы, создаем форму лончера
constructor TFMain.Create (AOwner: TComponent);
var
    Res: TResourceStream;
begin
    { TODO: Exception Handling in loading DLL }
    ResLibrary := LoadLibrary ('InGameRes.dll');
    if ResLibrary = 0 then
        Exit;

    {$ifndef NoDFM}
        inherited Create (AOwner);
    {$else}
        inherited CreateNew (AOwner);
        Res := TResourceStream.Create (hInstance, 'IGMainForm', RT_RCDATA);
        Res.ReadComponentRes (Self);
        FreeAndNil (Res);
    {$endif}
    FMain.Width := 0;
    FMain.Height := 0;

    // TODO: Create Crypt Module
    // CCrypt := TCCrypt.Create;
    CSettings := TCSettings.Create;

    FLauncher := TFLauncher.Create (Self);

    FSettings := TFSettings.Create (Self);
    // FSettings.ShowModal;

    // TODO: StartUp Check
    //if not StartedSuccessfully then
    //    Quit (nil);
end;

//  Деструктор
destructor TFMain.Destroy ();
begin
    FreeAndNil (CSettings);
    FreeLibrary (ResLibrary);
    inherited Destroy ();
end;

procedure TFMain.GetMessage (var Msg: TWMCopyData);
begin
    Msg.Result := 1;
end;

procedure TFMain.ShowLauncher (Sender: TObject);
begin
    if (FLauncher.Showing)
        then FLauncher.Close
        else FLauncher.Show;
end;

procedure TFMain.ShowGamesSettings (Sender: TObject);
begin
    if (not FSettings.Showing)
        then FSettings.Show
        else FSettings.BringToFront;
end;

//  Выход из приложения
procedure TFMain.Quit (Sender: TObject);
begin
    CSettings.SaveSettings;
    //CSettings.SaveGamesSettings;
    Application.Terminate;
end;

//  Дизайн: отрисовка дополнительного заголовка меню
procedure TFMain.GetMenuExtraLineData (FirstItem: TMenuItem; var SkinSection, Caption: string; var Glyph: TBitmap; var LineVisible: Boolean);
begin
    if (FirstItem.Name = 'mcGames') then begin
        LineVisible := true;
        Caption := 'InGame';
    end else
        LineVisible := false;
end;

end.
