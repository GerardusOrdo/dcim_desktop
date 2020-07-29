unit DataMCBLegrand;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataDtlForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, ActnList, Menus, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ExtCtrls, ImgList, StdCtrls, Buttons, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, ComCtrls, AdvToolBtn, Mask, DBCtrls, Types, TypeTrans,
  ZSqlUpdate;

type
  TDataMCBLegrand = record
    id_mcblegrand : Variant;
    id_panel  : Variant;
    panel_name: string;
    rak_name: string;
    mcb_name  : String;
    legrand_name  : String;
    beban_max : String;
    jenisphase : string;
  end;
  TfrmDataMCBLegrand = class(TfrmDataDtl)
    udtDaftar: TZUpdateSQL;
    btnCariPanel: TAdvToolButton;
    lblMCB: TLabel;
    edtMCB: TDBEdit;
    lblLegrand: TLabel;
    edtLegrand: TDBEdit;
    lblPanel: TLabel;
    edtPanel: TDBEdit;
    btnCariRak: TAdvToolButton;
    lblRak: TLabel;
    edtRak: TDBEdit;
    cbbPhase: TDBComboBox;
    lblPhase: TLabel;
    lblBebanMax: TLabel;
    edtBebanMax: TDBEdit;
    procedure dsDaftarStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryDaftarBeforePost(DataSet: TDataSet);
    procedure btnCariPanelClick(Sender: TObject);
    procedure btnCariRakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataMCBLegrand: TfrmDataMCBLegrand;
  procedure ShowDataMCBLegrand;
  function ShowCariDataMCBLegrand(kw, flt: string): TDataMCBLegrand;
  function GetDataMCBLegrand(id: Cardinal): TDataMCBLegrand;

implementation

uses ArDBModule, ArFunctions, ArComponents, MenuUtamaUnit, DataForm, BaseForm, StrUtils, TypeUnit, DataPanel, DataRak;

{$R *.dfm}

procedure ShowDataMCBLegrand;
begin
  if not BolehAkses(mnMCBLegrand) then
          PesanError('Anda tidak diperkenankan mengakses menu ini');

     with frmDataMCBLegrand do
     begin
          if not IsFormClassActive ('TfrmDataMCBLegrand', Application) then
          begin
               frmDataMCBLegrand := TfrmDataMCBLegrand.Create(Application);
               ChangeWindowState := wsMaximized;
               FormStyle := fsMDIChild;

               ShowData(qryDaftar, ptFirst);
          end;
          Show;
     end;
end;

function ShowCariDataMCBLegrand (kw,flt:string):TDataMCBLegrand;
begin
  Result.id_mcblegrand := null;
     with TfrmDataMCBLegrand.Create(nil) do
     try
          pnlButton.Visible := BolehAkses(mnMCBLegrand);
          ShowPilih(True);

          qryDaftar.SQL.Text := SQLBase + flt;

          if kw = 'NewData' then
          begin
               edtKeyword.Text := '';
               ShowData (qryDaftar, ptFirst);
               if BolehAkses(mnMCBLegrand, [haTambah]) then _Insert.Execute;
               ActiveControl := edtMCB;
          end else
          begin
               edtKeyword.Text := kw;
               ShowData (qryDaftar, ptFirst);
               ActiveControl := edtKeyword;
          end;

          Position := poOwnerFormCenter;
          with qryDaftar, Result  do
          case ShowModal of
          mrOK:begin
                    id_mcblegrand   := FieldByName('id_mcblegrand').Value;
                    id_panel    := FieldByName('id_panel').AsVariant;
                    mcb_name    := FieldByName('mcb_name').AsString;
                    legrand_name    := FieldByName('legrand_name').AsString;
                    beban_max   := FieldByName('beban_max').AsString;
                    jenisphase := FieldByName('jenisphase').AsString;
               end;
          end;
     finally
          Free;
     end;
end;

function GetDataMCBLegrand (id:Cardinal):TDataMCBLegrand;
begin
  Result.id_mcblegrand := null;
     with Query ('SELECT dml.*, dp.`panel_name`, dr.`rak_name` FROM dc_mcb_legrand dml '+
                ' LEFT JOIN dc_panel dp ON dp.`id_panel`=dml.`id_panel` '+
                ' LEFT JOIN dc_rak dr ON dr.`id_rak`=dml.`id_rak` '+
                ' where dml.id_mcblegrand='+IntToStr(id)), Result do
     try
          First;
          if not eof then
          begin
            id_mcblegrand   := FieldByName('id_mcblegrand').Value;
            id_panel    := FieldByName('id_panel').AsVariant;
            panel_name  := FieldByName('panel_name').AsString;
            rak_name    := FieldByName('rak_name').AsString;
            mcb_name    := FieldByName('mcb_name').AsString;
            legrand_name    := FieldByName('legrand_name').AsString;
            beban_max   := FieldByName('beban_max').AsString;
            jenisphase := FieldByName('jenisphase').AsString;
          end;
     finally
          Close;Free;
     end;
end;

procedure TfrmDataMCBLegrand.dsDaftarStateChange(Sender: TObject);
begin
  inherited;
  if edtMCB.CanFocus and (dsDaftar.State in [dsInsert, dsEdit]) and
  Showing then edtMCB.SetFocus;
end;

procedure TfrmDataMCBLegrand.FormCreate(Sender: TObject);
begin
  inherited;
  SetHeader (pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._MCBLegrand.ImageIndex);
//  SetReport (PathReport +'DataPasien.fr3', 'Pasien');
  MenuAkses := mnMCBLegrand;

  //     ChangeDateEditor([edtTglLahir]);
//  SetGlyph(btnCariPanel, ibFind);
end;

procedure TfrmDataMCBLegrand.qryDaftarBeforePost(DataSet: TDataSet);
begin
  inherited;
  HarusDiisi(edtPanel, 'Panel', trim(edtPanel.Text) = '');
  HarusDiisi(edtMCB, 'MCB', trim(edtMCB.Text) = '');
  HarusDiisi(edtLegrand, 'Legrand', trim(edtLegrand.Text) = '');
end;

procedure TfrmDataMCBLegrand.btnCariPanelClick(Sender: TObject);
var s : string;
begin
  inherited;
  if not (dsDaftar.State in [dsInsert, dsEdit]) then Exit;

  if Sender=btnCariPanel then s := edtPanel.Text else s := 'NewData';

  with ShowCariDataPanel (s,'') do
  if id_panel <> null then
  begin
      qryDaftar.FieldByName('id_panel').Value := id_panel;
      qryDaftar.FieldByName('panel_name').Value := panel_name;
  end;
end;

procedure TfrmDataMCBLegrand.btnCariRakClick(Sender: TObject);
var s : string;
begin
  inherited;
  if not (dsDaftar.State in [dsInsert, dsEdit]) then Exit;

  if Sender=btnCariRak then s := edtRak.Text else s := 'NewData';

  with ShowCariDataRak (s,'') do
  if id_rak <> null then
  begin
      qryDaftar.FieldByName('id_rak').Value := id_rak;
      qryDaftar.FieldByName('rak_name').Value := rak_name;
  end;
end;

end.
