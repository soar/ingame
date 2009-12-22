unit UCrypt;

interface

uses
    LbCipher, UVars;

type
    TCCrypt = class (TObject)
    public
        KeysDB: file of Byte;
        constructor Create (KeysFileName: string = '');
        destructor Destroy; override;
        function CheckKeysFile (KeysFileName: string): boolean;
        function GetKey (Offset: Integer): TKey256;
    end;

function LoadX256DBKey (FileName: string; Offset: Integer): TKey256;

implementation

uses
    WMain, USettings, UInstallation, UExceptions, SysUtils, Dialogs;

function LoadX256DBKey (FileName: string; Offset: Integer): TKey256;
var
    KeysFile: file of byte;
    //CCrypt: TCCrypt;
begin
    {AssignFile (KeysFile, FileName);
    try
        Reset (KeysFile);
        Seek (KeysFile, Offset);
        BlockRead (KeysFile, Result, Length (Result));
    finally
        CloseFile (KeysFile);
    end; }
    //CCrypt := TCCrypt.Create (FileName);
    try
        //Result := CCrypt.GetKey (Offset);
    finally
        //FreeAndNil (CCrypt);
    end;
end;

{ TCCrypt }

function TCCrypt.CheckKeysFile (KeysFileName: string): boolean;
begin
    Result := false;
end;

constructor TCCrypt.Create (KeysFileName: string);
begin
    if (KeysFileName = '')
        then KeysFileName := ExtractFilePath (ParamStr (0)) + mCrypt_keysDBFileName;
    if ((not FileExists (KeysFileName)) or (not CheckKeysFile (KeysFileName)))
        then SimpleErrorShow (errnameNoKeysFileExists, true);
    AssignFile (KeysDB, KeysFileName);
end;

destructor TCCrypt.Destroy;
begin
    CloseFile (KeysDB);
end;

function TCCrypt.GetKey(Offset: Integer): TKey256;
begin
    Reset (KeysDB);
    Seek (KeysDB, Offset);
    BlockRead (KeysDB, Result, Length (Result));
end;

end.
