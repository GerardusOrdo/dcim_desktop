inherited frmTransServerEditUnit: TfrmTransServerEditUnit
  Caption = 'Server'
  ExplicitLeft = -119
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitle: TPanel
    inherited pnlClose: TPanel
      inherited btnClose: TAdvToolButton
        TMSStyle = 0
      end
    end
  end
  inherited pnlButton: TPanel
    inherited btnSimpan: TAdvToolButton
      TMSStyle = 0
    end
    inherited btnBatal: TAdvToolButton
      TMSStyle = 0
    end
  end
  inherited pnlTrans: TPanel
    inherited pnlAtas: TPanel
      inherited grpDataServer: TGroupBox
        inherited btnCariTipeServer: TAdvToolButton
          TMSStyle = 0
        end
        inherited btnCariRak: TAdvToolButton
          TMSStyle = 0
        end
        inherited btnRevealPwdMgt: TAdvToolButton
          TMSStyle = 0
        end
        inherited btnCariBladeEncosure: TAdvToolButton
          TMSStyle = 0
        end
      end
      inherited grpKelistrikan: TGroupBox
        inherited pnlToolbar: TPanel
          ExplicitLeft = 2
          ExplicitTop = 19
          inherited btnTambahMCB: TAdvToolButton
            TMSStyle = 0
          end
          inherited btnHapusMCB: TAdvToolButton
            TMSStyle = 0
          end
          inherited btnCariMCB: TAdvToolButton
            TMSStyle = 0
          end
          inherited edtAmpere: TEdit
            Top = 69
            ExplicitTop = 69
          end
          inherited edtWatt: TEdit
            Top = 100
            ExplicitTop = 100
          end
        end
      end
    end
    inherited grpOS: TGroupBox
      inherited pnlOS: TPanel
        inherited btnTambahOS: TAdvToolButton
          TMSStyle = 0
        end
        inherited btnHapusOS: TAdvToolButton
          TMSStyle = 0
        end
        inherited btnRevealPwd: TAdvToolButton
          TMSStyle = 0
        end
        inherited btnCariOS: TAdvToolButton
          TMSStyle = 0
        end
      end
    end
    inherited grpDataLainnya: TGroupBox
      inherited btnCariPemilik: TAdvToolButton
        TMSStyle = 0
      end
      inherited btnCariATS: TAdvToolButton
        TMSStyle = 0
      end
      inherited btnCariPICServer: TAdvToolButton
        TMSStyle = 0
      end
    end
  end
end
