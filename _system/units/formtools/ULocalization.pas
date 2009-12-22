unit ULocalization;

interface

uses
    { Self: }   UVars;

type
    TCLangs = (tclRussian, tclEnglish);

    TCLocalization = class (TObject)
    public
        constructor Create (Lang: TCLangs = tclRussian);
    end;

implementation

uses
    { Self: }   WMain, USettings;

{ TCLocalization }

constructor TCLocalization.Create (Lang: TCLangs = tclRussian);
begin
    inherited Create;

end;

end.
