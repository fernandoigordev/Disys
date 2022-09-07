inherited frmViewEmployeeFunction: TfrmViewEmployeeFunction
  Caption = ''
  OnShow = FormShow
  ExplicitLeft = 2
  ExplicitTop = -188
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTop: TPanel
    inherited Label1: TLabel
      Caption = 'Manuten'#231#227'o de funcion'#225'rios'
      ExplicitWidth = 296
    end
  end
  inherited pnlContainer: TPanel
    object Label2: TLabel
      Left = 10
      Top = 15
      Width = 33
      Height = 16
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 10
      Top = 159
      Width = 53
      Height = 16
      Caption = 'Endere'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 10
      Top = 235
      Width = 12
      Height = 16
      Caption = 'Uf'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 130
      Top = 235
      Width = 39
      Height = 16
      Caption = 'Cidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 474
      Top = 235
      Width = 45
      Height = 16
      Caption = 'Numero'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 10
      Top = 84
      Width = 50
      Height = 16
      Caption = 'Empresa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 297
      Top = 84
      Width = 34
      Height = 16
      Caption = 'Cargo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 490
      Top = 84
      Width = 102
      Height = 16
      Caption = 'Data de admiss'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 10
      Top = 307
      Width = 46
      Height = 16
      Caption = 'Resumo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edName: TDBEdit
      Left = 10
      Top = 48
      Width = 615
      Height = 24
      DataField = 'Name'
      DataSource = dsFunction
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edAddress: TDBEdit
      Left = 10
      Top = 192
      Width = 615
      Height = 24
      DataField = 'Address'
      DataSource = dsFunction
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object cbbUf: TDBComboBox
      Left = 10
      Top = 268
      Width = 79
      Height = 24
      DataField = 'Uf'
      DataSource = dsFunction
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Items.Strings = (
        'AC'
        'AL'
        'AP'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'PB'
        'PR'
        'PE'
        'PI'
        'RJ'
        'RN'
        'RS'
        'RO'
        'RR'
        'SC'
        'SP'
        'SE'
        'TO')
      ParentFont = False
      TabOrder = 5
    end
    object EdNumber: TDBEdit
      Left = 474
      Top = 268
      Width = 151
      Height = 24
      DataField = 'Number'
      DataSource = dsFunction
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 7
    end
    object edCity: TDBEdit
      Left = 130
      Top = 268
      Width = 311
      Height = 24
      DataField = 'City'
      DataSource = dsFunction
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object edDate: TDBEdit
      Left = 490
      Top = 117
      Width = 135
      Height = 24
      DataField = 'AdmissionDate'
      DataSource = dsFunction
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBMemo1: TDBMemo
      Left = 10
      Top = 336
      Width = 615
      Height = 73
      DataField = 'Summary'
      DataSource = dsFunction
      TabOrder = 8
    end
    object edOffice: TDBEdit
      Left = 297
      Top = 117
      Width = 168
      Height = 24
      DataField = 'Office'
      DataSource = dsFunction
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object cbbStore: TDBLookupComboBox
      Left = 11
      Top = 117
      Width = 262
      Height = 24
      DataField = 'StoreId'
      DataSource = dsFunction
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'Id'
      ListField = 'Name'
      ListSource = dsList
      ParentFont = False
      TabOrder = 1
    end
  end
  object dsList: TDataSource
    AutoEdit = False
    DataSet = Dm.QStoreList
    Left = 704
    Top = 280
  end
end
