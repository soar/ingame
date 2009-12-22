program InGame;

{$define UseCustomUses}
{$ifdef UseCustomUses}
uses
    {$ifdef Debug}
        { FastMM: } FastMM4,
    {$endif}
    { PreCheck: }
    UOneInstance    in '_system\units\UOneInstance.pas',

    { Vcl: } Forms, Windows, SysUtils,  

    { Self: }
    { NotObject: }
    UVars           in '_system\units\UVars.pas',

    { Forms: }
    WMain           in '_system\forms\WMain.pas' {FMain},
    WLauncher       in '_system\forms\WLauncher.pas' {FLauncher},
    WSettings       in '_system\forms\WSettings.pas' {FSettings},

    { Frames: }
    WDownload       in '_system\frames\WDownload.pas', {FDownload: TFrame}

    { Objects: }
    USettings       in '_system\units\USettings.pas',
    UCmdLine        in '_system\units\UCmdLine.pas',
    UGraphic        in '_system\units\UGraphic.pas',

    { Common Functions: }
    ULocalization   in '_system\units\formtools\ULocalization.pas',
    UInstallation   in '_system\units\UInstallation.pas',
    UExceptions     in '_system\units\UExceptions.pas',

    { Libraries }
    UFileSystem     in '_system\utils\UFileSystem.pas',
    USevenZip       in '_system\utils\USevenZip.pas',
    UCrypt          in '_system\units\UCrypt.pas',
    UCRC32          in '_system\utils\UCRC32.pas';

{$else}{$region 'System Units'}
uses
  UOneInstance in '_system\units\UOneInstance.pas',
  Forms,
  Windows,
  Messages,
  Dialogs,
  SysUtils,
  UVars in '_system\units\UVars.pas',
  WMain in '_system\forms\WMain.pas' {FMain},
  WLauncher in '_system\forms\WLauncher.pas' {FLauncher},
  USettings in '_system\units\USettings.pas',
  UCmdLine in '_system\units\UCmdLine.pas',
  UGraphic in '_system\units\UGraphic.pas',
  WSettings in '_system\forms\WSettings.pas' {FSettings},
  ULocalization in '_system\units\formtools\ULocalization.pas',
  UFileSystem in '_system\utils\UFileSystem.pas',
  USevenZip in '_system\utils\USevenZip.pas',
  UInstallation in '_system\units\UInstallation.pas',
  UCrypt in '_system\units\UCrypt.pas',
  UCRC32 in '_system\utils\UCRC32.pas',
  UExceptions in '_system\units\UExceptions.pas',
  WDownload in '_system\frames\WDownload.pas' {FDownload: TFrame};

{$endregion}{$endif}

// Дополнительные PE-флаги для Release-билда
{$ifdef Release}{$I _includes\peflags.inc.pas}{$endif}
// Ресурсы
{$ifndef NoDFM}{$R *.res}{$endif}

var
    CInstanceDataSender: TInstanceDataSender;

begin
    {$ifdef Debug}
        ReportMemoryLeaksOnShutdown := DebugHook <> 0;
    {$endif}

    // Инициализация
    Application.Initialize;

    // Если существует другая копия - передаем все параметры ей, иначе запускаемся
    if (AnotherCopyRunning) then begin
        CInstanceDataSender := TInstanceDataSender.Create;
        try
            if (CInstanceDataSender.CanAccessReceiver)
                then CInstanceDataSender.SendData (Application.Handle)
                else CInstanceDataSender.RestartIfNeed;
        finally
            FreeAndNil (CInstanceDataSender);
        end;

        Application.Terminate;
    end else begin
        // Устанавливаем опции
        Application.MainFormOnTaskbar := false;
        Application.ShowMainForm := false;
        Application.Title := 'InGame';

        // Создаем и прячем главную форму
        Application.CreateForm(TFMain, FMain);
        Windows.ShowWindow (Application.Handle, SW_HIDE);

        // Запуск главного цикла
        Application.Run;
    end;

end.
