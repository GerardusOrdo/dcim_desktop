unit ArReports;

interface     
uses
  SysUtils, Classes, Windows, Forms, Controls, DB,
  frxClass, frxDBset, frxDesgn, frxPreview, frxExportImage, frxExportCSV,
  frxExportRTF, frxExportPDF, frxExportODF, frxExportXLS, frxChBox;

type                 
  NShowReport = (srPreview, srPrint, srDesign);
  TArReport = class (TComponent)
  private
    FRds  : TfrxDBDataset;
    FRpt  : TfrxReport;
    FDsn  : TfrxDesigner;

    FDataset   : TDataset;
    FFileName  : string;
    FAlias     : string;
    FPreviewIn : TWinControl;
    FOnPrepare : TNotifyEvent;

    FShowFor   : NShowReport;
    FProcessing: Boolean;

    FDotMatrix : Boolean;
	
    FNames : array of string;
    FValues: array of Variant;
    FOnAfterShow: TNotifyEvent;   
    FOnPreview: TNotifyEvent;
    //export
    FXls : TfrxXLSExport;
    FOdt : TfrxODTExport;
    FPdf : TfrxPDFExport;
    FRtf : TfrxRTFExport;
    FCsv : TfrxCSVExport;
    FJpg : TfrxJPEGExport;
    //object
    FChk : TfrxCheckBoxObject;
    FControlEnable: Boolean;

    //MoreData
    FMoreAlias   : array of string;
    FMoreDataset : array of TDataset;
    FMoreRds     : array of TfrxDBDataset;

    procedure DoPrepare;
    procedure DoAfterShow;
    
    procedure DoOnGetValue(const VarName: String; var Value: Variant);   
    procedure DoOnPreview (Sender: TObject);
    procedure DoOnProgressStart (Sender: TfrxReport; ProgressType: TfrxProgressType; Progress: Integer);
    procedure DoOnProgressStop (Sender: TfrxReport; ProgressType: TfrxProgressType; Progress: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    procedure Preview (AFileName:string; ADataset: TDataSet; AAlias:string='Data';APreviewIn:TWinControl=nil);
    procedure Print (AFileName:string; ADataset: TDataSet; AAlias:string='Data');
    procedure Design (AFileName:string; ADataset: TDataSet; AAlias:string='Data');
    procedure ShowPreview;
    procedure ShowPrint;
    procedure ShowDesign;  
    procedure Show;

    procedure SetParValues(ANames: array of string; AValues: array of Variant);   
    procedure MouseWheelScroll(Delta:Integer; Horz:Boolean=False; Zoom:Boolean=False);
    procedure Resize;
    procedure Close;
    function Showing:Boolean;

    procedure ClearMoreData;
    procedure AddMoreData(ADataset:TDataSet; AAlias: string);
  published
    property ControlEnable : Boolean read FControlEnable write FControlEnable default False;
    property ShowFor     : NShowReport read FShowFor write FShowFor default srPreview;
    property FileName    : string read FFileName write FFileName;
    property Dataset     : TDataset read FDataset write FDataset;
    property Alias       : string read FAlias write FAlias;
	property DotMatrix   : Boolean read FDotMatrix write FDotMatrix;
    property PreviewIn   : TWinControl  read FPreviewIn write FPreviewIn;
    property OnPrepare   : TNotifyEvent read FOnPrepare write FOnPrepare;
    property OnAfterShow : TNotifyEvent read FOnAfterShow write FOnAfterShow;  
    property OnPreview   : TNotifyEvent read FOnPreview write FOnPreview;
  end;

implementation

{ TArReport }
constructor TArReport.Create (AOwner: TComponent);
begin
     inherited Create (AOwner);
     FProcessing := False;
     //export
     FXls := TfrxXLSExport.Create(AOwner);
     FDsn := TfrxDesigner.Create(AOwner);
     FOdt := TfrxODTExport.Create(AOwner);
     FPdf := TfrxPDFExport.Create(AOwner);
     FRtf := TfrxRTFExport.Create(AOwner);
     FCsv := TfrxCSVExport.Create(AOwner);
     FJpg := TfrxJPEGExport.Create(AOwner);
     //object
     FChk := TfrxCheckBoxObject.Create(AOwner);
end;

destructor TArReport.Destroy;
begin                                
     //export
     if Assigned(FXls) then FreeAndNil(FXls);
     if Assigned(FOdt) then FreeAndNil(FOdt);
     if Assigned(FPdf) then FreeAndNil(FPdf);
     if Assigned(FRtf) then FreeAndNil(FRtf);
     if Assigned(FCsv) then FreeAndNil(FCsv);
     if Assigned(FJpg) then FreeAndNil(FJpg);
                                                
     //object                             
     if Assigned(FChk) then FreeAndNil(FChk);

     if Assigned(FDsn) then FreeAndNil(FDsn);
     
     if Assigned(FRpt) then FreeAndNil(FRpt);
     if Assigned(FRds) then FreeAndNil(FRds);

     ClearMoreData;
  inherited Destroy;
end;

procedure TArReport.Resize;
begin
     if Assigned(PreviewIn) and assigned(FRpt) and Assigned(FRpt.PreviewForm) then
     begin
          //FRpt.PreviewForm.WindowState := wsMaximized;
          FRpt.PreviewForm.Left := 0;
          FRpt.PreviewForm.Top := 0;
          FRpt.PreviewForm.Width := PreviewIn.ClientWidth;
          FRpt.PreviewForm.Height := PreviewIn.ClientHeight;
     end;
end;

procedure TArReport.SetParValues(ANames: array of string;
  AValues: array of Variant);
var i, n : word;
begin
     n := Length(ANames);
     if (n = 0)or(n <> Length(AValues)) then Exit;
     SetLength (FNames, n);
     SetLength (FValues, n);
     for i := 0 to n-1 do
     begin
          FNames[i] := ANames[i];
          FValues[i]:= AValues[i];
     end;    
end;

procedure TArReport.DoOnGetValue(const VarName: String;
  var Value: Variant); 
var i, n : word;
begin
     n := Length(FNames); if n = 0 then Exit;
     for i := 0 to n-1 do
     if CompareText(VarName, FNames[i]) = 0 then
     begin
          Value := FValues[i];
          Break;
     end;
end;   

procedure TArReport.DoPrepare;
var i : Word; FileStyle : string;
begin
     if not Assigned (FRds) then FRds := TfrxDBDataset.Create(Self);
     if not Assigned (FRpt) then FRpt := TfrxReport.Create(Self);
     if (not Assigned (FDsn)) and (FShowFor = srDesign) then
          FDsn := TfrxDesigner.Create(Self);

     if Assigned(FOnPrepare) then FOnPrepare(Self);  

     FRds.UserName := FAlias;
     FRds.DataSet  := FDataset;

     FRpt.DotMatrixReport := FDotMatrix;
     FRpt.DataSet := FRds;
     FRpt.PreviewOptions.Modal := not Assigned (FPreviewIn);  
     //FRpt.PreviewOptions.MDIChild := Assigned (FPreviewIn);
     FRpt.OnGetValue := DoOnGetValue;                    
     FRpt.OnPreview  := DoOnPreview;
     FRpt.OnProgressStart:= DoOnProgressStart;
     FRpt.OnProgressStop := DoOnProgressStop;
     FRpt.LoadFromFile(FFileName);
     
     FileStyle := ExtractFilePath(FFileName)+'style.fs3';
     if FileExists(FileStyle) then FRpt.Styles.LoadFromFile(FileStyle);

     if Length(FMoreDataset) > 0 then
     for i := 0 to Length(FMoreDataset) -1 do
          if not FMoreDataset[i].Active then FMoreDataset[i].Open;
end;     

procedure TArReport.DoAfterShow;
begin
     if Assigned(FOnAfterShow) then FOnAfterShow(Self);
end;

procedure TArReport.Show;
begin
     if Showing then Close;
     try        
          FProcessing := True;
          if not FControlEnable then FDataset.DisableControls;

          DoPrepare;
          if not FDataset.Active then FDataset.Open;
          if not FDataset.IsEmpty then
          case FShowFor of
          srDesign  : begin FRpt.PrintOptions.ShowDialog := True; FRpt.DesignReport; end;
          srPrint   : begin FRpt.PrintOptions.ShowDialog := False; FRpt.PrepareReport; FRpt.Print; end;
          srPreview : begin FRpt.PrintOptions.ShowDialog := True; FRpt.ShowReport; end;
          end;
          DoAfterShow;
     finally
          FProcessing := False;
          FDataset.First;
          if not FControlEnable then
               FDataset.EnableControls;
     end;
end;          

procedure TArReport.DoOnPreview(Sender: TObject);
begin
     case FShowFor of
     srPreview :
          if Assigned(FPreviewIn) and Assigned(FRpt.PreviewForm) then
          begin
               FRpt.PreviewForm.BorderStyle := bsNone;
               FRpt.PreviewForm.ParentWindow := FPreviewIn.Handle;
          end;
     end;

     if Assigned(FOnPreview) then FOnPreview(Self);
end;   

procedure TArReport.DoOnProgressStart (Sender: TfrxReport; ProgressType: TfrxProgressType; Progress: Integer);
begin                                      
     FProcessing := true;
     if Assigned (FDataset) then begin FDataset.DisableControls; end;
end;

procedure TArReport.DoOnProgressStop (Sender: TfrxReport; ProgressType: TfrxProgressType; Progress: Integer);
begin                                      
     FProcessing := False;
     if Assigned (FDataset) then begin FDataset.First; FDataset.EnableControls; end;
end;

procedure TArReport.Design(AFileName: string; ADataset: TDataSet;
  AAlias: string);
begin   
     FFileName := AFileName;
     FDataset  := ADataset;  
     FAlias    := AAlias;

     FShowFor  := srDesign;
     Show;
end;

procedure TArReport.Preview(AFileName: string; ADataset: TDataSet;
  AAlias: string; APreviewIn: TWinControl);
begin  
     FFileName := AFileName;
     FDataset  := ADataset;  
     FAlias    := AAlias;    
     FPreviewIn:= APreviewIn;

     FShowFor  := srPreview;
     Show;
end;

procedure TArReport.Print(AFileName: string; ADataset: TDataSet;
  AAlias: string);
begin
     FFileName := AFileName;
     FDataset  := ADataset;  
     FAlias    := AAlias;

     FShowFor  := srPrint;
     Show;
end;

function TArReport.Showing: Boolean;
begin
     Result := (Assigned(FRpt) or FProcessing) and (
                    (Assigned(FPreviewIn) and Assigned(FRpt.PreviewForm))
                 or (Assigned(FRpt.Designer))
               );
end;  

procedure TArReport.Close;
begin
     if Assigned(FRpt) and Assigned(FRpt.PreviewForm) then
     begin
          TfrxPreviewForm(FRpt.PreviewForm).CancelB.Click;
          FRpt.PreviewForm.Free;
     end;
     if Assigned(FRpt) and Assigned(FRpt.Designer) then
     begin
          FRpt.Designer.Close;
          FRpt.Designer.Free;
     end;
end;

procedure TArReport.ShowDesign;
begin
     FShowFor  := srDesign;
     Show;
end;

procedure TArReport.ShowPreview;
begin
     FShowFor  := srPreview;
     Show;
end;

procedure TArReport.ShowPrint;
begin   
     FShowFor  := srPrint;
     Show;
end;

procedure TArReport.MouseWheelScroll(Delta: Integer; Horz, Zoom: Boolean);
begin           
     {if Assigned(FRpt) and Assigned(FRpt.PreviewForm) then
          TfrxPreviewForm(FRpt.PreviewForm).Preview.MouseWheelScroll(Delta, Horz, Zoom);}
end;   

procedure TArReport.ClearMoreData;
var i : Word;
begin
     if Length(FMoreRds) > 0 then
     begin
          for i := 0 to Length(FMoreRds)-1 do
               if Assigned(FMoreRds[i]) then FreeAndNil(FMoreRds[i]);
          SetLength(FMoreRds, 0);
     end;
     SetLength (FMoreDataset, 0);   
     SetLength (FMoreAlias, 0);
end;

procedure TArReport.AddMoreData(ADataset:TDataSet; AAlias: string);
var n : Word;
begin
     n := Length(FMoreDataset) + 1;
     
     SetLength (FMoreDataset, n);   FMoreDataset[n-1] := ADataset;
     SetLength (FMoreAlias, n);     FMoreAlias[n-1] := AAlias;

     SetLength (FMoreRds, n);
     if not Assigned(FMoreRds[n-1]) then FMoreRds[n-1] := TfrxDBDataset.Create(Self);
     FMoreRds[n-1].DataSet  := ADataset;
     FMoreRds[n-1].UserName := AAlias;
end;

end.