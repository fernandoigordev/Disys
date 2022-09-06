object frmViewBaseFunction: TfrmViewBaseFunction
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frmViewBaseFunction'
  ClientHeight = 561
  ClientWidth = 844
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 844
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
      Width = 831
      Height = 101
      Margins.Left = 10
      Margins.Bottom = 0
      Align = alClient
      Caption = 'Manuten'#231#227'o Base'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 186
      ExplicitHeight = 25
    end
    object pnlbuttonsTop: TPanel
      Left = 0
      Top = 0
      Width = 844
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      ShowCaption = False
      TabOrder = 0
    end
  end
  object pnlButtonRight: TPanel
    AlignWithMargins = True
    Left = 656
    Top = 145
    Width = 185
    Height = 416
    Margins.Top = 0
    Margins.Bottom = 0
    Align = alRight
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    object DBNavigator: TDBNavigator
      Left = 0
      Top = 0
      Width = 185
      Height = 48
      DataSource = dsFunction
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alTop
      DragCursor = crHandPoint
      Flat = True
      Ctl3D = True
      Hints.Strings = (
        'Primeiro registro'
        'Registro anterior'
        'Pr'#243'ximo registro'
        #218'ltimo registro'
        'Insert record'
        'Delete record'
        'Edit record'
        'Post edit'
        'Cancel edit'
        'Refresh data'
        'Apply updates'
        'Cancel updates')
      ParentCtl3D = False
      TabOrder = 0
    end
    object pnlClose: TPanel
      Left = 0
      Top = 366
      Width = 185
      Height = 50
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'Incluir'
      Color = clWhite
      ParentBackground = False
      ShowCaption = False
      TabOrder = 1
      object imgClose: TImage
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 33
        Height = 44
        Margins.Right = 0
        Align = alLeft
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF40000000473424954080808087C0864880000000970
          485973000000EC000000EC01792871BD0000001974455874536F667477617265
          007777772E696E6B73636170652E6F72679BEE3C1A000000EE4944415478DA63
          641860C008A58F00B12A109F00E2E3507C0688BFD2CB01FFB1C8FD05E29B407C
          16EAC0A3407C0D875A9A38001BF808C4A7A18E0139EC30107FA0A703A81E4A94
          3A001BD80BC42E03E9006473471D307C1DF00A883D81580288B7D2DB0120CB9D
          81F80A109B3040CA05BA39E035D4F2CB40AC01C4FBA1A140170720FB5C870192
          DFC5480839183800C48EA43A805A9693ED00505C9F25D342BC60C838003DF1ED
          03624922CCA59A03487504DDB2212E47D0AD2032668034DDE8EA009823BC8098
          9501D27EA4BB03883577D40123D301746D94D2BD594ED78E095DBB66209FA831
          0C60E774C000004ADD6A21BD5E4F5D0000000049454E44AE426082}
        Proportional = True
        ExplicitLeft = 4
        ExplicitTop = 4
        ExplicitHeight = 33
      end
      object ShapeClose: TShape
        AlignWithMargins = True
        Left = 36
        Top = 3
        Width = 146
        Height = 44
        Cursor = crHandPoint
        Margins.Left = 0
        Align = alClient
        Brush.Color = 11829830
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitLeft = 64
        ExplicitTop = -8
        ExplicitWidth = 65
        ExplicitHeight = 65
      end
      object SpeedButton1: TSpeedButton
        Left = 36
        Top = 0
        Width = 149
        Height = 50
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Sair'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = Image1Click
        ExplicitLeft = 39
        ExplicitTop = 3
      end
    end
    object pnlOk: TPanel
      Left = 0
      Top = 316
      Width = 185
      Height = 50
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'Incluir'
      Color = clWhite
      ParentBackground = False
      ShowCaption = False
      TabOrder = 2
      object imgOk: TImage
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 33
        Height = 44
        Margins.Right = 0
        Align = alLeft
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF40000000473424954080808087C0864880000000970
          485973000000EC000000EC01792871BD0000001974455874536F667477617265
          007777772E696E6B73636170652E6F72679BEE3C1A0000012B4944415478DAD5
          D7314B02611CC7F1C7A6B03687481CA2A1295783489788867A1136393847B8D4
          26218E4E2EA5BE86225AB3A5B6B6A64A289D031B5CF4FB740A1778780F78FEE8
          0F9FE5F1B9E37B828F1A33E289FDE78075D4B18F5714F0B4A8007B5D1BBBBEB5
          6FA4D15944C001EEA7ACD7C7EF44E40177389CB2FE8954D401DB7809B87688A5
          A803AE909FD73D5D03D6F08E65554019A579DED36573DC781FB1842AA0885A88
          7D59E39D114E018FE6EFA1E29FF6F8A6F6B4DB7279BA80F9420BE7184C028621
          4267ED719D4B9494015D2495017DAC2A03DEB0A90CB05FDD3BCA801B1C2B03AE
          71A20CA8E04C19708AAA32208F8632E008B7CA800C9E95011BF85006ACE04715
          D033DE1F1BA30AF83D03FC010FD80BD86C5FCBCDD81376EC8F91262E30F007C8
          461E300201A34E21FC70D5740000000049454E44AE426082}
        Proportional = True
        ExplicitLeft = 4
        ExplicitTop = 4
        ExplicitHeight = 33
      end
      object ShapeOk: TShape
        AlignWithMargins = True
        Left = 36
        Top = 3
        Width = 146
        Height = 44
        Cursor = crHandPoint
        Margins.Left = 0
        Align = alClient
        Brush.Color = 11829830
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitLeft = 64
        ExplicitTop = -8
        ExplicitWidth = 65
        ExplicitHeight = 65
      end
      object btnOk: TSpeedButton
        Left = 36
        Top = 0
        Width = 149
        Height = 50
        Cursor = crHandPoint
        Align = alClient
        Caption = 'OK'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = btnOkClick
        ExplicitLeft = 39
        ExplicitTop = 3
      end
    end
    object pnlRestore: TPanel
      Left = 0
      Top = 48
      Width = 185
      Height = 50
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      ShowCaption = False
      TabOrder = 3
      object imgRestore: TImage
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 33
        Height = 44
        Margins.Right = 0
        Align = alLeft
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF40000000473424954080808087C0864880000000970
          485973000000EC000000EC01792871BD0000001974455874536F667477617265
          007777772E696E6B73636170652E6F72679BEE3C1A000002CA4944415478DAD5
          97DB8BCD5114C7D7604C492E799108B95F1E5C322EF1E0162FCC309362E4D103
          127249C4197729F1E02F40E3D6CC110F44F3E09A928626665EDC13797279718B
          EFB7BD7F5967DBFB77F63967EA64D5A773D6FAEDCBF7ACBDF7FAED532165B68A
          FF514037301D2C0673C12030D03E7B03DE835BE03278D49502BA831560179810
          D9A7D3B66F06BF4B11301434819945648C760F348097C508980F2E82FE454E9E
          D847502F6679A205CC01D7402F27FE035C0257C00331EBCEB1068329A0D6D2D3
          E9F71D2CD422D2040C076DA08F136F019BC0EB3CE247806360992713DCC42FD2
          04307E13CC53316EA22DE04481A9DF0E0E8B393D89714FCCE6982101ABC05927
          C65F7DB2C0C9B588A34EAC0E3487043C045395CFB42F0FB4758F57684C8E51AB
          FC6760BCAFF10C705FF9DC7063C4AE5909024682A7A052C526FB1AEF06FB957F
          0EAC94B0C50AA0F138D72B3FE36BCC63B748F9DC0F4D5D2480C5E88CF25BD978
          0738227196018D2508E0527628BF33691C23C237B94F00D7F867608CDEE08BF2
          BF6AB569224293FB043C01EBC11D4F5B16B54FCAFFECA6CB27226D729F8024C6
          B5DE063EA8F85831C72FB10EDF7A71C2BDF67BA3F5D36C23D807FA7A9EF13EA0
          EBC96A705AF9ADA10D93713EF3D900B0076C90DC92BB045C557ED4312CC5A681
          53F6936FCAA5EAD968D02EB9856852AC802AF02DB26D0FB0CEFEF2E736C679B2
          8EA06029766DA29842741E1C2832333BC12127C6D774364D009F6DB61DAB6C6C
          2B382E81FB5D600C9EAC8392BB37EE8A791DA756AD61E0B1FC7B21B901D68AE7
          7EE7D8283117921A27CE0B09F7C8AB7C0268BC7A67550612FB05AE8BB933B4DB
          C1181B22E6D8D5582A9D7EBC922D00B7758AF2195F4C173C9928D4F8CBEBF4E4
          B1029274B2B255173939D7BCC1662AC70AA903DC446BC45CAFC645F6E151E31F
          93965083620A11FBCC1253E5AAAD987E62DE806FC13BF9FBD7AC2D66B0B25AD9
          05FC01DB4C8D8B6E8B4E430000000049454E44AE426082}
        Proportional = True
        ExplicitLeft = 4
        ExplicitTop = 4
        ExplicitHeight = 33
      end
      object ShapeRestore: TShape
        AlignWithMargins = True
        Left = 36
        Top = 3
        Width = 146
        Height = 44
        Cursor = crHandPoint
        Margins.Left = 0
        Align = alClient
        Brush.Color = 11829830
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitLeft = 64
        ExplicitTop = -8
        ExplicitWidth = 65
        ExplicitHeight = 65
      end
      object btnRestore: TSpeedButton
        Left = 36
        Top = 0
        Width = 149
        Height = 50
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Restaurar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = btnRestoreClick
        ExplicitLeft = 39
        ExplicitTop = 3
      end
    end
  end
  object pnlContainer: TPanel
    Left = 0
    Top = 145
    Width = 653
    Height = 416
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    ShowCaption = False
    TabOrder = 2
  end
  object dsFunction: TDataSource
    AutoEdit = False
    Left = 672
    Top = 360
  end
end
