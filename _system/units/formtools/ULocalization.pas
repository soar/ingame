unit ULocalization;

interface

uses
    { Self: }   Vars;

type
    TCLangs = (tclRussian = 0, tclEnglish = 1);

    TCLocalization = class (TObject)
    public
        constructor Create (Lang: TCLangs = tclRussian);
    end;

implementation

uses
    { Self: }   WMain, USettings;

resourcestring
    settings_bf2_paramstring = 'test 222 222 222';

{ TCLocalization }

constructor TCLocalization.Create (Lang: TCLangs = tclRussian);
begin
    inherited Create;

end;

end.
