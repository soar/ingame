unit UOneInstance;

interface

uses
    { Vcl: }    Windows, SysUtils,
    { Self: }   UVars;

type
    TInstanceDataSender = class (TObject)
    private
        // Хендл окна другой копии
        CopyMFHandle: HWnd;
    public
        constructor Create ();

        function CanAccessReceiver: boolean;
        function SendData (SenderHandle: HWnd): boolean;
        procedure RestartIfNeed;
    end;

var
    // Хендл и имя мютекса
    Mutex: THandle;
    MName: array [0..255] of char;

    // Существование другой запущенной копии
    AnotherCopyRunning: boolean;

implementation

uses
    UCmdLine;

//   Функция проверки существования копии программы
//   Result: true, если копия запущена
function IsInstance: boolean;
begin
    // Используем GUID в качестве имени
    // Для WinNT старше 4 - добавляем глобальный префикс (Win95/98 не понимают)
    if ((Win32Platform = VER_PLATFORM_WIN32_NT) and (Win32MajorVersion > 4))
        then MName := 'Global\' + programGUID
        else MName := programGUID;
    Mutex := CreateMutex (nil, false, MName);

    // Возвращаем true если не удалось создать
    Result := ((Mutex = 0) or (GetLastError = ERROR_ALREADY_EXISTS) or (GetLastError = ERROR_ACCESS_DENIED));
end;

//  Конструктор
//  При создании находим хендл запущенной копии (гл. формы)
constructor TInstanceDataSender.Create;
begin
    CopyMFHandle := FindWindow (formMainCN, formMainWN);
end;

//  Проверка на доступность копии
//  Выдаст false, в случае если доступа нет (напр. запущена от другого пользователя)
function TInstanceDataSender.CanAccessReceiver: boolean;
begin
    Result := (CopyMFHandle <> 0);
end;

//  Посылка данных в запущенную копию
//  Получаем данные из класса CmdLine, и отправляем их
function TInstanceDataSender.SendData (SenderHandle: HWnd): boolean;
const
    WM_COPYDATA = $004A; // Определяем, чтобы не подключать Messages
var
    Data: TCopyDataStruct;
    CCmdLine: TCCmdLine;
    SendResult: Byte;
begin
    // Инициализируем класс ком. строки и отправляем данные
    CCmdLine := TCCmdLine.Create;
    try
        Data := CCmdLine.ParamMsgPrepare;
        SendResult := SendMessage (CopyMFHandle, WM_COPYDATA, Integer (SenderHandle), Integer (@Data));
    finally
        FreeAndNil (CCmdLine);
        Result := (SendResult <> 0);
    end;
end;

//  Запрос на перезапуск программы
//  В случае подтверждения пользователем - перезапуск программы перед выходом
procedure TInstanceDataSender.RestartIfNeed;
var
    Answer: Integer;
begin
    Answer := MessageBox (0, PChar (errCantAccessText), PChar (errCantAccess), MB_RETRYCANCEL or MB_ICONERROR);
    if (Answer = idRetry)
        then WinExec (GetCommandLineA, SW_SHOWNORMAL);
end;

//  Начальная и конечная обработки
initialization

    // На стадии инициализации устанавливаем флаг
    if (IsInstance)
        then AnotherCopyRunning := true
        else AnotherCopyRunning := false;

finalization

    // Освобождаем мютекс, если он был создан
    if (Mutex <> 0) then
        CloseHandle (Mutex);

end.
