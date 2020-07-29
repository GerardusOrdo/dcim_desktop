unit UserUnit;

interface

uses
  TypeUnit, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Forms, DataDtlForm, ZDataset, ZSqlUpdate, DBCtrls, StdCtrls, Mask,
  ExtCtrls, ActnList, Menus, DB, ZAbstractRODataset, ZAbstractDataset,
  ImgList, Buttons, Grids, DBGrids, AdvToolBtn, AdvObj,
  BaseGrid, ComCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, EhLibVCL, System.Actions,
  System.ImageList;

type
  TfrmDataUser = class(TfrmDataDtl)
    Label1: TLabel;
    lblKode: TLabel;
    lblNama: TLabel;
    edtNama: TDBEdit;
    edtUsername: TDBEdit;
    lblPassword: TLabel;
    udtDaftar: TZUpdateSQL;
    lblLevelAkses: TLabel;
    cbxLevelAkses: TDBLookupComboBox;
    dsUserLevel: TDataSource;
    chkGantiPassword: TCheckBox;
    edtPassword: TEdit;
    qryUserLevel: TZReadOnlyQuery;
    edtKaryawan: TDBEdit;
    lblKaryawan: TLabel;
    chkAktif: TDBCheckBox;
    btnCariKaryawan: TAdvToolButton;
    btnCariUserLevel: TAdvToolButton;
    procedure dsDaftarStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryDaftarAfterPost(DataSet: TDataSet);
    procedure qryDaftarBeforeDelete(DataSet: TDataSet);
    procedure dsDaftarDataChange(Sender: TObject; Field: TField);
    procedure qryDaftarBeforePost(DataSet: TDataSet);
    procedure chkGantiPasswordClick(Sender: TObject);
    procedure btnCariKaryawanClick(Sender: TObject);
    procedure btnCariUserLevelClick(Sender: TObject);
    procedure qryDaftarNewRecord(DataSet: TDataSet);
    procedure qryDaftarBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations } 
  public
    { Public declarations }
  end;

var
  frmDataUser: TfrmDataUser;
procedure ShowDataUser;

implementation

uses ArDBModule, ArComponents, ArFunctions, MenuUtamaUnit, KaryawanUnit,
  BaseForm, UserLevelUnit, Style;

{$R *.dfm}

procedure ShowDataUser;
begin
     if not BolehAkses(mnUser) then
          PesanError('Anda tidak diperkenankan mengakses menu ini');  

     with frmDataUser do
     begin                                                         
          if not IsFormClassActive ('TfrmDataUser', Application) then
          begin
               frmDataUser := TfrmDataUser.Create(Application); 
               ChangeWindowState := wsMaximized;
               FormStyle := fsMDIChild;

               ShowData(qryDaftar, ptFirst);
          end;
          Show;
     end;
end;      

procedure TfrmDataUser.dsDaftarStateChange(Sender: TObject);
var UpdateMode : Boolean;
begin
  inherited;
     if edtUsername.CanFocus and (dsDaftar.State in [dsInsert, dsEdit]) then edtUsername.SetFocus;

     UpdateMode := qryDaftar.State in [dsInsert, dsEdit];
     lblPassword.Visible := UpdateMode;
     edtPassword.Visible := UpdateMode;
     if UpdateMode then edtPassword.Text := '';
     
     chkGantiPassword.Visible := qryDaftar.State in [dsEdit];   
     chkGantiPassword.Checked := qryDaftar.State in [dsInsert];
     chkGantiPasswordClick(chkGantiPassword);
end;

procedure TfrmDataUser.FormCreate(Sender: TObject);
begin
  inherited;
     SetHeader (pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._User.ImageIndex); 
     MenuAkses := mnUser;
     qryUserLevel.Open;
     SetGlyph(btnCariKaryawan, ibFind);
     SetGlyph(btnCariUserLevel, ibFind);
     SetReport (PathReport+'DataUser.fr3', 'UserData');
end;

