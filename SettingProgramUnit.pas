  unit SettingProgramUnit;

interface

uses
  TypeUnit, Windows, Messages, SysUtils, Variants, Classes,
  Graphics, Controls, Forms, Dialogs, DialogUnit, StdCtrls, Buttons, Spin,
  ComCtrls, ExtCtrls, ImgList, JPEG, ExtDlgs, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, AdvCombo, AdvToolBtn,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, System.ImageList;


type
  TfrmSettingProgram = class(TfrmDialog)
    btnOptimasi: TBitBtn;
    btnBackup: TBitBtn;
    btnRestore: TBitBtn;
    pgcSetting: TPageControl;
    tsPerusahaan: TTabSheet;
    lblAlamat: TLabel;
    lblTelp: TLabel;
    lblFax: TLabel;
    lblDaerah: TLabel;
    edtTelpKantor: TEdit;
    edtFaxKantor: TEdit;
    mmoAlamatKantor: TMemo;
    edtNamaKantor: TEdit;
    pnlLogo: TPanel;
    imgLogo: TImage;
    lblLogo: TLabel;
    odlgLogo: TOpenPictureDialog;
    tsNota: TTabSheet;
    qryNota: TZQuery;
    dsNota: TDataSource;
    dbgNota: TDBGridEh;
    btnHapusFoto: TAdvToolButton;
    tsStyle: TTabSheet;
    lbl1: TLabel;
    cbbWarnaMenuUtama: TAdvComboBox;
    cbbWarnaBase: TAdvComboBox;
    lbl2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure btnDaftarClick(Sender: TObject);
    procedure btnUpdateNowClick(Sender: TObject);
    procedure btnSinkronisasiUlangClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure imgLogoClick(Sender: TObject);
    procedure btnHapusFotoClick(Sender: TObject);
  protected
    procedure GetCompany;
    procedure SetCompany;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSettingProgram: TfrmSettingProgram;
procedure ShowSettingProgram;

implementation

uses ArDBModule, ArFunctions, ArComponents, MenuUtamaUnit, BaseForm,
  IniFiles, Style;

{$R *.dfm}

procedure ShowSettingProgram;
begin                      
     if not BolehAkses(mnSetting) then
          PesanError('Anda tidak diperkenankan mengakses menu ini');
          
     frmSettingProgram := TfrmSettingProgram.Create(Application);
     frmSettingProgram.ShowModal;
end;

procedure TfrmSettingProgram.GetCompany;
var JPG : TJPEGImage;
begin                                  
     edtNamaKantor.Text  := __Company[cpNama];
     mmoAlamatKantor.Text:= __Company[cpAlamat];
     edtTelpKantor.Text  := __Company[cpTelp];
     edtFaxKantor.Text   := __Company[cpFax];       
     //dtpTglLahir.Date  := StrToFloatDef(__Pejabat[pjTglLahir], now);

     if Assigned(__Logo) then
     try                           
          __Logo.Position := 0;
          JPG := TJPEGImage.Create;
          JPG.LoadFromStream(__Logo);
          imgLogo.Picture.Assign(JPG);
     finally
          FreeAndNil(JPG);
     end;
end;

procedure TfrmSettingProgram.SetCompany;
begin
     __Company[cpNama]   := edtNamaKantor.Text;
     __Company[cpAlamat] := mmoAlamatKantor.Text;
     __Company[cpTelp]   := edtTelpKantor.Text;
     __Company[cpFax]    := edtFaxKantor.Text;

     if not Assigned(imgLogo.Picture.Graphic) then FreeAndNil(__Logo)
     else begin
          if Assigned (__Logo) then __Logo := nil;
          if not Assigned(__Logo) then __Logo := TMemoryStream.Create;
          imgLogo.Picture.Graphic.SaveToStream(__Logo);
     end;
     //__Pejabat[pjTglLahir]    := FloatToStr(dtpTglLahir.Date);
end;


procedure TfrmSettingProgram.FormShow(Sender: TObject);
begin
  inherited;     
     pgcSetting.ActivePageIndex := 0;

     LoadSettings;
     GetCompany;
end;

procedure TfrmSettingProgram.btnOKClick(Sender: TObject);
begin
  inherited;
     HarusDiisi(edtNamaKantor,'Nama perusahaan', (trim(edtNamaKantor.Text)=''));
     HarusDiisi(mmoAlamatKantor,'Alamat Kantor', (trim(mmoAlamatKantor.Text)=''));
    
     try        
          Screen.Cursor := crHourGlass;
          btnOK.Enabled := False;
          try
               SetCompany;
               SaveSettings;

               WarnaMenuUtamaTerpilih := NThemeStyle(cbbWarnaMenuUtama.ItemIndex);
               WarnaBaseTerpilih      := NThemeStyle(cbbWarnaBase.ItemIndex);
               SaveStyleSetting;
               frmMenuUtama.LoadMenuUtamaDisplayColor(WarnaMenuUtamaTerpilih);

               ModalResult := mrOk;
          except
               on e : Exception do
               begin
                    ModalResult := mrNone;
                    DoHandleException(Self, e);
               end;
          end;
     finally
          btnOK.Enabled := True;
          Screen.Cursor := crDefault;
     end;
