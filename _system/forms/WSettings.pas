unit WSettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sSkinProvider, ComCtrls, sPageControl, StdCtrls, Mask, sMaskEdit, sCustomComboEdit,
  sTooledit, sLabel, ExtCtrls, sPanel, sTreeView, sGroupBox, Buttons, sSpeedButton, acAlphaHints,
  sRadioButton, sEdit, sComboBox, sFileCtrl;

type
    TFSettings = class(TForm)
        sSkinProvider: TsSkinProvider;
        pagesSettings: TsPageControl;
            pageBF2: TsTabSheet;
                labelPageCaption: TsLabelFX;
                grpPaths: TsGroupBox;
                    editBF2Exe: TsFilenameEdit;
                grpParams: TsGroupBox;
                    labelParamsInfo: TsLabel;
                    rbUseCustomParams: TsRadioButton;
                    rbUseSettings: TsRadioButton;
                    editPlayerName: TsEdit;
                    editPlayerPassword: TsEdit;
                    editCustomParams: TsEdit;
            pageCOD4: TsTabSheet;
            pageCS: TsTabSheet;
            pageWOW: TsTabSheet;

        sSpeedButton1: TsSpeedButton;
        sAlphaHints: TsAlphaHints;

        procedure FormCreate(Sender: TObject);
        // Отрисовка иконок и названий на горизонтальных табах
        procedure pagesSettingsDrawTab (Control: TCustomTabControl; TabIndex: Integer; const Rect: TRect; Active: Boolean);
        // Динамическое изменение полей ввода в зависимости от настройки
        procedure settingsChangeParamsMethod(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

implementation

uses
    WMain;

{$R *.dfm}

procedure TFSettings.FormCreate(Sender: TObject);
begin
    sAlphaHints.Templates := FMain.sAlphaHints.Templates;
    sAlphaHints.TemplateName := 'Win7';
end;

// Отрисовка иконок и названий на горизонтальных табах
procedure TFSettings.pagesSettingsDrawTab (Control: TCustomTabControl; TabIndex: Integer; const Rect: TRect; Active: Boolean);
var
    tabCaption: string;
    tabImgIndex: Integer;
    imgCenter: TPoint;
begin
    // Устанавливаем прозрачный фон для кисти
    Control.Canvas.Brush.Style := bsClear;

    // Определяем заголовок таба и его иконку
    with pagesSettings.Pages[TabIndex] do begin
        tabCaption := Caption;
        tabImgIndex := ImageIndex;
    end;

    // Рассчитываем позицию центра иконки на табе
    imgCenter.Y := Rect.Top + ((Rect.Bottom - Rect.Top) div 2);
    imgCenter.X := Rect.Left + ((Rect.Bottom - Rect.Top) div 2);

    // Рисуем иконку и текст
    with FMain.imgGamesIconsX32 do begin
        Draw (Control.Canvas, imgCenter.X - (Width div 2), imgCenter.Y - (Height div 2), tabImgIndex);
        Control.Canvas.TextOut (imgCenter.X + (Width div 2) + 8, imgCenter.Y - (Control.Canvas.TextHeight (tabCaption) div 2), tabCaption);
    end;
end;

// Динамическое изменение полей ввода в зависимости от настройки
procedure TFSettings.settingsChangeParamsMethod (Sender: TObject);
begin
    editCustomParams.Enabled := rbUseCustomParams.Checked;
    editPlayerName.Enabled := rbUseSettings.Checked;
    editPlayerPassword.Enabled := rbUseSettings.Checked;
end;

end.
