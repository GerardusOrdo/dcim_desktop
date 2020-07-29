unit UserLevelUnit;

interface

uses
  TypeUnit, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Forms, DataDtlForm, ZSqlUpdate, StdCtrls, Mask, DBCtrls, ExtCtrls,
  ActnList, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ImgList, Buttons, Grids, DBGrids, AdvToolBtn,
  AdvObj, BaseGrid, ComCtrls, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, EhLibVCL,
  System.Actions, System.ImageList;

type
  TDataUserLevel = record
     IDlevel : Variant;
     namalevel : string;
  end;
  TfrmDataUserLevel = class(TfrmDataDtl)
    Label1: TLabel;
    lblNama: TLabel;
    edtNama: TDBEdit;
    udtDaftar: TZUpdateSQL;
    pnl1: TPanel;
    _SettingHak: TAction;
    grpHakAkses: TGroupBox;
    qryDtl: TZQuery;
    dsDtl: TDataSource;
    dbgDtl: TDBGridEh;
    btnSetting: TAdvToolButton;
    procedure dsDaftarStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSelectAllClick(Sender: TObject);
    procedure qryDaftarBeforePost(DataSet: TDataSet);
    procedure dsDaftarDataChange(Sender: TObject; Field: TField);
    procedure qryDaftarBeforeDelete(DataSet: TDataSet);
    procedure qryDaftarBeforeEdit(DataSet: TDataSet);
    procedure qryDtlBeforeDelete(DataSet: TDataSet);
    procedure _SettingHakExecute(Sender: TObject);
//    procedure dbgDtlDrawColumnCell(Sender: TObject; const Rect: TRect;
//      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure qryDtlBeforeInsert(DataSet: TDataSet);
    procedure qryDaftarAfterPost(DataSet: TDataSet);
    procedure dbgDtlColEnter(Sender: TObject);
    procedure dbgDtlExit(Sender: TObject);
//    procedure dbgDtlCellClick(Column: TColumn);
//    procedure dbgDtlTitleClick(Column: TColumn);
    procedure dbgDtlDblClick(Sender: TObject);
  private
    { Private declarations }
    CheckAll :array [NHakAction] of Boolean;
    procedure UpdateDtlMode(b:Boolean=False);
    procedure RefreshDtl;                            
    function IsHakActionName(AFieldName:string;var AHan:NHakAction):Boolean;
    function IsHakAction(AFieldName:string):Boolean;

  public
    { Public declarations }
  end;

var
  frmDataUserLevel: TfrmDataUserLevel;
procedure ShowDataUserLevel;
function ShowCariUserLevel(kw:string=''):TDataUserLevel;
procedure InsertHakAksesMenu(AIDLevel:Integer);

implementation

uses ArDBModule, ArComponents, ArFunctions, MenuUtamaUnit, BaseForm, TypInfo,
     StrUtils;

{$R *.dfm}

procedure ShowDataUserLevel;
begin
     if not BolehAkses(mnUserLevel) then
          PesanError('Anda tidak diperkenankan mengakses menu ini');

     with frmDataUserLevel do
     begin
          if not IsFormClassActive ('TfrmDataUserLevel', Application) then
          begin
               frmDataUserLevel := TfrmDataUserLevel.Create(Application); 
               ChangeWindowState := wsMaximized;
               FormStyle := fsMDIChild;

               ShowData(qryDaftar, ptFirst);
          end;
          Show;
     end;
end;      

function ShowCariUserLevel(kw:string=''):TDataUserLevel;
begin
     Result.IDlevel := null;
     with TfrmDataUserLevel.Create(nil) do
     try
          pnlButton.Visible := BolehAkses(mnUserLevel);
          ShowPilih(True);

          if kw = 'NewData' then
          begin
               edtKeyword.Text := '';
               ShowData (qryDaftar, ptFirst);
               if BolehAkses(mnUserLevel, [haTambah]) then qryDaftar.Insert;
               ActiveControl := edtNama;
          end else
          begin
               edtKeyword.Text := kw;     
               ShowData (qryDaftar, ptFirst);
               ActiveControl := edtKeyword;
          end;
          
          Position := poMainFormCenter;
          with qryDaftar, Result  do
          case ShowModal of
          mrOK :
               begin
                    IDlevel   := FieldValues['idlevel'];
                    namalevel := FieldByName('namalevel').AsString;
               end;
          end;
     finally
          Free;
     end;
