unit UFileSystem;

interface

uses
    SysUtils, Windows, SHFolder;

//
// Получает информацию о директории по системному идентификатору
function GetSpecialFolderPath (FolderName: integer): string;

//
// Проверка, есть ли права на запись в директорию
function IsDirWritable (FolderName: string): boolean;

//
// Возвращение пути (с бекслешем в конце) по имени директории
function DirToPath (DirName: string): string;

implementation

//
// Получает информацию о директории по системному идентификатору
//
function GetSpecialFolderPath (FolderName: integer): string;
var
    path: array [0..MAX_PATH] of char;
begin
    // Пытаемся получить путь, в случае ошибки - возвращаем пустую строку
    if Succeeded (SHGetFolderPath (0, FolderName, 0, 0, @path[0]))
        then Result := path
        else Result := '';
end;

//
// Проверка, есть ли права на запись в директорию
//
function IsDirWritable (FolderName: string): boolean;
var
    testFile: file;
    testFileName: string;
begin
    // Указываем переменные
    FolderName := ExtractFileDir (FolderName);
    testFileName := DirToPath (FolderName) + 'ingame-test-dir-file';
    if (DirectoryExists (FolderName)) then begin
        AssignFile (testFile, testFileName);
        try
            // Пытаемся открыть файл на запись, отключив сообщения об ошибках
            {$I-}
            Rewrite (testFile);
            {$I+}
            // По результату определяем возможна ли запись в директорию
            if IOResult <> 0
                then Result := false
                else Result := true;
        finally
            // Закрываем хендл файла, если он открыт
            if TFileRec(testFile).Mode <> fmClosed
                then CloseFile (testFile);
            // Удаляем временный файл, если он был создан
            if FileExists (testFileName)
                then DeleteFile (PChar (testFileName));
        end;
    end else
        Result := false;
end;

//
// Возвращение пути (с бекслешем в конце) по имени директории
//
function DirToPath (DirName: string): string;
begin
    if (DirName [StrLen (PChar (DirName))] = '\')
        then Result := DirName
        else Result := DirName + '\';
end;

end.
