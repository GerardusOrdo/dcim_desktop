unit LoginUnit;

interface

uses
  TypeUnit, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Forms, Dialogs, DialogUnit, Menus, StdCtrls, ExtCtrls, Buttons,
  ImgList, frxpngimage, AdvToolBtn, DateUtils, IniFiles;

type
  TfrmLogin = class(TfrmDialog)
    edtPassword: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    edtUsername: TEdit;
    lbl3: TLabel;
    procedure btnOKClick(Sender: TObject);
    procedure edtPasswordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;
function ShowLogin:Boolean;

implementation

uses MenuUtamaUnit, ArFunctions, ArDBModule, TypInfo, Style, BaseForm;

{$R *.dfm}

function ShowLogin:Boolean;
begin
  if not Assigned(Application.FindComponent('frmLogin')) then
      frmLogin := TfrmLogin.Create(Application);

  Result := frmLogin.ShowModal = mrOk;
end;

procedure TfrmLogin.btnOKClick(Sender: TObject);
var h : THak; n : NMenu; a : NHakAction; f : string;
begin
  inherited;
     with Query(' select u.*, h.* from user u '+
               ' left join user_hakakses h on h.idlevel=u.idlevel '+
               ' where u.aktif =1  '+ //and h.status=1                  
               '     and u.uname = '+QuotedStr(edtUsername.Text) +
               '     and u.pwd=md5('+QuotedStr(edtPassword.Text)+')') do
     try
          First;
          if Eof then
          begin         
               edtUsername.SetFocus;
               PesanError ('Username atau password login salah');
          end
          else {if FieldByName('pwd').AsString <> edtPassword.Text then
          begin
               edtpassword.SetFocus;
               PesanError ('Password salah!');
          end else    }
          begin
               ClearHak(h);
               while not Eof do
               begin
                    if FieldByName('idmenu').asinteger > Integer(High(NMenu)) then break;
                    n := NMenu(FieldByName('idmenu').asinteger);
                    for a := Low(NHakAction) to High(NHakAction) do
                    begin          
                         f := GetEnumName(TypeInfo(NHakAction), Integer(a));
                         f := Copy (f, 3, Length(f));

                         if FieldByName(f).AsInteger = 1 then
                              h[n] := h[n] + [a];
                    end;

                    Next;
               end;

               User := SetUserData (FieldByName('iduser').AsInteger, FieldByName('idlevel').AsInteger
                                   , FieldByName('idkaryawan').AsInteger
                                   , FieldByName('uname').AsString, edtPassword.Text
                                   , FieldByName('nama').AsString, h);
               ModalResult := mrOk;
          end;
     finally
          Close;Free;
          //if Assigned(Qtmp) then FreeAndNil(Qtmp);
     end;
end;

procedure TfrmLogin.edtPasswordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = vk_return) then btnOK.Click;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  inherited;
  Color := WarnaThemeBase(icBaseFormColor);
  pnlData.Color   := Color;
  pnlButton.Color := Color;

  lbl1.Font.Color := CLR_WHITE;
  lbl2.Font.Color := CLR_WHITE;
  lbl3.Font.Color := CLR_WHITE;
end;

procedure TfrmLogin.FormActivate(Sender: TObject);
var
  PosisiKiri, Pos : Integer;
begin
  inherited;
  pnlData.Align := alCustom;
  pnlButton.Align := alCustom;
  PosisiKiri := 500;
  Pos := 500;

  pnlData.Left := pnlData.Left + PosisiKiri;
  pnlButton.Left := pnlButton.Left + Pos;

  Anim_Slide(pnlData, QuintEaseOut, Horizontal, 600, -PosisiKiri);
  Anim_Slide(pnlButton, QuintEaseOut, Horizontal, 600, -Pos);

  pnlButton.Align := alBottom;
  pnlData.Align := alClient;
end;

end.
