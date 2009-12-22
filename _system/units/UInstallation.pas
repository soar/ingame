unit UInstallation;

interface

//  Процедуры самоустановки программы
procedure InstallSelf;
//  Создание файла ключей
procedure CreateKeysFile (filename: string);

implementation

uses
    { Vcl: }        SysUtils,
    { Self: }       WMain, USettings, UVars, UFileSystem, UCRC32,
    { LockBox: }    LbCipher, LbUtils;

//  Процедуры самоустановки программы
//  Включает в себя:
//      1. Генерацию файла ключей
procedure InstallSelf;
begin
    { TODO: Сделать проверку на запись в директорию. Могут понадобиться права администратора }
    if (not FileExists (ExtractFilePath (ParamStr (0)) + mCrypt_keysDBFileName))
        then CreateKeysFile (ExtractFilePath (ParamStr (0)) + mCrypt_keysDBFileName);
end;

//  Создание файла ключей
//  Файл представляет из себя последовательность из 1кк байт
//  Позиции ключей в нем определяются адресами описанными в модуле переменных
procedure CreateKeysFile (filename: string);
var
    F: file of byte;
    FullLength: integer;
    Buffer: array [0..4095] of Byte;
    i, j: Cardinal;
    Crc32: Cardinal;
    SHA1: TSHA1Digest;
begin
    // Устанавливаем начальные переменные
    Randomize;
    Crc32 := $FFFFFFFF;
    FullLength := mCrypt_KeysFileSize;
    AssignFile (F, filename);
    try
        Rewrite (F);
        // Циклически генерируем файл
        // Количество циклов - на 1 меньше необходимого для полного объема
        for i := 1 to (Round (FullLength / Length (Buffer)) - 1) do begin
            // Формируем буффер
            for j := 0 to Length (Buffer) - 1 do
                Buffer [j] := Random (256);
            BlockWrite (F, Buffer [0], Length (Buffer));
            // Обновляем CRC
            Crc32 := GetBlockCRC32 (Crc32, Addr (Buffer [0]), Length (Buffer));
        end;
        // Получаем конечный вариант CRC и его SHA1-хеш
        Crc32 := not Crc32;
        StringHashSHA1 (SHA1, IntToHex (Crc32, 8));
        // Генерируем и пишем последний блок: рендомные байты + SHA1 от CRC32
        for j := 0 to (Length (Buffer) - Length (SHA1) - 1) do
            Buffer [j] := Random (High (Byte));
        BlockWrite (F, Buffer [0], Length (Buffer) - Length (SHA1));
        BlockWrite (F, SHA1, Length (SHA1));
    finally
        CloseFile (F);
    end;
    //ShowMessage ('File CRC: ' + IntToHex (Crc32, 8) + #10#13 + 'File SHA1: ' + BufferToHex (SHA1, Length (SHA1)));
end;

end.
