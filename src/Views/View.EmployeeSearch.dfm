inherited frmEmployeeSearch: TfrmEmployeeSearch
  Caption = 'frmEmployeeSearch'
  ExplicitLeft = -384
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTop: TPanel
    inherited Label1: TLabel
      Width = 1011
      Height = 101
      Caption = 'Cadastros de Funcion'#225'rios'
      ExplicitWidth = 279
    end
  end
  inherited cdsSearch: TClientDataSet
    PersistDataPacket.Data = {
      100100009619E0BD01000000180000000B000000000003000000100102496404
      00010000000000044E616D650100490000000100055749445448020002003200
      064F666669636501004900000001000557494454480200020032000741646472
      6573730100490000000100055749445448020002003200064E756D6265720400
      0100000000000443697479010049000000010005574944544802000200320002
      556601004900000001000557494454480200020002000553746F726501004900
      000001000557494454480200020032000753746F726549640400010000000000
      0D41646D697373696F6E4461746504000600000000000753756D6D6172790200
      49000000010005574944544802000200F4010000}
    Active = True
    object cdsSearchId: TIntegerField
      FieldName = 'Id'
    end
    object cdsSearchName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object cdsSearchOffice: TStringField
      FieldName = 'Office'
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
    object cdsSearchStore: TStringField
      FieldName = 'Store'
      Size = 50
    end
    object cdsSearchStoreId: TIntegerField
      FieldName = 'StoreId'
    end
    object cdsSearchAdmissionDate: TDateField
      FieldName = 'AdmissionDate'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsSearchSummary: TStringField
      FieldName = 'Summary'
      Size = 500
    end
  end
end
