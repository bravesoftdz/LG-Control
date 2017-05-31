{
  LG RS Control
  Autor:  Mi³osz Ziernik
          mziernik@gmail.com

  Do poprawnej kompilacji programu wymagane s¹ komponenty:
  Pakiet JEDI, ComPort
  http://sourceforge.net/projects/jvcl/files/JVCL%203/JVCL%203.39/JVCL339CompleteJCL211-Build3536.zip/download
  http://sourceforge.net/projects/comport/files/comport/4.0beta/TComPort4Beta_Delphi2010.zip/download
}

unit Unit1;

interface

uses
  Windows, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DateUtils, ExtCtrls, StrUtils,
  Buttons, XPMan, JvTrayIcon, Menus, CPort, XMLIntf, XMLDoc,
  msxmldom, JvComponentBase, xmldom;

type
  TfrmMain = class(TForm)
    btnSleep: TButton;
    btnInput: TButton;
    btnBack: TButton;
    btnExit: TButton;
    btnPicture: TButton;
    btnSound: TButton;
    btnAdjust: TButton;
    BtnSAP: TButton;
    btnMenu: TButton;
    btnCC: TButton;
    btnFavorite: TButton;
    btnVolDown: TButton;
    btnVolUp: TButton;
    btnChnlUp: TButton;
    btnChnlDown: TButton;
    btnTV: TButton;
    btnMinus: TButton;
    btnMute: TButton;
    btnF43: TButton;
    btnF169: TButton;
    btnZoom: TButton;
    btnPower: TButton;
    tbVolume: TTrackBar;
    cbbSources: TComboBox;
    button_pnl: TButton;
    btnUp: TSpeedButton;
    btnDown: TSpeedButton;
    btnLeft: TSpeedButton;
    btnRight: TSpeedButton;
    btnOk: TSpeedButton;
    pnlTrackBars: TPanel;
    bbxContrast: TGroupBox;
    tbContrast: TTrackBar;
    GroupBox2: TGroupBox;
    tbBrightness: TTrackBar;
    GroupBox3: TGroupBox;
    tbColor: TTrackBar;
    GroupBox4: TGroupBox;
    tbTint: TTrackBar;
    GroupBox5: TGroupBox;
    tbSharpness: TTrackBar;
    GroupBox6: TGroupBox;
    tbTreble: TTrackBar;
    GroupBox7: TGroupBox;
    tbBass: TTrackBar;
    GroupBox8: TGroupBox;
    tbBalance: TTrackBar;
    tmrSend: TTimer;
    XPManifest1: TXPManifest;
    JvTrayIcon1: TJvTrayIcon;
    pmMain: TPopupMenu;
    PortCOM1: TMenuItem;
    tmrCom: TTimer;
    Identyfikator1: TMenuItem;
    About1: TMenuItem;
    xml: TXMLDocument;
    pnlBottom: TPanel;
    pnlConn: TPanel;
    N1: TMenuItem;
    miClose: TMenuItem;
    N2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure tmrSendTimer(Sender: TObject);
    procedure comRxChar(Sender: TObject; Count: Integer);
    procedure cbbSourcesChange(Sender: TObject);
    procedure tbContrastChange(Sender: TObject);
    procedure btnPowerClick(Sender: TObject);
    procedure miCommandClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvTrayIcon1DblClick(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure button_pnlClick(Sender: TObject);
    procedure PortCOM1Click(Sender: TObject);
    procedure tmrComTimer(Sender: TObject);
    procedure Identyfikator1Click(Sender: TObject);
    procedure tbVolumeChange(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure comAfterOpen(Sender: TObject);
    procedure miCloseClick(Sender: TObject);

  private
    procedure SaveSettings;
    procedure LoadSettings;
    procedure Command(LCmd: string);
    { Private declarations }
  public
    comm : TComPort;
  end;
const

  CAbout =
    'LG RS Control - program do sterowania monitorami/telewizorami' + #13#10 +
    'firmy LG za poœrednictwem interfejsu RS232' + #13#10 + #13#10 +
    'autor: Mi³osz Ziernik' + #13#10 +
    'mziernik@gmail.com' + #13#10 + #13#10 +
    'Do komunikacji stosowany jest typowy krosowany kabel RS232.' + #13#10 +
    '  Wyko¿ystywane s¹ dwie linie: Rxd oraz TxD' + #13#10 +
    'Przed rozpoczêciem nale¿y w telewizorze ustawiæ identyfikator:' + #13#10 +
    '  Menu -> Opcje -> Ustaw ID.' + #13#10 +
    '  Identyczny parametr nale¿y ustawiæ w programie klikaj¹c prawym' + #13#10 +
    '  przyciskiem myszy a nastêpnie wybieraj¹c opcjê "Identyfikator"';

var
  frmMain: TfrmMain;
  ID: Byte;
  cmdTime: TTime;
  CmdQ: string;
  LLL: Integer;
  port: string;
  LFound: Boolean;
  PortNr: Byte;
  comQ, comA: string;
  comRx: string;
  LastSent: TTime;

implementation

{$R *.dfm}

procedure TfrmMain.LoadSettings;
var
  n: Integer;
  s, ss: string;
  bt: TButton;
  tb: TTrackBar;
  nd0, nd1: IXMLNode;
  val: Variant;
  mi: TMenuItem;
  cNode: IXMLNode;

  function Get(Name: string): Boolean;
  begin
    val :=  cNode.Attributes[Name];
    Result := val <> null;
  end;

begin
  try
    xml.LoadFromFile('config.xml');
    xml.Active := True;

    nd0 := xml.ChildNodes.FindNode('Root');
    if nd0 = nil then Exit;

    nd1 := nd0.ChildNodes.FindNode('Sources');
    if nd1 <> nil then
      for n := 0 to nd1.ChildNodes.Count-1 do
      begin
        cNode := nd1.ChildNodes[n];
        if Get('Name') then cbbSources.Items.Add(val);
      end;

    cNode := nd0.ChildNodes.FindNode('Config');
    if cNode <> nil then
      begin
        if Get('Left')    then Left := val;
        if Get('Top')     then Top := val;
        if Get('ID')      then ID := val;
        if Get('Delay')   then tmrSend.Interval := val;
        if Get('COM')     then port := val;
        if Get('Source')  then cbbSources.ItemIndex := val;
      end;

    cNode := nd0.ChildNodes.FindNode('Autodetect');
    if cNode <> nil then
      begin
        if Get('Question') then comQ := val;
        if Get('Answer')   then comA := val;
        if Get('Enabled') then
          if not val then
          begin
            tmrCom.Enabled := False;
            tmrComTimer(nil);
          end;
      end;

    nd1 := nd0.ChildNodes.FindNode('Custom');
    if nd1 <> nil then
      for n := 0 to nd1.ChildNodes.Count-1 do
      begin
        cNode := nd1.ChildNodes[n];

        if Get('Name') and Get('Code') then
        begin
          mi := TMenuItem.Create(nil);
          pmMain.Items.Add(mi);
          Get('Name');
          mi.Caption := val;
          Get('Code');
          s := AnsiReplaceStr(val, '%ID', IntToStr(ID));
          mi.Hint := s;
          mi.OnClick := miCommandClick;
        end;
      end;

    comQ := AnsiReplaceStr(comQ, '%ID', IntToStr(ID));
    comA := AnsiReplaceStr(comA, '%ID', IntToStr(ID));

    for n := 0 to ComponentCount-1 do
      if (Components[n] is TButton) or (Components[n] is TSpeedButton) then
      try
        bt := TButton(Components[n]);
        ss := Copy(bt.Name, 4, Length(bt.Name)-3);

        cNode := nd0.ChildNodes.FindNode('Buttons');
        if cNode = nil then Continue;
        cNode := cNode.ChildNodes.FindNode(ss);
        if cNode = nil then Continue;

        if Get('Code') then  s := val;
        bt.Enabled := True;
        s := AnsiReplaceStr(s, '%ID', IntToStr(ID));
        if s <> '' then bt.Hint := s;

        if Get('Name') then bt.Caption := val;
      except
      end
      else
      if Components[n] is TTrackBar then
      try
        tb := TTrackBar(Components[n]);
        ss := Copy(tb.Name, 3, Length(tb.Name)-2);

        cNode := nd0.ChildNodes.FindNode('TrackBars');
        if cNode = nil then Continue;
        cNode := cNode.ChildNodes.FindNode(ss);
        if cNode = nil then Continue;

        if not Get('Code') then Continue;
        s := val;
        s := AnsiReplaceStr(s, '%ID', IntToStr(ID));
        tb.Hint := s;

        if Get('Min') then tb.Min := Val;
        if Get('Max') then tb.Max := Val;
        if Get('Position') then tb.Position := Val;
        tb.Enabled := True;
        if tb.Parent is TGroupBox then
        if Get('Name') then
        begin
          TGroupBox(tb.Parent).Caption := ' ' + val + ' ';
          TGroupBox(tb.Parent).Enabled := True;
        end;
      except
      end;
  finally
    N2.MenuIndex := pmMain.Items.Count-1;
    miClose.MenuIndex := pmMain.Items.Count-1;
  end;

end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  comm := TComPort.Create(nil);
  comm.OnAfterOpen := comAfterOpen;
  comm.OnRxChar := comRxChar;
  ClientWidth := pnlTrackBars.Left;
  PortNr := 1;
  LoadSettings;
  LLL := Width + Left;
end;

procedure TfrmMain.tmrSendTimer(Sender: TObject);
begin
  if CmdQ <> '' then
  try
    try
      tmrSend.Enabled := False;
      if not comm.Connected then
      begin
        pnlConn.Caption := '';
        pnlConn.Color := clRed;
        Exit;
      end;
      comRx := '';
      pnlConn.Color := clGreen;
      comm.WriteStr(CmdQ + #10);
      pnlBottom.Caption := CmdQ;
      pnlBottom.Tag := 101;
      LastSent := now;
    except
      on e: Exception do
      begin
        pnlBottom.Caption := e.Message;
        pnlConn.Color := clRed;
      end;
    end;
  finally
    CmdQ := '';
    tmrSend.Enabled := True;
  end;
end;

procedure TfrmMain.comRxChar(Sender: TObject; Count: Integer);
var
  s: string;
begin
  s := '';
  comm.ReadStr(s, Count);
  comRx := comRx + s;

  if ((Pos('OK', comRx) > 0) and (Pos('x', comRx) > 0))
    or ( Pos(comA, Trim(comRx)) > 0)
  then  pnlConn.Color := clLime;

  if Pos(#0, comRx) > 0 then comRx := '';
  if Pos(#10, comRx) > 0 then comRx := '';
  if Pos(#10, comRx) > 0 then comRx := '';

  if pnlBottom.Tag = 101 then pnlBottom.Caption :=
    pnlBottom.Caption + ' --> ';
  pnlBottom.Caption := pnlBottom.Caption + s;
  pnlBottom.Tag := 0;
end;

procedure TfrmMain.Command(LCmd: string);
begin
  CmdQ := AnsiReplaceStr(LCmd, '%ID', IntToStr(ID));
  if MilliSecondsBetween(Now, LastSent) > tmrSend.Interval then tmrSendTimer(nil);
end;

procedure TfrmMain.cbbSourcesChange(Sender: TObject);
var
  n: Integer;
  nd: IXMLNode;
begin
  nd := xml.ChildNodes.FindNode('Root');
  if nd = nil then Exit;
  nd := nd.ChildNodes.FindNode('Sources');
  if nd = nil then Exit;

  for n := 0 to nd.ChildNodes.Count-1 do
    if nd.ChildNodes[n].Attributes['Name'] = cbbSources.Text then
      if nd.ChildNodes[n].Attributes['Code'] <> null then
        Command(nd.ChildNodes[n].Attributes['Code']);
end;

procedure TfrmMain.tbContrastChange(Sender: TObject);
begin
  Command(Format(TTrackBar(Sender).Hint, [IntToHex(TTrackBar(Sender).Position, 2)]));
end;

procedure TfrmMain.btnPowerClick(Sender: TObject);
begin
  Command(TButton(Sender).Hint);
end;

procedure TfrmMain.SaveSettings;
var
  n: Integer;
  nd0, nd1, nd2: IXMLNode;
  s: string;
begin
  nd0 := xml.ChildNodes.FindNode('Root');
  if nd0 = nil then nd0 := xml.AddChild('Root');

  nd1 := nd0.ChildNodes.FindNode('Config');
  if nd1 = nil then nd1 := nd0.AddChild('Config');

  with nd1 do
  begin
    Attributes['Left'] := Left;
    Attributes['Top'] := Top;
    Attributes['ID'] := ID;
    Attributes['COM'] := comm.Port;
    Attributes['Source'] := cbbSources.ItemIndex;
  end;

  nd1 := nd0.ChildNodes.FindNode('TrackBars');
  if nd1 = nil then nd1 := nd0.AddChild('TrackBars');

  for n := 0 to ComponentCount-1 do
    if Components[n] is TTrackBar then
    begin
      s := Copy(TTrackBar(Components[n]).Name,
        3, Length(TTrackBar(Components[n]).Name)-2);
      nd2 := nd1.ChildNodes.FindNode(s);
      if nd2 = nil then nd2.AddChild(s);
      nd2.Attributes['Position'] := TTrackBar(Components[n]).Position;
    end;
  xml.SaveToFile('config.xml');
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    SaveSettings;
  except

  end;
end;

procedure TfrmMain.JvTrayIcon1DblClick(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Visible := not Visible;
end;

procedure TfrmMain.button_pnlClick(Sender: TObject);
begin
  LLL := -1;
  if Left + Width div 2 > Screen.Width div 2 then
    LLL := Screen.Width - Width - Left;
  pnlTrackBars.Visible := not pnlTrackBars.Visible;
  if pnlTrackBars.Visible then
  begin
    button_pnl.Caption := '<<<<<';
    ClientWidth := pnlTrackBars.Left + pnlTrackBars.Width;
  end
  else
  begin
    button_pnl.Caption := '>>>>>';
    ClientWidth := pnlTrackBars.Left;
  end;

  if LLL <> -1 then
    Self.Left := Screen.Width - Width - LLL;
end;

procedure TfrmMain.PortCOM1Click(Sender: TObject);
begin
  try
    pnlConn.Color := clBtnFace;
    comm.ShowSetupDialog;
    pnlConn.Caption := comm.Port;
    Application.ProcessMessages;
    comm.Open;
    Sleep(10);
    Command(comQ);
  except
    on e: Exception do
    begin
      pnlBottom.Caption := e.Message;
      pnlConn.Color := clRed;
    end;
  end;
end;

procedure TfrmMain.tmrComTimer(Sender: TObject);
begin
  tmrCom.Enabled := False;
  try
    comm.Port := port;
    comm.Open;
    Command(comQ);
  except
    on e: Exception do
    begin
      pnlBottom.Caption := e.Message;
      pnlConn.Color := clRed;
    end;
  end;
end;

procedure TfrmMain.Identyfikator1Click(Sender: TObject);
var
  s: string;
  v: Integer;
begin
  s := IntToStr(ID);
  s := InputBox('Identyfikator telewizora', 'Wartoœæ z zakresu 0..99', s);
  s := Trim(s);
  if s = '' then Exit;
  if s = IntToStr(ID) then Exit;

  if (not TryStrToInt(s, v)) or (v < 0) or (v > 99) then
    raise Exception.Create('Nieprawid³owa wartoœæ identyfikatora')
  else
  begin
    ID := v;
    SaveSettings;
    LoadSettings;
  end;
end;

procedure TfrmMain.tbVolumeChange(Sender: TObject);
begin
  Command(Format(TTrackBar(Sender).Hint,
    [IntToHex(tbVolume.Max-tbVolume.Position, 2)]));
end;

procedure TfrmMain.About1Click(Sender: TObject);
begin
  MessageBox(Handle, CAbout, 'About', MB_ICONINFORMATION);
end;

procedure TfrmMain.comAfterOpen(Sender: TObject);
begin
  pnlConn.Caption := comm.Port;
  pnlConn.Color := clGreen;
end;

procedure TfrmMain.miCommandClick(Sender: TObject);
begin
  Command(TMenuItem(Sender).Hint);
end;

procedure TfrmMain.miCloseClick(Sender: TObject);
begin
  Close;
end;

end.