procedure TfrmDataUser.qryDaftarAfterPost(DataSet: TDataSet);
begin
  inherited;
     with DataSet do
     if FieldByName('iduser').AsInteger = User.IDUser then
     begin
          User.UserName := FieldByName('uname').AsString;    
          User.Nama := FieldByName('nama').AsString;
          User.Password := edtPassword.Text;
          {User := SetUserData (FieldByName('iduser').Value, FieldByName('idlevel').Value
                              ,FieldByName('uname').AsString, FieldByName('pwd').AsString, FieldByName('nama').AsString
                              , FieldByName('hak').AsInteger );
          //frmTravel.SetMenuLogin (True);
          }
     end;
end;

procedure TfrmDataUser.qryDaftarBeforeDelete(DataSet: TDataSet);
begin
     if DataSet.FieldByName('iduser').AsInteger = User.IDUser then
     begin
          Peringatan('User sedang aktif jadi tidak bisa dihapus');
          Abort;
     end;
     if DataSet.FieldByName('iduser').AsInteger = 1 then
     begin
          Peringatan('User Administrator tidak bisa dihapus');
          Abort;
     end;
  inherited; 
end;

procedure TfrmDataUser.dsDaftarDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
     cbxLevelAkses.Enabled := qryDaftar.FieldByName('iduser').AsInteger <> User.IDUser;
     btnCariKaryawan.Enabled := qryDaftar.FieldByName('iduser').AsInteger <> User.IDUser;  
     btnCariUserLevel.Enabled := qryDaftar.FieldByName('iduser').AsInteger <> User.IDUser;
end;

procedure TfrmDataUser.qryDaftarBeforePost(DataSet: TDataSet);
begin
  inherited;
     HarusDiisi(edtUsername,'Username',Trim(edtUsername.Text)='');
     HarusDiisi(edtNama,'Nama Pengguna',Trim(edtNama.Text)='');
     HarusDiisi(cbxLevelAkses,'Nama Level',Trim(cbxLevelAkses.Text)='');

     if (chkGantiPassword.Checked) then
          DataSet.FieldByName('pwd').Value := MD5(edtPassword.Text)
     else if DataSet.FieldByName('iduser').AsInteger = User.IDUser then
          edtPassword.Text := User.Password;

     if DataSet.FieldByName('idkaryawan').AsInteger = 0 then
          DataSet.FieldByName('idkaryawan').Value := null;
end;

procedure TfrmDataUser.chkGantiPasswordClick(Sender: TObject);
begin
  inherited;
     edtPassword.Enabled := chkGantiPassword.Checked;
     if edtPassword.Enabled then
          edtPassword.Color := edtUsername.Color
     else edtPassword.Color := clBtnFace;
end;

procedure TfrmDataUser.btnCariKaryawanClick(Sender: TObject);
var s : string;
begin
  inherited;
     if Sender=btnCariKaryawan then s := edtKaryawan.Text else s := 'NewData';
     
     with ShowCariKaryawan (s) do
     if ID <> null then
     begin                          
          qryDaftar.FieldByName('idkaryawan').Value := ID;
          qryDaftar.FieldByName('namakaryawan').Value := Nama;
     end;
end;

procedure TfrmDataUser.btnCariUserLevelClick(Sender: TObject);
var s : string;
begin
  inherited;
     if Sender=btnCariUserLevel then s := cbxLevelAkses.Text else s := 'NewData';
     
     with ShowCariUserLevel(s) do
     if IDlevel <> null then
     begin
          if not qryUserLevel.Active then qryUserLevel.Open else qryUserLevel.Refresh;
          cbxLevelAkses.KeyValue := IDlevel;
          //qryDaftar.FieldByName('idlevel').Value := ID;
          //qryDaftar.FieldByName('namakaryawan').Value := Nama;
     end;

end;

procedure TfrmDataUser.qryDaftarNewRecord(DataSet: TDataSet);
begin
  inherited;
     DataSet.FieldByName('aktif').Value := 1;
end;

procedure TfrmDataUser.qryDaftarBeforeEdit(DataSet: TDataSet);
begin
  inherited;
     if DataSet.FieldByName('iduser').AsInteger = User.IDUser then
     begin
          Peringatan('User sedang aktif jadi tidak bisa diedit');
          Abort;
     end;
     if DataSet.FieldByName('iduser').AsInteger = 1 then
     begin
          Peringatan('User Administrator tidak bisa diedit');
          Abort;
     end;

end;

end.
