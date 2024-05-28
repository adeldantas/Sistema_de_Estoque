inherited Frm_movimento_compra: TFrm_movimento_compra
  Caption = 'CADASTRO DE COMPRAS'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel3: TPanel
    Caption = ''
    object Label1: TLabel
      Left = 48
      Top = 3
      Width = 60
      Height = 13
      Caption = 'ID_COMPRA'
      FocusControl = DB_ID_COMPRA
    end
    object Label2: TLabel
      Left = 48
      Top = 43
      Width = 86
      Height = 13
      Caption = 'ID_FORNECEDOR'
      FocusControl = DB_ID_FORNECEDOR
    end
    object Label3: TLabel
      Left = 48
      Top = 82
      Width = 86
      Height = 13
      Caption = 'ID_FORMA_PGTO'
      FocusControl = DB_ID_FORMA_PGTO
    end
    object Label4: TLabel
      Left = 175
      Top = 3
      Width = 55
      Height = 13
      Caption = 'CADASTRO'
      FocusControl = DB_CADASTRO
    end
    object Label5: TLabel
      Left = 302
      Top = 3
      Width = 46
      Height = 13
      Caption = 'USUARIO'
      FocusControl = DB_USUARIO
    end
    object Label6: TLabel
      Left = 508
      Top = 3
      Width = 33
      Height = 13
      Caption = 'VALOR'
      FocusControl = DB_VALOR
    end
    object Label7: TLabel
      Left = 175
      Top = 43
      Width = 300
      Height = 13
      Caption = 'NOME'
      FocusControl = DB_NOME
    end
    object Label8: TLabel
      Left = 175
      Top = 82
      Width = 300
      Height = 13
      Caption = 'DESCRICAO'
      FocusControl = DB_DESCRICAO
    end
    object DB_ID_COMPRA: TcxDBSpinEdit
      Left = 48
      Top = 19
      DataBinding.DataField = 'ID_COMPRA'
      DataBinding.DataSource = ds_padrao
      TabOrder = 0
      Width = 121
    end
    object DB_ID_FORNECEDOR: TcxDBSpinEdit
      Left = 48
      Top = 59
      DataBinding.DataField = 'ID_FORNECEDOR'
      DataBinding.DataSource = ds_padrao
      TabOrder = 4
      Width = 121
    end
    object DB_ID_FORMA_PGTO: TcxDBSpinEdit
      Left = 48
      Top = 98
      DataBinding.DataField = 'ID_FORMA_PGTO'
      DataBinding.DataSource = ds_padrao
      TabOrder = 5
      Width = 121
    end
    object DB_CADASTRO: TcxDBDateEdit
      Left = 175
      Top = 19
      DataBinding.DataField = 'CADASTRO'
      DataBinding.DataSource = ds_padrao
      TabOrder = 1
      Width = 121
    end
    object DB_USUARIO: TcxDBTextEdit
      Left = 302
      Top = 19
      DataBinding.DataField = 'USUARIO'
      DataBinding.DataSource = ds_padrao
      Enabled = False
      TabOrder = 2
      Width = 200
    end
    object DB_VALOR: TcxDBCurrencyEdit
      Left = 508
      Top = 19
      DataBinding.DataField = 'VALOR'
      DataBinding.DataSource = ds_padrao
      TabOrder = 3
      Width = 121
    end
    object DB_NOME: TDBLookupComboBox
      Left = 175
      Top = 59
      Width = 454
      Height = 21
      DataField = 'NOME'
      DataSource = ds_padrao
      TabOrder = 6
    end
    object DB_DESCRICAO: TDBLookupComboBox
      Left = 175
      Top = 98
      Width = 454
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = ds_padrao
      TabOrder = 7
    end
  end
  inherited Panel4: TPanel
    Caption = ''
    ExplicitTop = 362
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_COMPRA'
    UpdateOptions.AutoIncFields = 'ID_COMPRA'
    SQL.Strings = (
      'SELECT '
      ' ID_COMPRA,'
      ' ID_FORNECEDOR,'
      ' ID_FORMA_PGTO,'
      ' USUARIO,'
      ' CADASTRO,'
      ' VALOR'
      'FROM COMPRA'
      'ORDER BY ID_COMPRA')
    object Q_padraoID_COMPRA: TFDAutoIncField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object Q_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object Q_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object Q_padraoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_padraoVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
    object Q_padraoNOME: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME'
      LookupDataSet = q_fornecedor
      LookupKeyFields = 'ID_FORNECEDOR'
      LookupResultField = 'NOME'
      KeyFields = 'ID_FORNECEDOR'
      Size = 100
      Lookup = True
    end
    object Q_padraoDESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO'
      LookupDataSet = q_forma_pgto
      LookupKeyFields = 'ID_FORMA_PGTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_FORMA_PGTO'
      Size = 60
      Lookup = True
    end
  end
  object q_fornecedor: TFDQuery
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT'
      ' ID_FORNECEDOR,'
      ' NOME'
      'FROM FORNECEDOR'
      'ORDER BY ID_FORNECEDOR')
    Left = 592
    Top = 240
    object q_fornecedorID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_fornecedorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object q_forma_pgto: TFDQuery
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT '
      ' ID_FORMA_PGTO,'
      ' DESCRICAO'
      'FROM FORMA_PGTO'
      'ORDER BY ID_FORMA_PGTO')
    Left = 496
    Top = 248
    object q_forma_pgtoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_forma_pgtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object DS_fornecedor: TDataSource
    DataSet = q_fornecedor
    Left = 576
    Top = 304
  end
  object ds_forma_pgto: TDataSource
    DataSet = q_forma_pgto
    Left = 496
    Top = 304
  end
end
