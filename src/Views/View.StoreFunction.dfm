inherited frmViewStoreFunction: TfrmViewStoreFunction
  Caption = ''
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTop: TPanel
    inherited Label1: TLabel
      Caption = 'Manuten'#231#227'o de Lojas'
      ExplicitWidth = 224
    end
  end
  inherited pnlContainer: TPanel
    Padding.Left = 10
    Padding.Right = 10
    ExplicitTop = 148
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
      Top = 87
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
      Top = 163
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
    object Label5: TLabel
      Left = 474
      Top = 163
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
    object Label6: TLabel
      Left = 130
      Top = 163
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
    object DBEdit1: TDBEdit
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
    object DBEdit2: TDBEdit
      Left = 10
      Top = 120
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
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 474
      Top = 196
      Width = 151
      Height = 24
      DataField = 'Number'
      DataSource = dsFunction
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBComboBox1: TDBComboBox
      Left = 10
      Top = 196
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
      TabOrder = 3
    end
  end
  object DBEdit5: TDBEdit [3]
    Left = 130
    Top = 341
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
    TabOrder = 3
  end
  inherited dsFunction: TDataSource
    AutoEdit = False
  end
end
