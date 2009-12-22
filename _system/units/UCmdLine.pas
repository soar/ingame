unit UCmdLine;

interface

uses
    { Vcl: }    Windows, SysUtils,
    { Self: }   UVars;

type
    TCCmdLine = class (TObject)
    private
        // Массив параметров
        params: array of string;
        fullParamStr: string;
        SilentMode: boolean;

        // Установка переменных в зависимости от параметров ком. строки
        procedure SetOptions (param: string; index: integer = -1);
    public
        // Конструктор
        constructor Create ();

        // Возвращение количества параметров
        function ParamsCount: integer;
        // Проверка на "невидимый режим"
        function IsSilentMode: boolean;
        // Подготовка ParamMsg
        function ParamMsgPrepare (): TCopyDataStruct;
    end;

implementation

const
    paramPrefix = '--';
    paramSilentKey = 'silent';

//  Конструктор
constructor TCCmdLine.Create;
var
    I: integer;
begin
    { TODO : Разобраться, нужна ли эта FullParamStr }
    fullParamStr := '';
    // Сохраняем все параметры и парсим их
    for I := 0 to System.ParamCount do begin
        // Заполняем массив параметров
        SetLength (params, Length (params) + 1);
        params [I] := LowerCase (paramStr (I));
        // Заполняем строку параметров
        fullParamStr := ' ' + fullParamStr + params [I];
        // Выставляем опции программы
        SetOptions (params [I], I);
    end;
end;

//  Установка опций запуска по параметрам
procedure TCCmdLine.SetOptions (param: string; index: integer = -1);
begin
    if (param = paramPrefix + paramSilentKey) then
        SilentMode := true;
end;

//  Возвращение количества параметров
function TCCmdLine.ParamsCount;
begin
    Result := Length (params);
end;

//  Проверка на "невидимый режим"
function TCCmdLine.IsSilentMode;
begin
    Result := SilentMode;
end;

//  Подготовка ParamMsg
function TCCmdLine.ParamMsgPrepare: TCopyDataStruct;
begin
    Result.dwData := Integer (cdtArray);
    Result.cbData := SizeOf (params);
    Result.lpData := @params;
end;

end.
