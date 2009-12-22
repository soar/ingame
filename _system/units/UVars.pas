unit UVars;

interface

type
    TCopyDataType = (cdtArray = 0);
    TGames = (gamesBF2, gamesCOD4, gamesCS, gamesWOW);
    Games = set of TGames;

const
    // Уникальный ID
    programGUID = '{A3AECEB2-860B-49A5-BDA6-B191E48CFE48}';

    // Модуль настроек
    // Файл настроек
    mSettings_iniMain = 'settings.ini';
    // Файл с информацией об играх
    mSettings_iniGames = 'games.ini';

    // Модуль криптографии
    // Файл ключей
    mCrypt_keysDBFileName = 'keys.db';
    // Размер файла ключей
    mCrypt_keysFileSize = 64 * 1024;
    // Адреса для получения ключей
    offset_SettingsPasswords = $000100; // 32b to $00011F

    // Ветка с информацией в реестре
    regFolder = 'Software\SevGames.net';
    regInGameFolder = regFolder + '\InGame';


    // Информация о формах:
    // Главная форма приложения
    formMainCN = 'TFMain';
    formMainWN = 'InGame';
    // Форма Launcher'a
    formLauncherCN = 'TFLauncher';
    formLauncherWN = 'FLauncher';

resourcestring
    // Ошибка при нахождении мютекса, но отстутствии окна
    errCantAccess = 'Найдена запущенная копия. Ошибка #IG00001.';
    errCantAccessText = 'Найдена запущенная копия программы, но к ней невозможно получить доступ.' + #10#13#10#13 +
                        'Убедитесь, что программа не запущена от другого пользователя.';

implementation

end.
