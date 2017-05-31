program LG_Control;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'LG RS Control';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
