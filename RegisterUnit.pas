unit RegisterUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;//, regware4;
 
type             
  NStatusRegistrasi = (srFree, srTrial, srExpired, srRegistered);
  NSetOfStatusRegistrasi = set of NStatusRegistrasi;
  TfrmRegister = class(TForm)
    pnlTop: TPanel;
    pnlBottom: TPanel;
    pnlContent: TPanel;
    btnRegister: TBitBtn;
    btnTrial: TBitBtn;
    lbl1: TLabel;
    edtLisensiID: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    edtPerusahaan: TEdit;
    edtEmail: TEdit;
    edtKodeReg: TEdit;
    lbl4: TLabel;
    lblPercobaan: TLabel;
    lblTinggal: TLabel;
    btnTutup: TBitBtn;
    lblStatus: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRegisterClick(Sender: TObject);
    procedure btnTrialClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    isTerminated : Boolean;
    procedure ShowStatus;
  public
    { Public declarations }
  end;
  
const DefLicenceID = 'PT Global Eushanosoft';
var
  frmRegister: TfrmRegister;
  //MyReg : TRegware4;
  
procedure ShowRegister (iShow:Boolean=False);    
function StatusRegistrasi:NStatusRegistrasi;

function HanyaUntuk (Only: NSetOfStatusRegistrasi):Boolean;
function TidakUntuk (Restricted : NSetOfStatusRegistrasi):Boolean;
procedure CekHanyaUntuk (Only: NSetOfStatusRegistrasi);
procedure CekTidakUntuk (Restricted : NSetOfStatusRegistrasi);
implementation

uses ArFunctions, TypeUnit, Style;

{$R *.dfm}
const
     TeksRegistrasi : array [srFree..srRegistered] of string
                    = ('Free Version', 'Trial Version', 'Expired', 'Registered Version');

procedure ShowRegister (iShow:Boolean=False);
begin
     if not Assigned(Application.FindComponent('frmRegister')) then
          frmRegister := TfrmRegister.Create(Application);
     
     {with frmRegister, MyReg do
     begin
          Reload;
          if (not Registered)or(iShow) then ShowModal;
     end;}
end;

function StatusRegistrasi:NStatusRegistrasi;
begin
     if not Assigned(Application.FindComponent('frmRegister')) then
          frmRegister := TfrmRegister.Create(Application);

     {with MyReg do
     begin
          Reload;
          if Registered then Result := srRegistered
          else if Expired then Result := srExpired
          else Result := srTrial;
     end;}
end;        

function HanyaUntuk (Only:NSetOfStatusRegistrasi):Boolean;
begin
     Result := (StatusRegistrasi in Only);
end;

function TidakUntuk (Restricted: NSetOfStatusRegistrasi):Boolean;
begin
     Result := (StatusRegistrasi in Restricted);
end;

procedure CekHanyaUntuk (Only: NSetOfStatusRegistrasi);
var s : string;
     iKode : NStatusRegistrasi;
begin
     s := '';
     for iKode := Low(TeksRegistrasi) to High(TeksRegistrasi) do
     if iKode in Only then
     begin
          if s <> '' then s := s+', '; s := s +TeksRegistrasi[iKode];
     end;

     if not HanyaUntuk (Only) then
     begin
          Informasi ('Fitur ini hanya tersedia untuk ['+s+']');
          Abort;
     end;
end;

procedure CekTidakUntuk (Restricted : NSetOfStatusRegistrasi);
var s : string;     
     iKode : NStatusRegistrasi;
begin
     s := '';    
     for iKode := Low(TeksRegistrasi) to High(TeksRegistrasi) do
     if iKode in Restricted then
     begin
          if s <> '' then s := s+', '; s := s +TeksRegistrasi[iKode];
     end;

     if TidakUntuk (Restricted) then
     begin
          Informasi ('Fitur ini tidak tersedia untuk ['+s+']');
          Abort;
     end;
end;