end;

procedure TfrmDataUserLevel.dsDaftarStateChange(Sender: TObject);
var UpdateMode : Boolean;
begin
  inherited;
     if edtNama.CanFocus and (dsDaftar.State in [dsInsert, dsEdit]) then edtNama.SetFocus;

     UpdateMode := qryDaftar.State in [dsInsert, dsEdit];
     _SettingHak.Enabled := not (UpdateMode or qryDaftar.FieldByName('idlevel').IsNull);
     if UpdateMode then UpdateDtlMode (False);
end;

procedure TfrmDataUserLevel.FormCreate(Sender: TObject);
var sMenu, sField, s : string;
    n : NMenu; ha : NHakAction;
begin
  inherited;
     sMenu := '';
     for n := Low(NMenu) to High(NMenu) do
          sMenu := sMenu + ' when '+IntToStr(Integer(n))+ ' then '+_Q(MENU_CAPTION[n]);

     sField:= '';   
     for ha := Low(NHakAction) to High(NHakAction) do
     begin
           s := GetEnumName(TypeInfo(NHakAction), Integer(ha));
           s := Copy (s, 3, Length(s));
          sField := sField + ', '+s;
     end;


     qryDtl.Close;
     qryDtl.SQL.Text :=
          ' select (case idmenu '+sMenu+' end)menuname '+sField + ', idlevel, idmenu '+
          ' from user_hakakses '+
          ' where idmenu between '+InttoStr(Integer(Low(NMenu)))+' and '+InttoStr(Integer(High(NMenu))) ;

     SetHeader (pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._UserLevel.ImageIndex);   
     MenuAkses := mnUserLevel;
     SetGlyph(btnSetting, ibSetting);
end;

procedure TfrmDataUserLevel.btnSelectAllClick(Sender: TObject);
var i : Word;
    Value : Boolean;
begin
  inherited;
     Value := TWinControl(Sender).Tag = 1;
     with TWinControl(Sender).Parent do
     for i := 0 to ControlCount -1 do
     begin
          if (Controls[i] is TCheckBox) then
          with TCheckBox(Controls[i]) do
               Checked := Value or (not Enabled);
     end;
end;

procedure TfrmDataUserLevel.qryDaftarBeforePost(DataSet: TDataSet);
begin
  inherited;
     HarusDiisi(edtNama,'Nama Grup',Trim(edtNama.Text)='');
     //DataSet.FieldByName('kewenangan').AsInteger := HakUser (SetHak);
end;

procedure TfrmDataUserLevel.dsDaftarDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
     pnlDtl.Enabled := qryDaftar.FieldByName('idlevel').AsInteger <> User.IDLevel;
     
     _SettingHak.Enabled := not ((qryDaftar.State in [dsInsert, dsEdit]) or qryDaftar.FieldByName('idlevel').IsNull);
     UpdateDtlMode(False);
end;

procedure TfrmDataUserLevel.qryDaftarBeforeDelete(DataSet: TDataSet);
begin         
     qryDaftarBeforeEdit (qryDaftar);
  inherited;
end;

procedure TfrmDataUserLevel.qryDaftarBeforeEdit(DataSet: TDataSet);
begin
  inherited;
     if DataSet.FieldByName('idlevel').AsInteger = 1 then
     begin
          Peringatan('User Level Administrator tidak bisa diedit');
          Abort;
     end;
//     if DataSet.FieldByName('idlevel').AsInteger = 2 then
//     begin
//          Peringatan('User Level Kasir tidak bisa diedit');
//          Abort;
//     end;
end;

