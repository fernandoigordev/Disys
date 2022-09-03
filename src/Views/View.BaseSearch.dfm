object frmBaseSearch: TfrmBaseSearch
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmBaseSearch'
  ClientHeight = 590
  ClientWidth = 850
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 850
    Height = 145
    Align = alTop
    BevelOuter = bvNone
    Color = 11829830
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 44
      Width = 837
      Height = 101
      Margins.Left = 10
      Margins.Bottom = 0
      Align = alClient
      Caption = 'Cadastros de Lojas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitLeft = 0
      ExplicitTop = 41
      ExplicitWidth = 202
      ExplicitHeight = 25
    end
    object pnlbuttonsTop: TPanel
      Left = 0
      Top = 0
      Width = 850
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      ShowCaption = False
      TabOrder = 0
      ExplicitLeft = 336
      ExplicitTop = 56
      ExplicitWidth = 185
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 45
        Height = 41
        Align = alLeft
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          0020100400000089E36E3C0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D23320000000970485973000000600000006000F06B42CF0000
          000774494D4507E60903120A2DB3FE5C41000001264944415478DAD597CB0E01
          311486CF2C853D3B0B9EC34248266E0F261EC35E2248AC2621C1C63B78032184
          44A8BFC6085175999E364EF2773A979EFFCB4C3B6D3D721CDEDF0108CAA0CC41
          33343EDA05105442D981525000D591606B072034EF4289BBAB7D24A8F103A8CD
          A34820C99E0F406F3E44029FEF0D082AA01C4049C5DD29E423C19A07C086F94B
          005BE64A009BE64F00B6CD1F00F4E673A88C879746CD6F00FAA176805AD0CAB0
          F50E6A9327A8884AEF8539774C24C00295AC037319C235C0C9F527083EE984B2
          B334AF4793B1A14B278C4EF5C370045562CFFDAAF8E2472421AA68B0E1037001
          F1C36434A6F0739881F8713A3607116341620622E692AC8704755E80F710CC8B
          523D84A565F923C4FDC6A4C1DF079E21D228F3E4646BC611CE01CEEB3C67BAFD
          F978530000002574455874646174653A63726561746500323032322D30392D30
          335431383A31303A34352B30303A303005B74ADB000000257445587464617465
          3A6D6F6469667900323032322D30392D30335431383A31303A34352B30303A30
          3074EAF2670000002874455874646174653A74696D657374616D700032303232
          2D30392D30335431383A31303A34352B30303A303023FFD3B80000000049454E
          44AE426082}
        Proportional = True
      end
    end
  end
  object pnlContainer: TPanel
    Left = 0
    Top = 145
    Width = 850
    Height = 445
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    ExplicitLeft = 344
    ExplicitTop = 272
    ExplicitWidth = 185
    ExplicitHeight = 41
    object pnlButtonRight: TPanel
      AlignWithMargins = True
      Left = 662
      Top = 0
      Width = 185
      Height = 445
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alRight
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      ShowCaption = False
      TabOrder = 0
      ExplicitTop = 3
      ExplicitHeight = 404
      object btnClose: TSpeedButton
        Left = 0
        Top = 397
        Width = 185
        Height = 48
        Align = alBottom
        Caption = 'Sair'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 183
      end
      object btnSearch: TSpeedButton
        Left = 0
        Top = 240
        Width = 185
        Height = 48
        Align = alTop
        Caption = 'Consultar'
        ExplicitLeft = 3
        ExplicitTop = 246
      end
      object btnDelete: TSpeedButton
        Left = 0
        Top = 192
        Width = 185
        Height = 48
        Align = alTop
        Caption = 'Excluir'
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 183
      end
      object btnAlter: TSpeedButton
        Left = 0
        Top = 144
        Width = 185
        Height = 48
        Align = alTop
        Caption = 'Alterar'
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 183
      end
      object btnAdd: TSpeedButton
        Left = 0
        Top = 96
        Width = 185
        Height = 48
        Align = alTop
        Caption = 'Incluir'
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 183
      end
      object btnAll: TSpeedButton
        Left = 0
        Top = 48
        Width = 185
        Height = 48
        Align = alTop
        Caption = 'Todos'
        ExplicitLeft = 3
        ExplicitTop = 42
      end
      object btnFilter: TSpeedButton
        Left = 0
        Top = 0
        Width = 185
        Height = 48
        Align = alTop
        Caption = 'Filtrar'
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 183
      end
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 659
      Height = 445
      Align = alClient
      BorderStyle = bsNone
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end