procedure TfrmRegister.ShowStatus;
begin                          
     lblPercobaan.Visible := False;
     lblTinggal.Visible := False;
     {MyReg.Reload;
     if MyReg.Registered then
     begin
          isTerminated := False;
          pnlTop.Caption      := 'Registered Version';
          lblStatus.Caption   := 'Software Anda sudah diregistrasi. '+#13#10+
                                 'Terima kasih, Anda sedang menggunakan software yang diregistrasi'#13#10+
                                 'PT Global Eushanosoft (0274-388408)';
          edtLisensiID.Text        := MyReg.LicenseID;
          edtPerusahaan.Text       := MyReg.Organization;
          edtEmail.Text            := MyReg.Email;
          edtKodeReg.Text          := '1111111111111111111111';//MyReg.RegCode;
          edtKodeReg.PasswordChar  := '#';
          edtLisensiID.ReadOnly    := True;
          edtPerusahaan.ReadOnly   := True;
          edtEmail.ReadOnly        := True;
          edtKodeReg.ReadOnly      := True;

          btnTrial.Visible := False;
          btnRegister.Caption := 'OK';
          btnRegister.Enabled := True;
          OnClose := nil;
     end else
     begin
          if MyReg.Expired then
          begin
               isTerminated := StatusRegistrasi <> srFree;
               pnlTop.Caption      := 'Expired';
               lblStatus.Caption   := 'Software Anda belum diregistrasi.'+#13#10+
                                      'Silakan masukkan kode registrasi software ini,'#13#10+
                                      'atau hubungi PT Global Eushanosoft (0274-388408)';
               lblTinggal.Caption := 'Expired';
               lblTinggal.Visible := True;
               btnTrial.Caption := 'Tutup';
               btnTrial.Visible := false;
               btnTutup.Visible := True;
          end
          else
          begin
               isTerminated := False;
               pnlTop.Caption      := 'Trial Version';
               lblStatus.Caption   := 'Software Anda belum diregistrasi.'+#13#10+
                                      'Silakan masukkan kode registrasi software ini,'#13#10+
                                      'atau hubungi PT Global Eushanosoft (0274-443 8899)';
               lblPercobaan.Caption := 'Masa percobaan selama '+IntToStr(MyReg.Days)+' hari tinggal ';
               lblPercobaan.Visible := True;
               lblTinggal.Caption := IntToStr(MyReg.DaysLeft)+' hari';
               lblTinggal.Visible := True;

               OnClose := nil;
          end;

          case StatusRegistrasi of
          srFree : pnlTop.Caption      := 'FREE Version';
          srRegistered : pnlTop.Caption:= 'Registered Version';
          srExpired : pnlTop.Caption   := Trim(pnlTop.Caption+' Expired');
          else pnlTop.Caption := 'Trial Version';
          end;

          if MyReg.LicenseID = '' then
               edtLisensiID.Text := DefLicenceID
          else edtLisensiID.Text := MyReg.LicenseID;
          //edtLisensiID.Enabled := RI.ID = '';

          edtPerusahaan.Text := '';
          edtEmail.Text := '';
          edtKodeReg.Text := '';
     end;}
end;

procedure TfrmRegister.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if not isTerminated then Action := caHide else
     //     Application.MainForm.Close
     //else
     begin
          Application.Terminate;
          Abort;
     end;
end;

procedure TfrmRegister.btnRegisterClick(Sender: TObject);
begin
     {if MyReg.Registered then Close else
     try
          Screen.Cursor := crHourGlass;
          btnRegister.Enabled := false;
          if MyReg.DoRegistration(edtLisensiID.Text, edtPerusahaan.Text, edtKodeReg.Text, edtEmail.Text) then
          begin
               MessageBox (Handle,PChar('Registrasi berhasil'), PChar('Informasi'), MB_OK + MB_ICONINFORMATION);
               Close;
               //Application.Terminate;
          end else
          begin
               MessageBox (Handle,PChar('Registrasi gagal'), PChar('Peringatan'), MB_OK + MB_ICONWARNING);
               btnRegister.Enabled := True;
          end;    
          ShowStatus;
     finally 
          Screen.Cursor := crDefault;
     end;}
end;

procedure TfrmRegister.btnTrialClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmRegister.FormShow(Sender: TObject);
begin
     ShowStatus;
     frmRegister.Color  := CLR_WHITE;
     pnlBottom.Color    := BASE_COLOR;
end;

procedure TfrmRegister.FormCreate(Sender: TObject);
begin
     isTerminated := False;
end;

end.
