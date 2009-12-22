unit USettingsMgr;

interface

uses
    { Vcl: }    Registry, IniFiles, SysUtils, Dialogs, Windows, SHFolder, LbCipher,
    { Self: }   UVars;

type
    TGameSettings = record

    end;

    TGameInfo = Record
        Game:         TGames;       // Определитель игры
        GameName:     string;       // Полное название игры
        isInstalled:  boolean;      // Установлена ли игра
        gamePath:     string;       // Путь к папке с игрой
        version:      string;       // Версия игры
        settings:     record end;       //
        constructor Create (var IniFile: TIniFile; iGame: TGames);
    end;

    TCSettings = class (TObject)
        vDirs: record
            dSelf: string;
            dUserAppData: string;
            dSettings: string;
        end;

        sLauncher: record
            ShowOnStart: boolean;
            PositionLeft: SmallInt;
            PositionTop: SmallInt;
        end;

        sBF2Settings: record
        end;

        sGamesList: array [TGames] of TGameInfo;

        //
        // Загрузка и сохранение программных настроек
        procedure LoadSettings ();
        procedure SaveSettings ();

        //
        // Загрузка и сохранение настроек игр
        procedure LoadGamesSettings ();
        procedure SaveGamesSettings;
    public
        constructor Create ();
    end;

implementation

uses
    UFileSystem, WMain, WLauncher, UCrypt, LbUtils;

//  Конструктор объекта настроек
//  Вызов методов загрузки настроек из файлов, определение переменных
constructor TCSettings.Create ();
begin
    inherited Create ();

    // Получаем пути стандартных директорий
    vDirs.dSelf := ExtractFileDir  (ParamStr (0));
    vDirs.dUserAppData := GetSpecialFolderPath (CSIDL_LOCAL_APPDATA);

    // Выбираем директорию для хранения настроек
    if IsDirWritable (vDirs.dSelf)
        then vDirs.dSettings := vDirs.dSelf
        else vDirs.dSettings := vDirs.dUserAppData;

    LoadSettings;
    LoadGamesSettings;
end;

//  Загрузка настроек программы из файла конфигурации / реестра
procedure TCSettings.LoadSettings;
var
    IniFile: TIniFile;
begin
    // Загружаем файл настроек. Если он не существует - будут использоваться дефолтные значения
    IniFile := TIniFile.Create (DirToPath (vDirs.dSettings) + mSettings_iniMain);
    try
        sLauncher.ShowOnStart       := IniFile.ReadBool    ('Launcher', 'ShowOnStart', true);
        sLauncher.PositionLeft      := IniFile.ReadInteger ('Launcher', 'Position-X', -1);
        sLauncher.PositionTop       := IniFile.ReadInteger ('Launcher', 'Position-Y', -1);
    finally
        FreeAndNil (IniFile);
    end;
end;

procedure TCSettings.SaveSettings;
var
    IniFile: TIniFile;
begin
    IniFile := TIniFile.Create (DirToPath (vDirs.dSettings) + mSettings_iniMain);
    try
        IniFile.WriteBool       ('Launcher', 'ShowOnStart', sLauncher.ShowOnStart);
        IniFile.WriteInteger    ('Launcher', 'Position-X', WMain.FLauncher.Left);
        IniFile.WriteInteger    ('Launcher', 'Position-Y', WMain.FLauncher.Top);
    finally
        FreeAndNil (IniFile);
    end;
end;

//  Загрузка настроек игр из файла конфигурации / реестра
procedure TCSettings.LoadGamesSettings;
var
    IniFile: TIniFile;
begin
    // Загружаем настройки только если файл существует
    //if (not FileExists (DirToPath (vDirs.dSettings) +  then

end;

procedure TCSettings.SaveGamesSettings;
var
    IniFile: TIniFile;
    Game: TGames;
    Games: set of TGames;
begin
    IniFile := TIniFile.Create (DirToPath (vDirs.dSettings) + mSettings_iniGames);
    try
        Games := [Low (TGames) .. High (TGames)];
        for Game in Games do begin
            sGamesList [Game] := TGameInfo.Create (IniFile, Game);
            //ShowMessage (sGamesList [Game].GameName);
        end;
    finally
        FreeAndNil (IniFile);
    end;
end;

{ TGameInfo }

//  Конструктор экземпляра класса TGameInfo
constructor TGameInfo.Create (var IniFile: TIniFile; iGame: TGames);
begin
    // Определяем внутренние поля Game и GameName
    Game := iGame;
    case Game of
        gamesBF2: GameName := 'Battlefield 2';
        gamesCOD4: GameName := 'Call of Duty 4';
        gamesCS: GameName := 'Counter-Strike';
        gamesWOW: GameName := 'World of Warcraft';
    else exit;
    end;
    // Определяем путь к игре и проверяем его правильность
    gamePath := IniFile.ReadString (GameName, 'GamePath', '');
    if ((gamePath <> '') and (FileExists (gamePath)))
        then isInstalled := true
        else isInstalled := false;
    // Если игра установлена - получаем версию, пока из Ini-файла
    // TODO: Осуществить получение версии из EXE-файла или реестра (мб при установке)
    if (isInstalled) then
        Version := IniFile.ReadString (GameName, 'Version', '');
end;

function CryptKeyLoad (Offset: Integer): TKey256;
var
    F: file of byte;
begin
    //
end;

end.
