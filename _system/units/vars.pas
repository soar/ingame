unit vars;

interface

type
    // Информация об играх
    TGameInfo1 = Record
        fullGameName: string;

        isInstalled:  boolean;

        gamePath:     string;
        version:      string;
    end;

    // Поддерживаемые игры (акронимы)
    TGameList = Record
        bf2:    TGameInfo1;
        cod4:   TGameInfo1;
        cs:     TGameInfo1;
        wow:    TGameInfo1;
    end;

    TCopyDataType = (cdtArray = 0);

const
    // Уникальный ID
    programGUID = '{A3AECEB2-860B-49A5-BDA6-B191E48CFE48}';

    // Имя файла настроек
    settingsFileName = 'settings.ini';

    // Имя файла с информацией об играх
    gamesInfoFileName = 'games.ini';

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
