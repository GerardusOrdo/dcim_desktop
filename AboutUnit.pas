unit AboutUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogUnit, StdCtrls, ExtCtrls, Buttons, ShellAPI, ImgList,
  AdvToolBtn;

type
  TfrmAbout = class(TfrmDialog)
    mmoText: TMemo;
    lblAppName: TLabel;
    imgAppIcon: TImage;
    lbl2: TLabel;
    lblUrl: TLabel;
    shp1: TShape;
    procedure btnOKClick(Sender: TObject);
    procedure lblUrlClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbout: TfrmAbout;
procedure ShowAbout;

implementation

//uses MenuUtamaUnit;

{$R *.dfm}    
procedure ShowAbout;
begin
     frmAbout := TfrmAbout.Create(Application);
     frmAbout.ShowModal;
end;

procedure TfrmAbout.btnOKClick(Sender: TObject);
begin
  inherited;
     Close;
end;

procedure TfrmAbout.lblUrlClick(Sender: TObject);
begin
  inherited;
     ShellExecute (Application.Handle, 'open', 'http://google.com/', nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmAbout.FormCreate(Sender: TObject);
begin
  inherited;                  
     //SetHeader (pnlTitle, Caption, frmTravel.ilMain, frmTravel._About.ImageIndex);
     lblAppName.Caption := Application.Title;
     imgAppIcon.Picture.Icon := Application.Icon;
     
     //imgbg.Picture := frmTravel.ImgBg.Picture;
end;

procedure TfrmAbout.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if not AlphaBlend then
     begin
          AlphaBlend := True;
          AlphaBlendValue := 255;
     end;
     while AlphaBlendValue > 0 do
     begin
          AlphaBlendValue := AlphaBlendValue -5;
          sleep (15);
          Application.ProcessMessages;
     end;
  inherited;
end;

end.
