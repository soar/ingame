unit WMain;

interface

uses
    // Std
    Windows,        Messages,       Classes,        Graphics,
    Forms,          Menus,          SysUtils,       CoolTrayIcon,
    Dialogs,        ImgList,        Controls,
    // Skin Support
    sSkinManager,   sSkinProvider,  acAlphaImageList,
    // Self
    vars,
    WLauncher,      WSettings,      USettings,      UCmdLine,
    ULocalization, acAlphaHints;

type
    TFMain = class(TForm)
        // Поддержка скинов
        sSkinManager: TsSkinManager;
        sSkinProvider: TsSkinProvider;

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
                mnAbout: TMenuItem;
                mnExit: TMenuItem;
    sAlphaHints: TsAlphaHints;

        procedure ShowLauncher (Sender: TObject);

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
    FMain:      TFMain;

    FLauncher:  TFLauncher;
    FSettings:  TFSettings;

    CLocalize:  TCLocalization;
    CSettings:  TCSettings;
    CCmdLine:   TCCmdLine;

implementation

{$ifndef NoDFM}{$R *.dfm}{$endif}

//  Конструктор
//  Переопределяем создание формы, создаем форму лончера
constructor TFMain.Create (AOwner: TComponent);
var
    Res: TResourceStream;
begin
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

    CSettings := TCSettings.Create;

    FLauncher := TFLauncher.Create (Self);

    FSettings := TFSettings.Create (Self);
    FSettings.ShowModal;
end;

//  Деструктор
destructor TFMain.Destroy ();
begin
    FreeAndNil (CSettings);
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

//  Выход из приложения
procedure TFMain.Quit (Sender: TObject);
begin
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