procedure TfrmDataUserLevel.qryDtlBeforeDelete(DataSet: TDataSet);
begin
     if DataSet.FieldByName('idlevel').AsInteger = 1 then
     begin
          Peringatan('User Level Administrator tidak bisa dihapus');
          Abort;
     end;
     if DataSet.FieldByName('idlevel').AsInteger = 2 then
     begin
          Peringatan('User Level Kasir tidak bisa dihapus');
          Abort;
     end;
  inherited;
end;

procedure TfrmDataUserLevel._SettingHakExecute(Sender: TObject);
begin
  inherited;
     if (qryDaftar.FieldByName('idlevel').AsInteger = User.IDLevel)
          or (qryDaftar.FieldByName('idlevel').AsInteger = 1) then
     begin
          InsertHakAksesMenu(1);
          qryDtl.Refresh;
     end else
     begin
          InsertHakAksesMenu(qryDaftar.FieldByName('idlevel').AsInteger);   
          qryDtl.Refresh;
          UpdateDtlMode(_SettingHak.Tag = 0);
     end;
end;

//procedure TfrmDataUserLevel.dbgDtlDrawColumnCell(Sender: TObject;
//  const Rect: TRect; DataCol: Integer; Column: TColumn;
//  State: TGridDrawState);
//var ha : NHakAction;  s : string;
//    ArrFields: array[NHakAction] of string;
//    ArrValues: array[NHakAction] of Boolean;
//begin
//  inherited;
//     for ha := Low(NHakAction) to High(NHakAction) do
//     begin
//          s := GetEnumName(TypeInfo(NHakAction), Integer(ha));
//          s := LowerCase(Copy (s, 3, Length(s)));
//          ArrFields[ha]  := s;
//          ArrValues[ha]  := qryDtl.FieldByName(s).AsInteger = 1;
//     end;
//
//     ShowCheckInGrid (ArrFields, ArrValues, Sender, Rect, Column);
//end;

procedure TfrmDataUserLevel.FormShow(Sender: TObject);
begin
  inherited;
     RefreshDtl;
end;

procedure TfrmDataUserLevel.qryDtlBeforeInsert(DataSet: TDataSet);
begin
  inherited;
     abort;
end;

procedure TfrmDataUserLevel.qryDaftarAfterPost(DataSet: TDataSet);
begin
     InsertHakAksesMenu(qryDaftar.FieldByName('idlevel').AsInteger);
     _Refresh.Execute;
end;

procedure TfrmDataUserLevel.dbgDtlColEnter(Sender: TObject);
begin
  inherited;
//     with TDBGrid(Sender) do
//     if IsHakAction(SelectedField.FieldName) then
//          Options := Options - [dgEditing]
//     else
//          Options := Options + [dgEditing];
end;

procedure TfrmDataUserLevel.dbgDtlExit(Sender: TObject);
begin
  inherited;
     if qryDtl.State in [dsInsert, dsEdit] then qryDtl.Post;
end;

//procedure TfrmDataUserLevel.dbgDtlCellClick(Column: TColumn);
//begin
//  inherited;
//     if Assigned(Column) and (not dbgDtl.ReadOnly) and IsHakAction(Column.FieldName) then
//     begin
//          if not (qryDtl.State in [dsInsert, dsEdit]) then qryDtl.Edit;
//          Column.Field.asinteger := 1 - Column.Field.asinteger;
//          qryDtl.Post;
//     end;
//end;


function TfrmDataUserLevel.IsHakActionName(AFieldName: string;
  var AHan: NHakAction): Boolean;
var s : string;
    ha : NHakAction;
begin
     Result := False;
     for ha := Low(NHakAction) to High(NHakAction) do
     begin
          s := GetEnumName(TypeInfo(NHakAction), Integer(ha));
          s := Copy (s, 3, Length(s));
          if CompareText(s, AFieldName)=0 then
          begin
               AHan := ha;
               Result := True;
               Break;
          end;
     end;
end;

function TfrmDataUserLevel.IsHakAction(AFieldName: string): Boolean;
var ha : NHakAction;
begin
     Result := IsHakActionName(AFieldName, ha);
end;

procedure TfrmDataUserLevel.RefreshDtl;
var i, n : Word;  s : string;
    ArrFields: array of string;  
    ArrWidths: array of Integer;
