unit TransServerEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TransServerMasukUnit, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, DBGridEh, MemTableDataEh, Db,
  ZAbstractDataset, ZDataset, MemTableEh, ZAbstractRODataset, ActnList,
  ExtCtrls, ImgList, AdvDateTimePicker, StdCtrls, ComCtrls, Mask,
  DBCtrlsEh, DBLookupEh, EhLibVCL, GridsEh, DBAxisGridsEh, AdvToolBtn,
  System.Actions, System.ImageList;

type
  TfrmTransServerEditUnit = class(TfrmTransServerMasuk)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure HiddenObject;
  public
    { Public declarations }
  end;

var
  frmTransServerEditUnit: TfrmTransServerEditUnit;
  procedure TransServerEdit(id: Variant; DoOnSaved: TNotifyEvent);

implementation

uses
  TypeUnit, ArComponents, ArFunctions, MenuUtamaUnit, ArDBModule, Strutils,
  BaseForm, DataTipeServer, DataRak, DataPemilik, DataATS, DataPanel, DataListOS;

{$R *.dfm}

{ TfrmTransServerEditUnit }

procedure TransServerEdit(id: Variant; DoOnSaved: TNotifyEvent);
begin
  if not BolehAkses(mnServer) then
    PesanError('Anda tidak diperkenankan mengakses menu ini');

  CloseFormByClass('TfrmTransServerEditUnit', Application, False);

  with TfrmTransServerEditUnit.Create(Application) do
  try
    _OnAfterSaved.OnExecute := DoOnSaved;
    ThisID := id;
    ServerEditModes := True;
    if ThisID = null then
      _OnClearForm.Execute
    else
      _OnLoad.Execute;

    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmTransServerEditUnit.HiddenObject;
begin
  lblNoTiket.Visible := False;
  edtNoTiket.Visible := False;
  lblTglMasukServer.Visible := False;
  dtpTglMasukServer.Visible := False;
  lblNotes.Visible := False;
  mmoNotes.Visible := False;

  lblStatusColo.Top := lblTglEndOfSupport.Top;
  cbbStatusColo.Top := dtpTglEndOfSupport.Top;
  lblTglEndOfSupport.Top := lblTahunPemeliharaan.Top;
  dtpTglEndOfSupport.Top := edtTahunPemeliharaan.Top;
  lblTahunPemeliharaan.Top := lblNoTiket.Top;
  edtTahunPemeliharaan.Top := edtNoTiket.Top;

  //disable control untuk data yg tidak boleh diubah
  btnCariTipeServer.Enabled := False;
end;

procedure TfrmTransServerEditUnit.FormCreate(Sender: TObject);
begin
  inherited;
  HiddenObject;
end;

end.
