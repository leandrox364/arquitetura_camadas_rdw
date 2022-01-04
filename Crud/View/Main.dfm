object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'FrmMain'
  ClientHeight = 661
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridDados: TDBGrid
    Left = 0
    Top = 217
    Width = 1008
    Height = 144
    Align = alClient
    DataSource = DtsDados
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGridDadosCellClick
    OnDblClick = DBGridDadosDblClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 73
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 15
      Top = 16
      Width = 20
      Height = 23
      Caption = 'ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 111
      Top = 16
      Width = 49
      Height = 23
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 479
      Top = 16
      Width = 45
      Height = 23
      Caption = 'Email'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 871
      Top = 16
      Width = 49
      Height = 23
      Caption = 'Idade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object EdtId: TEdit
      Left = 14
      Top = 42
      Width = 80
      Height = 21
      TabOrder = 0
    end
    object EdtNome: TEdit
      Left = 110
      Top = 42
      Width = 331
      Height = 21
      TabOrder = 1
    end
    object EdtEmail: TEdit
      Left = 478
      Top = 42
      Width = 355
      Height = 21
      TabOrder = 2
    end
    object EdtIdade: TEdit
      Left = 870
      Top = 42
      Width = 80
      Height = 21
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 1008
    Height = 144
    Align = alTop
    Color = clGray
    ParentBackground = False
    TabOrder = 2
    object BtnGetId: TButton
      Left = 16
      Top = 25
      Width = 150
      Height = 40
      Caption = 'GetId'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnGetIdClick
    end
    object BtnGetAll: TButton
      Left = 213
      Top = 25
      Width = 150
      Height = 40
      Caption = 'GetAll'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BtnGetAllClick
    end
    object BtnPost: TButton
      Left = 411
      Top = 25
      Width = 150
      Height = 40
      Caption = 'Post'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BtnPostClick
    end
    object BtnPut: TButton
      Left = 608
      Top = 25
      Width = 150
      Height = 40
      Caption = 'Put'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BtnPutClick
    end
    object BtnDeleteId: TButton
      Left = 806
      Top = 25
      Width = 150
      Height = 40
      Caption = 'DeleteId'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BtnDeleteIdClick
    end
    object BtnGetNome: TButton
      Left = 16
      Top = 87
      Width = 150
      Height = 40
      Caption = 'GetNome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BtnGetNomeClick
    end
    object BtnGetEmail: TButton
      Left = 214
      Top = 87
      Width = 150
      Height = 40
      Caption = 'GetEmail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = BtnGetEmailClick
    end
    object Button1: TButton
      Left = 411
      Top = 87
      Width = 150
      Height = 40
      Caption = 'Carrega Dados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 608
      Top = 87
      Width = 150
      Height = 40
      Caption = 'Limpar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 806
      Top = 87
      Width = 150
      Height = 40
      Caption = 'Format'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = Button3Click
    end
  end
  object Memo: TMemo
    Left = 0
    Top = 361
    Width = 1008
    Height = 300
    Align = alBottom
    Color = 3552820
    Font.Charset = ANSI_CHARSET
    Font.Color = clAqua
    Font.Height = -25
    Font.Name = 'Courier'
    Font.Style = []
    Lines.Strings = (
      '\>')
    ParentFont = False
    TabOrder = 3
  end
  object DtsDados: TDataSource
    Left = 224
    Top = 296
  end
  object RESTServicePooler1: TRESTServicePooler
    Active = False
    CORS = False
    CORS_CustomHeaders.Strings = (
      'Access-Control-Allow-Origin=*'
      
        'Access-Control-Allow-Methods=GET, POST, PATCH, PUT, DELETE, OPTI' +
        'ONS'
      
        'Access-Control-Allow-Headers=Content-Type, Origin, Accept, Autho' +
        'rization, X-CUSTOM-HEADER')
    PathTraversalRaiseError = True
    RequestTimeout = -1
    ServicePort = 8082
    ProxyOptions.Port = 8888
    AuthenticationOptions.AuthorizationOption = rdwAOBasic
    AuthenticationOptions.OptionParams.AuthDialog = True
    AuthenticationOptions.OptionParams.CustomDialogAuthMessage = 'Protected Space...'
    AuthenticationOptions.OptionParams.Custom404TitleMessage = '(404) The address you are looking for does not exist'
    AuthenticationOptions.OptionParams.Custom404BodyMessage = '404'
    AuthenticationOptions.OptionParams.Custom404FooterMessage = 'Take me back to <a href="./">Home REST Dataware'
    AuthenticationOptions.OptionParams.Username = 'testserver'
    AuthenticationOptions.OptionParams.Password = 'testserver'
    SSLMethod = sslvSSLv2
    SSLVersions = []
    Encoding = esUtf8
    RootPath = '/'
    SSLVerifyMode = []
    SSLVerifyDepth = 0
    ForceWelcomeAccess = False
    CriptOptions.Use = False
    CriptOptions.Key = 'RDWBASEKEY256'
    Left = 352
    Top = 288
  end
end