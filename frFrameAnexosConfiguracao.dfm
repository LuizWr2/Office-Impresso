object FrameAnexosConfiguracao: TFrameAnexosConfiguracao
  Left = 0
  Top = 0
  Caption = 'Configura'#231#227'o dos anexos'
  ClientHeight = 444
  ClientWidth = 755
  Color = clBtnFace
  Constraints.MinHeight = 400
  Constraints.MinWidth = 766
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001001010000000002000680400001600000028000000100000002000
    0000010020000000000040040000000000000000000000000000000000003333
    3387333333F5333333FF333333FF333333FF333333FF333333FF333333FF3333
    33FF333333FF333333FF333333FF333333FF333333ED33333355FFFFFF013333
    33F5333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
    33FF333333FF333333FF3232329932323299333333FF333333BBFFFFFF013333
    33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
    33FF333333FF333333FF3333336533333365333333FF333333C5FFFFFF013333
    33B5323232FB333333FF333333FF333333FF333333FF333333FF333333FF3333
    33FF333333FF333333FF333333F5333333F5333333F53333337FFFFFFF013333
    3391333333853333336333333363333333633333336333333363333333633333
    3363333333633333336333333363333333653333338B33333371FFFFFF013333
    33A5333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
    33FF333333FF333333FF333333FF333333FF333333FF33333373FFFFFF013333
    3353333333F3333333FF333333FF333333FF333333FF333333FF333333E93333
    33BB333333B3333333D9333333E3333333E5333333EF3333332BFFFFFF013333
    3319333333D3333333FF333333FF333333FF333333FF333333DB333333573333
    336D3333337133333349333333513232324B333333613333330FFFFFFF01FFFF
    FF0133333381333333FF333333FF333333FD333333B533333351333333BD3333
    33D9333333C9333333FD333333F5323232F13232326133333305FFFFFF01FFFF
    FF0133333337333333F1333333FF323232C53232325B333333C9333333E93333
    333133333325323232AD333333533333338F333333EB3333339F33333323FFFF
    FF013333330B33333397333333F933333369323232C5333333AB32323241FFFF
    FF01FFFFFF013333330D33333303333333233333337F333333D1323232A9FFFF
    FF01FFFFFF0133333309333333233333331D323232D933333365FFFFFF01FFFF
    FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF013232320333333375333333D7FFFF
    FF01FFFFFF01FFFFFF01FFFFFF0133333309323232A3333333D33232327BFFFF
    FF01FFFFFF0132323203333333053333330533333367333333D5333333A7FFFF
    FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF0133333319333333A1323232E93333
    330BFFFFFF01333333393333337D3333335F333333ED3333339B3333331FFFFF
    FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF013232322B333333D73333
    33A53333336F333333D1333333DD333333D33333339B33333315FFFFFF01FFFF
    FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF0133333303333333413333
    33C1333333D5333333A5333333353333332B33333307FFFFFF01FFFFFF010000
    FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
    FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF}
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 153
    Top = 0
    Width = 602
    Height = 444
    Align = alClient
    TabOrder = 1
    DesignSize = (
      602
      444)
    object ProgressLabel: TLabel
      Left = 400
      Top = 218
      Width = 177
      Height = 13
      AutoSize = False
    end
    object Label4: TLabel
      Left = 403
      Top = 339
      Width = 39
      Height = 13
      Caption = 'Pessoas'
    end
    object Label5: TLabel
      Left = 405
      Top = 374
      Width = 38
      Height = 13
      Caption = 'Produto'
    end
    object Label6: TLabel
      Left = 405
      Top = 410
      Width = 30
      Height = 13
      Caption = 'Venda'
    end
    object Label7: TLabel
      Left = 172
      Top = 396
      Width = 45
      Height = 13
      Caption = 'Produ'#231#227'o'
    end
    object lblCampo1: TLabel
      Left = 22
      Top = 306
      Width = 39
      Height = 13
      Caption = 'Campo1'
    end
    object lblCampo2: TLabel
      Left = 22
      Top = 334
      Width = 39
      Height = 13
      Caption = 'Campo2'
    end
    object lblCampo3: TLabel
      Left = 22
      Top = 359
      Width = 39
      Height = 13
      Caption = 'Campo3'
    end
    object Label8: TLabel
      Left = 104
      Top = 357
      Width = 239
      Height = 13
      Caption = 'Voc'#234' n'#227'o est'#225' conectado a nenhuma rede.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object TreeView1: TTreeView
      Left = 6
      Top = 23
      Width = 369
      Height = 274
      Anchors = [akLeft, akTop, akBottom]
      HideSelection = False
      Images = ImageList1
      Indent = 19
      TabOrder = 0
      OnChange = TreeView1Change
    end
    object GroupBox1: TGroupBox
      Left = 400
      Top = 210
      Width = 189
      Height = 123
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Details'
      TabOrder = 1
      object Label1: TLabel
        Left = 16
        Top = 32
        Width = 31
        Height = 13
        Caption = 'Name:'
      end
      object Label2: TLabel
        Left = 16
        Top = 64
        Width = 27
        Height = 13
        Caption = 'Date:'
      end
      object Label3: TLabel
        Left = 16
        Top = 96
        Width = 23
        Height = 13
        Caption = 'Size:'
      end
      object FileName: TLabel
        Left = 72
        Top = 32
        Width = 3
        Height = 13
      end
      object Created: TLabel
        Left = 72
        Top = 64
        Width = 3
        Height = 13
      end
      object Size: TLabel
        Left = 72
        Top = 96
        Width = 3
        Height = 13
      end
    end
    object DownloadBtn: TButton
      Left = 400
      Top = 61
      Width = 180
      Height = 25
      Hint = 'Download selected file'
      Caption = 'Download'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = DownloadBtnClick
    end
    object UploadBtn: TButton
      Left = 400
      Top = 101
      Width = 180
      Height = 25
      Hint = 'Upload a file in the root or selected folder'
      Caption = 'Upload'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = UploadBtnClick
    end
    object ProgressBar1: TProgressBar
      Left = 400
      Top = 187
      Width = 180
      Height = 17
      TabOrder = 4
      Visible = False
    end
    object CreateFolderBtn: TButton
      Left = 400
      Top = 16
      Width = 180
      Height = 25
      Hint = 'Create folder under root or selected folder'
      Caption = 'Create folder'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = CreateFolderBtnClick
    end
    object DeleteBtn: TButton
      Left = 400
      Top = 144
      Width = 180
      Height = 25
      Hint = 'Delete the selected file'
      Caption = 'Delete'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = DeleteBtnClick
    end
    object edtLogin: TcxTextEdit
      Left = 104
      Top = 303
      TabOrder = 7
      Width = 271
    end
    object edtSenha: TcxTextEdit
      Left = 104
      Top = 330
      TabOrder = 8
      Width = 271
    end
    object edtCallBack: TcxTextEdit
      Left = 104
      Top = 357
      TabOrder = 9
      Width = 271
    end
    object ProgressBar2: TProgressBar
      Left = 403
      Top = 355
      Width = 103
      Height = 17
      TabOrder = 10
      Visible = False
    end
    object Button2: TButton
      Left = 512
      Top = 347
      Width = 81
      Height = 25
      Hint = 'Limpar Chache'
      Caption = 'Limpar Chache'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = DeleteBtnClick
    end
    object ProgressBar3: TProgressBar
      Left = 404
      Top = 389
      Width = 101
      Height = 17
      TabOrder = 12
      Visible = False
    end
    object Button3: TButton
      Left = 511
      Top = 381
      Width = 83
      Height = 25
      Hint = 'Limpar Chache'
      Caption = 'Limpar Chache'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      OnClick = DeleteBtnClick
    end
    object ProgressBar4: TProgressBar
      Left = 404
      Top = 423
      Width = 101
      Height = 17
      TabOrder = 14
      Visible = False
    end
    object Button4: TButton
      Left = 511
      Top = 415
      Width = 83
      Height = 25
      Hint = 'Limpar Chache'
      Caption = 'Limpar Chache'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
      OnClick = DeleteBtnClick
    end
    object Button5: TButton
      Left = 279
      Top = 407
      Width = 83
      Height = 25
      Hint = 'Limpar Chache'
      Caption = 'Limpar Chache'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
      OnClick = DeleteBtnClick
    end
    object ProgressBar5: TProgressBar
      Left = 172
      Top = 415
      Width = 101
      Height = 17
      TabOrder = 17
      Visible = False
    end
    object btnTentarConectar: TButton
      Left = 22
      Top = 407
      Width = 107
      Height = 25
      Hint = 'Limpar Chache'
      Caption = 'Tentar Conectar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 18
      Visible = False
      OnClick = btnTentarConectarClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 153
    Height = 444
    Align = alLeft
    TabOrder = 0
    object ConnectBtn: TButton
      Left = 10
      Top = 206
      Width = 137
      Height = 25
      Hint = 'Connect to the selected cloud storage'
      Caption = 'Conectar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = ConnectBtnClick
    end
    object DisconnectBtn: TButton
      Left = 10
      Top = 258
      Width = 137
      Height = 25
      Hint = 'Disconnect from cloud storage'
      Caption = 'Desconectar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = DisconnectBtnClick
    end
    object clrAccess: TCheckBox
      Left = 10
      Top = 286
      Width = 121
      Height = 17
      Caption = 'Clear access token'
      TabOrder = 2
    end
    object RadioGroup1: TRadioGroup
      Left = 10
      Top = 16
      Width = 137
      Height = 215
      Caption = 'Selecione cloud storage'
      ItemIndex = 0
      Items.Strings = (
        'Pasta na Rede'
        'Banco Anexo(Firebird)'
        'DropBox'
        'Google Drive'
        'Microsoft OneDrive'
        'Box'
        'Hubic'
        'HiDrive'
        'Yandex Disk')
      TabOrder = 3
      OnClick = RadioGroup1Click
    end
    object Button1: TButton
      Left = 10
      Top = 309
      Width = 137
      Height = 25
      Hint = 'Delete the selected file'
      Caption = 'Migrar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = DeleteBtnClick
    end
    object btnConectar: TButton
      Left = 10
      Top = 227
      Width = 137
      Height = 25
      Hint = 'Disconnect from cloud storage'
      Caption = 'Conectar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = ConnectBtnClick
    end
  end
  object AdvDropBox1: TAdvDropBox
    Agent = 
      'Mozilla/5.0 (Windows NT 10.0; Win64; x64; WebView/3.0) AppleWebK' +
      'it/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36' +
      ' Edge/18.19042'
    App.CallBackURL = 'http://127.0.0.1:8888'
    App.CallBackPort = 8888
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'TOKENS'
    PersistTokens.Key = '.\DTOKENS.INI'
    Logging = True
    OnUploadProgress = AdvDropBox1UploadProgress
    OnDownloadProgress = AdvDropBox1DownloadProgress
    OnConnected = AdvDropBox1Connected
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    OnAuthFormClose = AdvDropBox1AuthFormClose
    Language = dlPortuguese
    Mode = dmRoot
    ExternalBrowser = True
    Left = 24
    Top = 344
  end
  object AdvBoxNetDrive1: TAdvBoxNetDrive
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8888'
    App.CallBackPort = 8888
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'TOKENS'
    PersistTokens.Key = '.\BTOKENS.INI'
    Logging = True
    OnUploadProgress = AdvDropBox1UploadProgress
    OnDownloadProgress = AdvDropBox1DownloadProgress
    OnConnected = AdvDropBox1Connected
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    OnAuthFormClose = AdvDropBox1AuthFormClose
    Left = 56
    Top = 344
  end
  object AdvGDrive1: TAdvGDrive
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8889/'
    App.CallBackPort = 8889
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'TOKENS'
    PersistTokens.Key = '.\GTOKENS.INI'
    Scopes.Strings = (
      'https://www.googleapis.com/auth/drive'
      'https://www.googleapis.com/auth/drive.file'
      'https://www.googleapis.com/auth/userinfo.profile'
      'https://www.googleapis.com/auth/userinfo.email')
    Logging = True
    OnUploadProgress = AdvDropBox1UploadProgress
    OnDownloadProgress = AdvDropBox1DownloadProgress
    OnConnected = AdvDropBox1Connected
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    OnAuthFormClose = AdvDropBox1AuthFormClose
    ExternalBrowser = False
    Left = 56
    Top = 376
  end
  object AdvSkyDrive1: TAdvSkyDrive
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'https://login.live.com/oauth20_desktop.srf'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'TOKENS'
    PersistTokens.Key = '.\STOKENS.INI'
    Scopes.Strings = (
      'wl.signin'
      'wl.basic'
      'wl.offline_access'
      'wl.skydrive'
      'wl.skydrive_update')
    Logging = True
    OnUploadProgress = AdvDropBox1UploadProgress
    OnDownloadProgress = AdvDropBox1DownloadProgress
    OnConnected = AdvDropBox1Connected
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    OnAuthFormClose = AdvDropBox1AuthFormClose
    Left = 24
    Top = 376
  end
  object OpenDialog1: TOpenDialog
    Left = 120
    Top = 376
  end
  object ImageList1: TImageList
    Left = 88
    Top = 408
    Bitmap = {
      494C010103000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000948B85A7A46534FFA46534FFA465
      34FFA46534FFA46534FFA46534FFA46534FFA46534FFA46534FFA46534FFA465
      34FFA46534FFA46534FFAD754AE3EEE4DB2C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008A8D8CBF535755FF535755FF5357
      55FF535755FF535755FF535755FF535755FF535755FF535755FF535755FF5357
      55FF535755FF535755FF8A8D8CBF00000000B4B4B4B4818181FF818181FF8181
      81FF818181FF818181FF818181FF818181FF818181FF818181FF818181FF8181
      81FF818181FFB9B9B9A800000000000000005F5E5EE0997F6AFFA56839FFC38F
      60FFC48E5CFFC38C59FFC38C59FFC38C59FFC38C59FFC38C59FFC38C59FFC38C
      59FFC38C59FFC38C59FFB47947FFC6A0819F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535755FFD3DBDBFFBAC7C6FFBAC7
      C6FFD2DDDCFFD2DDDCFFD2DDDCFFD2DEDCFFBAC7C6FFBAC7C6FFBAC7C6FFD2DD
      DDFFD2DDDCFFE5EBEBFF535755FF00000000818181FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF818181FF00000000000000005F5F5FE0999999FF9F8068FFBD8F
      68FFDFBD9DFFD9B08BFFD5AA82FFD5A981FFD5A981FFD5A981FFD5A981FFD5A9
      81FFD5A981FFD6AB84FFD4AB86FFB1794FE10000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535755FFD1DCDBFF94AAA8FF94AA
      A8FF94AAA8FFB7C9C7FFB6C8C7FFB7C8C7FFB7C8C7FF94AAA8FF94AAA8FF94AA
      A8FFB7C9C7FFD6DFDFFF535755FF00000000818181FFFFFFFFFFEDEDEDFFEDED
      EDFFEEEEEEFFEFEFEFFFEFEFEFFFF0F0F0FFF0F0F0FFF1F1F1FFF2F2F2FFF2F2
      F2FFFFFFFFFF818181FF00000000000000005C5C5CE29B9B9BFF9B948FFFAE79
      4FFFE4C8AEFFDBB593FFDBB492FFD9B08CFFD6AC85FFD4A87FFFD4A77EFFD4A7
      7EFFD4A77EFFD5AA82FFDFBFA2FFA76B3CF70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535755FFD0DBDAFFB4C7C5FF95AC
      AAFF95ACAAFF95ACAAFFB5C6C5FFB4C6C5FFB5C7C5FFB5C6C5FF95ACAAFF95AC
      AAFF95ACAAFFD4DEDEFF535755FF00000000818181FFFFFFFFFFEDEDEDFFC6C6
      C6FFC7C7C7FFC7C7C7FFC8C8C8FFC8C8C8FFC8C8C8FFF1F1F1FFF1F1F1FFF2F2
      F2FFFFFFFFFF818181FF00000000000000005E5E5EE4A1A1A1FF9B9B9BFFA86D
      40FFEBD7C4FFDEBB9BFFDEBB9BFFDEBB9BFFDEBB9BFFDEBB9BFFDCB694FFD9B0
      8BFFD8AE88FFDAB18DFFE7CFB8FFA76939F90000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535755FFCEDAD9FFB2C4C3FFB3C5
      C3FF96AEACFF96AEADFF96AEACFFB2C4C3FFB3C4C3FFB3C4C3FFB2C4C3FF96AE
      ACFF96AEADFFC3D0D0FF535755FF00000000818181FFFFFFFFFFECECECFFEDED
      EDFFEEEEEEFFEEEEEEFFEFEFEFFFEFEFEFFFF0F0F0FFF1F1F1FFF1F1F1FFF1F1
      F1FFFFFFFFFF818181FF0000000000000000626262E5A4A5A5FF9C9C9CFFA56A
      3CFFEAD5C1FFDCB794FFDCB794FFDCB794FFDCB794FFDCB794FFDCB794FFDCB7
      94FFDAB38EFFD8AE86FFE6CDB5FFA66838FB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535755FFCDD8D7FFB0C3C1FFB1C3
      C1FFB0C2C1FF97B0AFFF97B0AFFF97B0AFFFB0C3C1FFB0C2C1FFB1C3C1FFB1C2
      C1FF97B0AFFFC3D2D1FF535755FF00000000818181FFFFFFFFFFECECECFFC6C6
      C6FFC6C6C6FFC6C6C6FFC7C7C7FFC7C7C7FFC8C8C8FFC8C8C8FFC8C8C8FFF0F0
      F0FFFFFFFFFF818181FF0000000000000000656565E7A9A9A9FF9E9E9EFFA468
      39FFE9D3BEFFDBB692FFDBB591FFDBB592FFDBB692FFDBB692FFDBB692FFDBB6
      92FFDBB693FFDCB895FFE6CBB3FFA66737FC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535755FFD1DCDCFFAEC0BFFFAEC0
      BFFFAEC1BFFFAEC1BFFF98B2B1FF98B2B1FF98B2B1FFAFC1BFFFAFC1BFFFAFC0
      BFFFAEC1BFFFC4D3D2FF535755FF00000000818181FFFFFFFFFFECECECFFECEC
      ECFFEDEDEDFFEDEDEDFFEEEEEEFFEEEEEEFFEFEFEFFFEFEFEFFFEFEFEFFFF0F0
      F0FFFFFFFFFF818181FF0000000000000000696969E9AEAEAEFFA0A0A0FFA568
      38FFE6CCB4FFE7CEB7FFE7CEB7FFE7CFB7FFE6CEB7FFE6CEB7FFE6CEB7FFE6CE
      B7FFE6CEB7FFE6CEB7FFE4CAB1FFA56534FE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535755FFBDCECDFF98B2B1FFACBE
      BDFFADBFBDFFACBEBDFFACBEBDFF98B2B1FF98B2B1FF98B2B1FFACBFBDFFACBE
      BCFFACBEBDFFD0DAD9FF535755FF00000000818181FFFFFFFFFFEBEBEBFFC6C6
      C6FFC6C6C6FFC6C6C6FFC6C6C6FFEEEEEEFFEEEEEEFFE6EDEDFFEEEEEEFFF0F0
      F0FFFFFFFFFF818181FF00000000000000006C6C6CE9B3B3B3FFA3A3A3FFA571
      49FFA56839FFA56839FFA56839FFA56839FFA56839FFA56839FFA56839FFA568
      39FFA56839FFA36637FFA76A3CF7B58057D60000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535755FFBDCECDFF98B2B1FF98B2
      B1FFAABCBBFFABBCBBFFAABDBAFFAABCBBFF98B2B1FF98B2B1FF98B2B1FFAABD
      BBFFAABDBAFFCED8D8FF535755FF00000000818181FFFFFFFFFFEBEBEBFFEBEB
      EBFFECECECFFECECECFFEDEDEDFFEDEDEDFFE5EDEDFFECECECFFEEEEEEFFF0F0
      F0FFFFFFFFFF818181FF0000000000000000717171EBB7B7B7FFA6A6A6FFA3A3
      A3FFA0A0A0FF9D9D9DFF9C9C9CFF9B9B9BFF9A9A9AFF9B9B9BFF9C9C9CFF9E9E
      9EFF9E9E9EFF5E5E5EFAFFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535755FFC8D3D2FF98B2B1FF98B2
      B1FF98B2B1FFA8BBB9FFA8BBB9FFA8BBB9FFA8BBB9FF98B2B1FF98B2B1FF98B2
      B1FFA8BBB9FFCDD8D7FF535755FF00000000818181FFFFFFFFFFEBEBEBFFC5C5
      C5FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC7C7C7FFF0F0
      F0FFFFFFFFFF818181FF0000000000000000757575ECBDBDBDFFA9A9A9FFA6A6
      A6FFA3A3A3FFA1A1A1FFA0A0A0FF9F9F9FFF9F9F9FFFA0A0A0FFA1A1A1FFA3A3
      A3FFA3A3A3FF626262FAFFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535755FFC6D2D1FFA6B8B7FF98B2
      B1FF98B2B1FF98B2B1FFA6B9B7FFA5B8B7FFA6B8B7FFA6B9B7FF98B2B1FF98B2
      B1FF98B2B1FFCCD6D6FF535755FF00000000818181FFFFFFFFFFEAEAEAFFEBEB
      EBFFEBEBEBFFECECECFFECECECFFECECECFFEDEDEDFFEDEDEDFFEEEEEEFFF0F0
      F0FFFFFFFFFF818181FF0000000000000000777777EEC0C1C1FFACACACFFAAAA
      AAFFA7A7A7FFA5A5A5FFA4A4A4FFA9A9A9FFBABABAFFC5C5C5FFC8C8C8FFCACA
      CAFFC0C0C0FF676767FBFFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535755FFC5D1D0FFA4B7B5FFA4B7
      B5FF98B2B1FFC4D3D2FFBDCECDFFC5D1D0FFC5D1D0FFC5D1D0FFC5D1D0FFBDCE
      CDFFBDCECDFFCAD7D6FF535755FF00000000818181FFFFFFFFFFEAEAEAFFC4C4
      C4FFC5C5C5FFC5C5C5FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC7C7C7FFF0F0
      F0FFFFFFFFFF818181FF00000000000000007B7B7BEFC5C5C5FFB0B0B0FFADAD
      ADFFABABABFFAAAAAAFFAAAAAAFF808080F36E6E6EFC6D6D6DFC6C6C6CFC6C6C
      6CFC6B6B6BFC898989CFFFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535755FFC5D1D0FFA4B7B5FFA4B7
      B5FFA4B7B5FFBDCECDFF535755FF535755FF535755FF535755FF535755FF5357
      55FF535755FF535755FF8A8D8CBF00000000818181FFFFFFFFFFECECECFFEAEA
      EAFFEAEAEAFFEBEBEBFFEBEBEBFFEBEBEBFFECECECFFECECECFFEDEDEDFFF0F0
      F0FFFFFFFFFF818181FF00000000000000007F7F7FF0C9C9C9FFC7C7C7FFC5C5
      C5FFC4C4C4FFC4C4C4FFB2B2B2FF999999BCFBFBFB08FBFBFB08FBFBFB08FAFA
      FA08FAFAFA08FEFEFE01FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535755FFC4D3D2FFC5D1D0FFC5D1
      D0FFC5D1D0FFCBD6D4FF535755FF000000000000000000000000000000000000
      000000000000000000000000000000000000818181FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF818181FF0000000000000000ACACAC9F828282EC828282EC8282
      82EC828282EC828282EC888888E2E1E1E137FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007A7E7CDF535755FF535755FF5357
      55FF535755FF535755FF808381D5000000000000000000000000000000000000
      000000000000000000000000000000000000BABABAAC818181FF818181FF8181
      81FF818181FF818181FF818181FF818181FF818181FF818181FF818181FF8181
      81FF818181FFD4D4D4560000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF000000000001000300000000
      0001000300000000000100030000000000010003000000000001000300000000
      0001000300000000000100030000000000010003000000000001000300000000
      0001000300000000000100030000000000010003000000000001000300000000
      01FF00030000000001FF00030000000000000000000000000000000000000000
      000000000000}
  end
  object AdvHubic1: TAdvHubic
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://localhost:8888/'
    App.CallBackPort = 8888
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'TOKENS'
    PersistTokens.Key = '.\HTOKENS.INI'
    OnUploadProgress = AdvBoxNetDrive1UploadProgress
    OnDownloadProgress = AdvBoxNetDrive1DownloadProgress
    OnConnected = AdvDropBox1Connected
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    OnAuthFormClose = AdvDropBox1AuthFormClose
    Left = 88
    Top = 376
  end
  object AdvHiDrive1: TAdvHiDrive
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://localhost:80/'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'TOKENS'
    PersistTokens.Key = '.\HITOKENS.INI'
    OnUploadProgress = AdvBoxNetDrive1UploadProgress
    OnDownloadProgress = AdvBoxNetDrive1DownloadProgress
    OnConnected = AdvDropBox1Connected
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    OnAuthFormClose = AdvDropBox1AuthFormClose
    Left = 56
    Top = 408
  end
  object CloudTreeViewAdapter1: TCloudTreeViewAdapter
    Left = 120
    Top = 408
  end
  object AdvYandexDisk1: TAdvYandexDisk
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'https://oauth.yandex.com/verification_code'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'TOKENS'
    PersistTokens.Key = '.\YTOKENS.INI'
    OnUploadProgress = AdvDropBox1UploadProgress
    OnDownloadProgress = AdvDropBox1DownloadProgress
    OnConnected = AdvDropBox1Connected
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    OnAuthFormClose = AdvDropBox1AuthFormClose
    Left = 24
    Top = 408
  end
  object dxCloudStorage1: TdxCloudStorage
    ProviderClassName = 'TdxCloudStorageGoogleDriveProvider'
    Left = 87
    Top = 345
  end
end
