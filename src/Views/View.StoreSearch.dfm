inherited frmStoreSearch: TfrmStoreSearch
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTop: TPanel
    inherited Label1: TLabel
      Caption = 'Cadastro de Lojas'
      ExplicitWidth = 191
    end
  end
  inherited cdsSearch: TClientDataSet
    PersistDataPacket.Data = {
      990000009619E0BD010000001800000006000000000003000000990002496404
      00010000000000044E616D650100490000000100055749445448020002003200
      07416464726573730100490000000100055749445448020002003200064E756D
      6265720400010000000000044369747901004900000001000557494454480200
      0200320002556601004900000001000557494454480200020002000000}
    Active = True
    object cdsSearchId: TIntegerField
      FieldName = 'Id'
    end
    object cdsSearchName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object cdsSearchAddress: TStringField
      FieldName = 'Address'
      Size = 50
    end
    object cdsSearchNumber: TIntegerField
      FieldName = 'Number'
    end
    object cdsSearchCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object cdsSearchUf: TStringField
      FieldName = 'Uf'
      Size = 2
    end
  end
end
