inherited Frm_usuario: TFrm_usuario
  Caption = 'CADASTRO DE USU'#193'RIOS'
  ClientHeight = 364
  ExplicitHeight = 393
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 152
    Top = 112
    Width = 79
    Height = 16
    Caption = 'ID_USUARIO'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 152
    Top = 152
    Width = 35
    Height = 16
    Caption = 'NOME'
    FocusControl = DB_NOME
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 152
    Top = 192
    Width = 42
    Height = 16
    Caption = 'SENHA'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 392
    Top = 192
    Width = 29
    Height = 16
    Caption = 'TIPO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel [4]
    Left = 312
    Top = 112
    Width = 70
    Height = 16
    Caption = 'CADASTRO'
    FocusControl = DB_CADASTRO
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited Panel1: TPanel
    TabOrder = 5
  end
  inherited Panel2: TPanel
    Top = 307
    TabOrder = 6
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit [7]
    Left = 152
    Top = 128
    Width = 134
    Height = 24
    DataField = 'ID_USUARIO'
    DataSource = DS_padrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DB_NOME: TDBEdit [8]
    Left = 152
    Top = 168
    Width = 600
    Height = 24
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = DS_padrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [9]
    Left = 152
    Top = 208
    Width = 215
    Height = 24
    DataField = 'SENHA'
    DataSource = DS_padrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 3
  end
  object DB_CADASTRO: TDBEdit [10]
    Left = 312
    Top = 128
    Width = 134
    Height = 24
    DataField = 'CADASTRO'
    DataSource = DS_padrao
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBComboBox1: TDBComboBox [11]
    Left = 392
    Top = 209
    Width = 215
    Height = 24
    DataField = 'TIPO'
    DataSource = DS_padrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'ADMINISTRADOR'
      'APOIO')
    ParentFont = False
    TabOrder = 4
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_USUARIO'
    UpdateOptions.AutoIncFields = 'ID_USUARIO'
    SQL.Strings = (
      'SELECT * FROM USUARIO'
      'ORDER BY ID_USUARIO')
    inherited Q_padraoID_USUARIO: TIntegerField
      AutoGenerateValue = arAutoInc
      ProviderFlags = [pfInWhere, pfInKey]
      Required = False
    end
  end
end