end;

procedure TfrmSettingProgram.btnLoginClick(Sender: TObject);
begin
  inherited; {
     //online
     HarusDiisi (edtUsername, 'Username', edtUsername.Text = '');
     HarusDiisi (edtPassword, 'Password', edtPassword.Text = '');
     if Pos ('@', edtUsername.Text)=0 then
     begin
          edtUsername.Parent.Show; edtUsername.SetFocus;
          Peringatan('Username harus berupa alamat email');
          Abort;
     end;
     if (Online.Trying) then
          Informasi ('Sedang mencoba terkoneksi ke server')
     else
     try
          Screen.Cursor := crHourGlass;
          TBitBtn(Sender).Enabled := False;
          TBitBtn(Sender).Caption := 'Sedang login';

          TryGetOnlineUserID(edtUsername.Text, edtPassword.Text);
          while (Online.Processing) do Application.ProcessMessages;

          edtUsername.Tag := Online.UserID;
          if (edtUsername.Tag <> 0) then
          begin
               Informasi('User berhasil login');
          end else Peringatan('User gagal login.');
     finally
          TBitBtn(Sender).Enabled := True;
          TBitBtn(Sender).Caption := 'Login';
          Screen.Cursor := crDefault;
     end;    }
end;

procedure TfrmSettingProgram.btnDaftarClick(Sender: TObject);
begin
  inherited; {
     //online
     HarusDiisi (edtUsername, 'Username', edtUsername.Text = '');
     HarusDiisi (edtPassword, 'Password', edtPassword.Text = '');  
     HarusDiisi (edtNamaOL, 'Nama', edtNamaOL.Text = '');
     if Pos ('@', edtUsername.Text)=0 then
     begin
          edtUsername.Parent.Show; edtUsername.SetFocus;
          Peringatan('Username harus berupa alamat email');
          Abort;
     end;
     if (Online.Trying) then
          Informasi ('Sedang mencoba terkoneksi ke server')
     else
     try
          Screen.Cursor := crHourGlass;
          TBitBtn(Sender).Enabled := False;
          TBitBtn(Sender).Caption := 'Sedang Buat';

          TryCreateNewUser(edtUsername.Text, edtPassword.Text, edtNamaOL.Text);
          repeat
               Application.ProcessMessages;
          until not Online.Processing;

          edtUsername.Tag := Online.UserID;
          if (edtUsername.Tag <> 0) then
          begin
               Online.LastTry := 0;
               SaveSetForOnline;
               Informasi('User berhasil dibuat');
          end else Peringatan('User gagal dibuat.');
     finally
          TBitBtn(Sender).Enabled := True;
          TBitBtn(Sender).Caption := 'Buat Baru';
          Screen.Cursor := crDefault;
     end;    }
end;

procedure TfrmSettingProgram.btnUpdateNowClick(Sender: TObject);
begin
  inherited;  {
     //online
     if (not Online.Trying) then Online.NextTry := AddSeconds(Now, -60);
     if (ArDB.ServerTime > Online.NextTry) and (not Online.Trying) then
     try
          TBitBtn(Sender).Enabled := false;
          TryUpdateData;
          Sleep(500);
     finally                            
          TBitBtn(Sender).Enabled := True;
     end else
          Informasi ('Proses update data sedang berjalan'); }
end;

procedure TfrmSettingProgram.btnSinkronisasiUlangClick(Sender: TObject);
begin
  inherited;     {
     //online
     if (not Online.Trying) then Online.NextTry := AddSeconds(Now, -60);
     if (ArDB.ServerTime > Online.NextTry)and (not Online.Trying) then 
     try
          TBitBtn(Sender).Enabled := false;   
          Online.LastTry := 0; SaveSetForOnline;
          TryUpdateData (true);
          Sleep(500);
     finally                            
          TBitBtn(Sender).Enabled := True;
     end else
     Informasi ('Proses sinkronisasi data sedang berjalan');     }
end;

procedure TfrmSettingProgram.FormCreate(Sender: TObject);
begin
  inherited;
     SetHeader (pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._Setting.ImageIndex);
     SetGlyph(btnHapusFoto, ibClear);
     FillSettingNota;
     qryNota.Open;
     cbbWarnaMenuUtama.ItemIndex := Integer(WarnaMenuUtamaTerpilih);
     cbbWarnaBase.ItemIndex := Integer(WarnaBaseTerpilih);;

     tsNota.TabVisible := False;
end;

procedure TfrmSettingProgram.imgLogoClick(Sender: TObject);
begin
  inherited;
     if odlgLogo.execute then
          imgLogo.Picture.LoadFromFile(odlgLogo.FileName);
end;

procedure TfrmSettingProgram.btnHapusFotoClick(Sender: TObject);
begin
  inherited;
     imgLogo.Picture := nil;
end;

end.