begin
     ShowData (qryDtl, ptNone);   
     n := Integer(High(NHakAction))+1;   
     {
     SetLength (ArrFields, n+1);
     ArrFields[0] := 'Nama Menu';
     SetLength (ArrWidths, n+1);
     ArrWidths[0] := 150;
     for i := 1 to n do
     begin                    
          s := GetEnumName(TypeInfo(NHakAction), i-1);
          s := Copy (s, 3, Length(s));
          ArrFields[i]  := s;
          ArrWidths[i]  := 50;
     end;

     SetDisplayLabel (qryDtl, ArrFields);
     SetColWidthInGrid (dbgDtl, ArrWidths);
     FitColGrid(dbgDtl, 0);
     }
     dbgDtl.Columns[0].Title.Caption := 'Nama Menu';     
//     HideColsInGrid(dbgDtl, [n+1,n+2]);
end;

procedure TfrmDataUserLevel.UpdateDtlMode(b: Boolean);
begin
     dbgDtl.ReadOnly := not b;
     if b then
     begin     
          _SettingHak.Tag := 1;
          _SettingHak.Caption := 'Selesai Setting';
     end else
     begin
          _SettingHak.Tag := 0;
          _SettingHak.Caption := 'Setting Hak Akses';
     end;
end;

//procedure TfrmDataUserLevel.dbgDtlTitleClick(Column: TColumn);
//var ha : NHakAction;
//begin
//  //inherited;
//     if not Assigned(Column) then Exit;
//
//     if not IsHakAction(Column.FieldName) then
//          SortByColumn(Column)else
//     if (not dbgDtl.ReadOnly) and IsHakActionName (Column.FieldName, ha) then
//     begin
//          CheckAll[ha] := not CheckAll[ha];
//          ExecQuery(' update user_hakakses set '+Column.FieldName+'='+Ifthen(CheckAll[ha], '1', '0')+
//                    ' where idlevel='+qryDaftar.FieldByName('idlevel').AsString);
//          qryDtl.Refresh;
//     end;
//end;

procedure InsertHakAksesMenu(AIDLevel: Integer);
var n : NMenu; ac : NHakAction;
    s, ad : string;
    acField, acValue, acDouble : string;
begin
     acField := ''; acValue := ''; acDouble := '';
     for ac := Low(NHakAction) to High(NHakAction) do
     begin                                           
          s := GetEnumName(TypeInfo(NHakAction), Integer(ac));
          s := Copy (s, 3, Length(s));
          acField := acField + ', ' + s;
          acValue := acValue + ', ' + '1';
                                           
          if acDouble <> '' then acDouble := acDouble + ',';
          acDouble:= acDouble+ s+'=values('+s+')';
     end;
     if acDouble <> '' then  acDouble := ' on duplicate key update '+acDouble;

     s := ''; ad := '';
     for n := Low(NMenu) to High(NMenu) do
     begin
          if s <> '' then s := s + ',';     // qryDaftar.FieldByName('idlevel').AsString
          s := s + '('+inttostr(AIDLevel)+','+InttoStr(Integer(n))+')';

          if ad <> '' then ad := ad + ',';
          ad := ad + '(1,'+InttoStr(Integer(n))+acValue+')';
     end;     
     if AIDLevel = 1 then
          ExecQuery(' insert into user_hakakses (idlevel, idmenu'+acField+') values '+ad+ acDouble)
     else if s <> '' then
          ExecQuery('insert ignore into user_hakakses (idlevel, idmenu) values '+s);
end;

procedure TfrmDataUserLevel.dbgDtlDblClick(Sender: TObject);
var i : Word;
begin
  inherited;
     if (not dbgDtl.ReadOnly) then
     begin
          if not (qryDtl.State in [dsInsert, dsEdit]) then qryDtl.Edit;
          for i := 0 to qryDtl.FieldCount -1 do
          if IsHakAction(qryDtl.Fields[i].FieldName) then
               qryDtl.Fields[i].AsInteger := 1 - qryDtl.Fields[i].asinteger;
          qryDtl.Post;
     end;
end;

end.
