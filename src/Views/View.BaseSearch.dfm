object frmBaseSearch: TfrmBaseSearch
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmBaseSearch'
  ClientHeight = 768
  ClientWidth = 1024
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1024
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
      Width = 1011
      Height = 101
      Margins.Left = 10
      Margins.Bottom = 0
      Align = alClient
      Caption = 'Cadastros Base'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 164
      ExplicitHeight = 25
    end
    object pnlbuttonsTop: TPanel
      Left = 0
      Top = 0
      Width = 1024
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      ShowCaption = False
      TabOrder = 0
    end
  end
  object pnlContainer: TPanel
    Left = 0
    Top = 145
    Width = 1024
    Height = 623
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    object pnlButtonRight: TPanel
      AlignWithMargins = True
      Left = 836
      Top = 0
      Width = 185
      Height = 623
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alRight
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      ShowCaption = False
      TabOrder = 0
      object pnlFilter: TPanel
        Left = 0
        Top = 0
        Width = 185
        Height = 50
        Align = alTop
        BevelOuter = bvNone
        Caption = 'pnlFilter'
        Color = clWhite
        ParentBackground = False
        ShowCaption = False
        TabOrder = 0
        object imgFilter: TImage
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
            485973000000750000007501E3C207650000001974455874536F667477617265
            007777772E696E6B73636170652E6F72679BEE3C1A000001974944415478DAED
            96BD2F03711C877F970E5DBC0C6213AB9811123120116291A89809032B22FE05
            2FAB85304B4F621192A60C2288741683456C583030483DBFF64B5A7ABDD7DE0D
            EE977CFA4D73779FE7B96B7B57432935433648830A77BD900583974BD21D32FC
            7B5D698139B21991C0BC91CFE79561186BBC590C19BE0E7BA920A017123B8CA9
            90E0BB70A70BDC128104C3246335861F9014DCCF32019148328E487F8DE0A764
            04E6C70FB3544024EA65C78E80E1397D62F05ECB78BF0544A2997146DA0282DF
            923E588F7F58950444A295714E5A7CC21F482F9CFB8A1C2B019168972BD1E411
            FE2C677E63C9A82620125D8C1352E712FE4606E8BFAEDA6F272012838C439274
            08D7DFF251BAB3B6DD4E0444629CB1471236BBEADFF724BDFB8E7A9D0A88847E
            726ED9EC364BE7B6E34E3702229166A42C369BF44DB8EAF320A03F0AD36273CA
            E9A5F72330AC8AB7EB4A4BDF668F6381582016F8D7029DF4E5A212C8D035E4AA
            2C408127D243D75D1402EFAAF8C7E3C22D3C08017DB07EF6A7BDC0831058E6F8
            55AF70AF028D8C0CC972EC8A1FB85E5F3DCDF95F1209DCF20000000049454E44
            AE426082}
          Proportional = True
          ExplicitLeft = 4
          ExplicitTop = 4
          ExplicitHeight = 33
        end
        object ShapeFilter: TShape
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
        object btnFilter: TSpeedButton
          Left = 36
          Top = 0
          Width = 149
          Height = 50
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Filtrar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnFilterClick
          ExplicitLeft = 39
          ExplicitTop = -47
        end
      end
      object pnlAll: TPanel
        Left = 0
        Top = 50
        Width = 185
        Height = 50
        Align = alTop
        BevelOuter = bvNone
        Caption = 'pnlFilter'
        Color = clWhite
        ParentBackground = False
        ShowCaption = False
        TabOrder = 1
        object imgAll: TImage
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
            007777772E696E6B73636170652E6F72679BEE3C1A000002824944415478DAC5
            975B884F411CC77F6B293C588FD844286509B1485E5C9E961072290F44621F24
            C903F1E2795D8A22252F4272CB52889648BCD836520A8B5CD6FDD25A6C2E9F5F
            337F9D4EFF9933B37B4EBEF569FFEDF9CFFC3F67CECC6FE65488C922D80A35D0
            4BE2321D9A6010BC8C6C2B15301F4EC7362C23701B56C1BD5881BB302E078127
            D01766C648A8C04F891F7697C050781323A1027FBAF1E3E5042446A228816089
            3C05A641EFD4B577D05CB4C01A38D8D5C67908FC82679E7E36C3C92205B2B212
            0E870ABC86F1F66F48068A294083F312F804B3E063A0C000B8005589F6A7E03A
            B4413F3193F061A84077B217B647C83B051EC00B4F9B4A98027D12FF5B07FBC5
            54D415B0504C4DF80A37ACDCA31001FDD28800F1A570D47EDE031BA01A1AA5FC
            BEF203D64A99B99016E8842DF02563D4968B293CEF613874C01D18EB69F71BEA
            E062D62388890EBB0E7F3DEC0BF8BE3EDE513E01B53C64EFCC97D9301A96C131
            B8023302A5C748627F480BE8721919D0C962382EEE8DC8173D009D750988BDD8
            E6E9A0D28E80D6803970DEDE514DA0C054B8E51388C9266880036236A5AC7458
            F17F933C2DF00D56C35B4F27DA46CF7E4BE0A698D5A0F3A1D98E8E2FBB6063BA
            B3A4C07331CBAA33A3A3E4ACD743C755580FBB6D9FAE3489796CED2E018DAE80
            CF9E4E7AC090C40FB5C264312720AD800DF67A29DFC59C17B47AD6C2353173A8
            DD25D095DC87B9F0D80A4E80616226730B7C80FE70292D91E766A477B4534C1D
            69757CA7CA4A4C12B347D4157520790AAFC46CC73BC414AB5274242EC34468FC
            5F27229538033DF37831C98A6E5C475C17F37835CB8AEE902D3E817976388AC8
            3931ABC399D25A5E20E6F55C77AA3C1E8716B413B04D4C7575E62F6945A6A5E6
            FB63DE0000000049454E44AE426082}
          Proportional = True
          ExplicitLeft = 4
          ExplicitTop = 4
          ExplicitHeight = 33
        end
        object ShapeAll: TShape
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
        object btnAll: TSpeedButton
          Left = 36
          Top = 0
          Width = 149
          Height = 50
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Todos'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnAllClick
          ExplicitLeft = 39
          ExplicitTop = 3
        end
      end
      object pnlAdd: TPanel
        Left = 0
        Top = 100
        Width = 185
        Height = 50
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Incluir'
        Color = clWhite
        ParentBackground = False
        ShowCaption = False
        TabOrder = 2
        object imgAdd: TImage
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
            007777772E696E6B73636170652E6F72679BEE3C1A0000018F4944415478DAED
            97CB2B445118C0CF084B564449597833599385054A76C84AF25878147F0BE551
            AC64A3CC46C96363C31F40A6C10A1BC38AA53CC6EF73CEADEB6A9A3A67DC11F3
            D5AFF99AD33DDFEFDE9973CFF922EA6B14C1280C432B944344B9450A1EE00CB6
            60035EBC41FFE42D10833AC78299E2020621EE1790E22750F2C3C5BD78820E91
            100179ECE721DC79301210158149580BB9B817E3227008DD3912D81701F98796
            E5482029026F506039C1BBF9B4BE5E045296175F42A7D22BE9186A6D26711158
            8659932FC14CD8028B306FF20598CB0BFC59812BD8517AB9FAE3080E4CDE0B5D
            81F142E8834657811AB8B67C4AD570E32A203B65DC52A05EE9EDD749405ED57B
            F01CF85EF69098C907A027305EACF44F53E92A902EFECF2AC80BA48B559836F9
            0A4C852D700BFD668E5DA8B215703990B8C6E781E45EE906241771F72B0EA513
            B09E238131AF3191BEAD21E4E2B2BFB479AD59B3D2AD596948C51FA11D12FEE6
            B409B65586FD3B4B773EA4746BF6ADF59643C488D2ED79142A5476DAF3249C2A
            DD9E6FC2AB37F801C24C610F61FCE5D20000000049454E44AE426082}
          Proportional = True
          ExplicitLeft = 4
          ExplicitTop = 4
          ExplicitHeight = 33
        end
        object ShapeAdd: TShape
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
        object btnAdd: TSpeedButton
          Left = 36
          Top = 0
          Width = 149
          Height = 50
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Incluir'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnAddClick
          ExplicitLeft = 39
          ExplicitTop = 3
        end
      end
      object pnlAlter: TPanel
        Left = 0
        Top = 150
        Width = 185
        Height = 50
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Incluir'
        Color = clWhite
        ParentBackground = False
        ShowCaption = False
        TabOrder = 3
        object imgAlter: TImage
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
            007777772E696E6B73636170652E6F72679BEE3C1A000001C14944415478DAED
            964B28445118C7CF84B2F458D8D85890944C4A912C48B153449285C7CECE14F2
            5A08B3206BA558D9B0402C0879A42C94614FB1B3F1CCC2FBF13BEE9D1A77AECB
            CC377357BEFA2DE6DCDBFDFFBE73CE9C7B3DCADDEA8421D88526B8F7B818DE05
            6321BFF7A1DA4D810118B68CADB821D00A8B706B2371176F81E0B41F41255C5B
            247C418162E8813C48140406A0199E54F89A5B25DEC1AF05CA61031284DD06CC
            801B9B703B89AFD2027A3796C430BC0F461DEE6D8799508107488E73E7C11A84
            91D0012DF021083F36C3AFA209970A88C32502D14CBB5EE6C7580844D3790A4C
            41835440875744D8792A6C421A644904DE20174EA3082F8473A9C0B6D9BD3EB8
            B61CEEEB07BF32A67D1D8ACC71B140074CC234B4FDD2B9355C2CA0CFED4CB884
            0B488F305C2CB0A38CA9AF823587F0D035B79648601CBA61027CE698FE1B2EC1
            AC29E8142E169883462880165855C6467C35AF67C33C781D9E211278816AF57D
            F767401DD44399FAFD752E12D0A5CF81653853C634FF2534A602D2FA17F817F8
            51E019925C1038811C3B01FDA9EC8DF87191D78232CE8D30811A651CA9F12C7D
            6296C2819D80AE5A65BCC7F3556C97437F031E422FECD9DDF009B6019141B4AF
            CDD20000000049454E44AE426082}
          Proportional = True
          ExplicitLeft = 4
          ExplicitTop = 4
          ExplicitHeight = 33
        end
        object ShapeAlter: TShape
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
        object btnAlter: TSpeedButton
          Left = 36
          Top = 0
          Width = 149
          Height = 50
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Alterar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnAlterClick
          ExplicitLeft = 39
          ExplicitTop = 3
        end
      end
      object pnlDelete: TPanel
        Left = 0
        Top = 200
        Width = 185
        Height = 50
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Incluir'
        Color = clWhite
        ParentBackground = False
        ShowCaption = False
        TabOrder = 4
        object imgDelete: TImage
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
            485973000000DD000000DD017053A2070000001974455874536F667477617265
            007777772E696E6B73636170652E6F72679BEE3C1A0000037C4944415478DAC5
            975D4CCD611CC7FF0785CD5B6133C9ACC445D9BCCE4BB9D1B8F05E8D0BD59DB2
            21C94822E6FD7548B12977C905535EBB60DC282F436C7481CA46CC86081B2AE5
            F3EBFC4FFEE739FF739E830ECFF6DDEFD9F3FBFE9EEFF73C9DF33CBF1CEDEDED
            863FC3E170C41332C16CD0DD0BED07A800F9EC7BCDAF7DFD31807808E115E80D
            1A4C21BB21C68681AF208CBD3F7495810CC211B011FE2E0D3797B013AC825BF0
            5B06281E4E88B0E1AD0449200F546AF68C03DBC159506893AF47F3858701C4B7
            1036836EDA23F9BBD106B6A1BBB5D300E222DA08FA0758DC359A4028DA6DD613
            28272CFC4706CEA19BD07902A68160C222101560F167E00CBACD6E06FED7507F
            05F21DC80FB066269A4DDE0CF4247C0BB0815E687EB735609AF844E8AB145583
            03E02808B1AC1F34E31ACB9A7C3AB937B2C078659FCFE8F573D3B331504B8854
            0A73E0ED2577DA707E515D23D48C8D9635F9822D86BB9EF91E659F3A72237506
            6E11A628853BE0E5912B629E6659779D86F5CE2F869B0E576EC34DCA3EB7C94D
            D519384F98AF1416C2CB20B78FF93A8D81FD70B3E116987F0AEBB8406E81CE40
            3161A95278125EAAE5A1F165A0E3C1825BC23C45D9E704B934373D1B03F2DA6D
            500A2FC19B476EB9E1FC22FA32B002EE31B81799CF55F6D94D2E57676035E190
            5258096F3AB925CC4B350692E19E827BC370BE8CD69145EEB0CE40B21CB952F8
            18DE1872D20D5DD6189803B702EE23E631CA3E29E44ADDF46C0CCC245C510A1B
            E085939BC6BC4A632016EE4DB82F0D6777641DB3C85DD519184B78A014765C20
            E4A2E534340662E0D678B9D0C6917BA83330D470F67FEAE8018618CE9ED09701
            F9D46F40ABCD1ED227BED619082234DB140F0472877FD118E803E44D796FB347
            307A2D3E0D982664C301CA7224DC7A722DE669D8196885130447FACA3AA5FE23
            B9100F2D2F069E104629CB13E056937BCB7C901703EFE00C86238FD07DA5FE29
            B9D1FE1A90CE3756598E877B9D9C7434AE074535500B270ACE0CE6EA3F2655E4
            E23CB4BC1828232428CB4970CBC8DD653ED18B817B7026C149349C6DB9759493
            4BF4D7C07142BAB29C03E431923F8FAB6F8C36638D19E574E498B30DCFA7B808
            AD65FE1AB07B4AE567253FC1119635571F106A597B0EC28D5F5F54D7E878D2FD
            3520AF5889D1B523152DF58AF76A405AF47A10D645E272B145B85A71AD01D3C4
            64C25A200D44D01F0ACB9D210DCE0174EED8117E022CA9B3D03C56CA47000000
            0049454E44AE426082}
          Proportional = True
          ExplicitLeft = 4
          ExplicitTop = 4
          ExplicitHeight = 33
        end
        object ShapeDelete: TShape
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
        object btnDelete: TSpeedButton
          Left = 36
          Top = 0
          Width = 149
          Height = 50
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Excluir'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnDeleteClick
          ExplicitLeft = 39
          ExplicitTop = 3
        end
      end
      object pnlSearch: TPanel
        Left = 0
        Top = 250
        Width = 185
        Height = 50
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Incluir'
        Color = clWhite
        ParentBackground = False
        ShowCaption = False
        TabOrder = 5
        object imgSearch: TImage
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
            007777772E696E6B73636170652E6F72679BEE3C1A000002D34944415478DAC5
            975B884E5114C7D7474C2E518CEB48924B3C280F62342F4862DC32F1209A17C4
            B88F863C50E4D24899082999520A8DD030241272193C11695C1A198A4C286128
            E3FF6F9F9D3D7BCED9677FE7347DAB7E0F7B9D73BEF53F6BAFB3F6FA3292DCF2
            C19C80516010E8093E822670075C040FC0DFA81FC92408DC1754800D20CFE3FE
            17603BA801AD69052C00D5A05702E1756031F89654C056B03B61D6CC6C148337
            D90A58018E455C6B0457C02BF0130C0013C11409DF228A98A433E123A010DC02
            5D427E6833A88D78AE1FD806CA4067EBDA6530DB4700AFD78309969FD5BD047C
            F7788199E0B4B4AF9BB9141F276021386BF96E83E9E0B747705344AD95896760
            5C9C80BAE0616DDCE3D1E05D16C1B51D026B2C5FA14B0053F649DA16D241B03E
            41705AFF407857C357E912300D5CB77C45E06E4201B4AB6086B1BEE712B0149C
            34D6AD4136FEA410B0435457D4F6D62580ED769FB16E16D5FFD3D82A70C458B7
            64B2B8F917E8965200FB46A5B1FEEC12301F9CB77C05E0430A0147C14A63FDD4
            2560ACA86FD5B4E5E078C2E08CD508861ABE9AB83ED000461AEB2760BC38CE77
            87F1243D67F94AE304B0082B2CDF6A695B1B3EC69EF2D87A99165010278053CE
            4BD0C3F0B105CF02373C83E7056F5E6CF90F80729FD370A7A853CD348A281755
            54AEED18064E81C996FF4B908D669700CE79BB4029B826AA0BDAC69A382CEACC
            6832DE98F3C022B04CDACF04143C0F5CE2224A0083DF0483C15E5005EE83E10E
            C1EC133F409F988CB2A6F6EB45980033B8B675E08CA8BD2C9264C6A26373AB36
            9DB680B0E0DAF688DA922D6093A811DCD7983D9EA28FEC0BA60057706D1CAD39
            A40C14359697801111F7724B789A9E00172464243705F804670BE6A0D960F9C7
            88AAE821A0BBA83F26EFC143F118D932C183F50983A7B64C90D6925C04D702BE
            82DEB908AE05BC96F0EF9B7B39153CEFA8E05A003F8FAA5C04D7023A81B501FC
            E7CB4F67A3FC6FAD1D6AFF003A1E9259B651664C0000000049454E44AE426082}
          Proportional = True
          ExplicitLeft = 4
          ExplicitTop = 4
          ExplicitHeight = 33
        end
        object ShapeSearch: TShape
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
        object btnSearch: TSpeedButton
          Left = 36
          Top = 0
          Width = 149
          Height = 50
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Consultar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnSearchClick
          ExplicitLeft = 39
          ExplicitTop = 3
        end
      end
      object pnlClose: TPanel
        Left = 0
        Top = 573
        Width = 185
        Height = 50
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Incluir'
        Color = clWhite
        ParentBackground = False
        ShowCaption = False
        TabOrder = 6
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
        object btnClose: TSpeedButton
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
          OnClick = btnCloseClick
          ExplicitLeft = 39
          ExplicitTop = 3
        end
      end
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 833
      Height = 623
      Align = alClient
      BorderStyle = bsNone
      DataSource = dsSearch
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object cdsSearch: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 696
    Top = 464
  end
  object dsSearch: TDataSource
    DataSet = cdsSearch
    Left = 792
    Top = 464
  end
end
