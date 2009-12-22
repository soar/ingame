unit WDownload;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, ExtCtrls, StdCtrls, PNGImage, ComCtrls, sTabControl, sFrameAdapter, sGauge, sLabel;

type
    TFDownload = class (TFrame)
        imgFileTypeIcon: TImage;
        sgDownloadProgress: TsGauge;
        sFrameAdapter: TsFrameAdapter;
        lblUpdateName: TsLabelFX;
        imgState: TImage;
    private
        { Private declarations }
    public
        constructor Create(AOwner: TComponent); override;
    end;

implementation

{$R *.dfm}

uses
    WMain;

{ TFDownload }

constructor TFDownload.Create (AOwner: TComponent);
var
    PNGImage: TPngImage;
begin
    inherited Create (AOwner);

    // Загружаем картинку
    // TODO: Сделать зависимость картинки от типа загружаемого файла
    PNGImage := TPngImage.Create;
    try
        PNGImage.LoadFromResourceName (ResLibrary, 'icon_x48_box');
        imgFileTypeIcon.Picture.Assign (PNGImage);
    finally
        FreeAndNil (PNGImage);
    end;
end;

end.
