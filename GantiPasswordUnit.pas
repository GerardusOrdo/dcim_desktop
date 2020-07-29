unit GantiPasswordUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogUnit, ZDataset, StdCtrls, Buttons, ExtCtrls, ImgList,
  AdvToolBtn;

type
  TfrmGantiPassword = class(TfrmDialog)
    edtPwdBaru: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    edtPwdLama: TEdit;
    edtRePwd: TEdit;
    lblUlangi: TLabel;
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGantiPassword: TfrmGantiPassword;
function ShowGantiPassword:Boolean;

implementation

uses TypeUnit, ArDBModule, ArFunctions, MenuUtamaUnit;

{$R *.dfm}
                             
function ShowGantiPassword:Boolean;
begin
     frmGantiPassword := TfrmGantiPassword.Create(Application);
     Result := frmGantiPassword.ShowModal = mrOk;
end;

procedure TfrmGantiPassword.btnOKClick(Sender: TObject);
begin
  inherited;
     if User.Password <> edtPwdLama.Text then
     begin
          Peringatan('Password lama salah');
          edtPwdLama.SetFocus;
          Abort;
     end;

     if edtPwdBaru.Text <> edtRePwd.Text then
     begin
          Peringatan('Password baru tidak sama');
          edtPwdBaru.SetFocus;
          Abort;
     end;

     try
          ExecQuery(' update `user` set pwd=md5('+QuotedStr(edtPwdBaru.Text)+') '+
                    ' where iduser = '+IntToStr(User.IDUser));
          User.Password := edtPwdBaru.Text;
          Informasi ('Password berhasil diganti');
          ModalResult := mrOK;
     except
          on e : Exception do
          begin
               ModalResult := mrNone;
               DoHandleException(Self, e);
          end;
     end;
end;

procedure TfrmGantiPassword.FormCreate(Sender: TObject);
begin
  inherited;
     SetHeader(frmMenuUtama._GantiPassword);
     //SetHeader (pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._GantiPassword.ImageIndex);
end;

end.
