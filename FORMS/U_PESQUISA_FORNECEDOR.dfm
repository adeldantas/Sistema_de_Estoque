﻿inherited Frm_Pesquisa_Fornecedor: TFrm_Pesquisa_Fornecedor
  Caption = 'Pesquisa de Fornecedores'
  ClientWidth = 1363
  ExplicitLeft = -478
  ExplicitWidth = 1379
  ExplicitHeight = 570
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1363
    ExplicitWidth = 1363
    inherited Bt_pesquisa: TBitBtn
      OnClick = Bt_pesquisaClick
    end
    inherited bt_transferir: TBitBtn
      OnClick = bt_transferirClick
    end
    inherited bt_imprimir: TBitBtn
      OnClick = bt_imprimirClick
    end
  end
  inherited DBGrid1: TDBGrid
    Width = 1363
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR'
        Title.Caption = 'ID'
        Width = 17
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 239
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Width = 173
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Width = 181
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Width = 75
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    Width = 1363
    ExplicitWidth = 1363
  end
  inherited query_pesquisa_padrao: TFDQuery
    SQL.Strings = (
      'SELECT'
      '      ID_FORNECEDOR,'
      '      NOME,'
      '      ENDERECO,'
      '      NUMERO,'
      '      BAIRRO,'
      '      CIDADE,'
      '      UF,'
      '      CEP,'
      '      TELEFONE,'
      '      CNPJ,'
      '      EMAIL,'
      '      CADASTRO'
      'FROM FORNECEDOR'
      'ORDER BY ID_FORNECEDOR')
    object query_pesquisa_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object query_pesquisa_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object query_pesquisa_padraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object query_pesquisa_padraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object query_pesquisa_padraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object query_pesquisa_padraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object query_pesquisa_padraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object query_pesquisa_padraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 16
    end
    object query_pesquisa_padraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 16
    end
    object query_pesquisa_padraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '00.000.000/0000-00;0;_'
    end
    object query_pesquisa_padraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object query_pesquisa_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited Rel_pesquisa_padrao: TfrxReport
    ReportOptions.CreateDate = 45439.470544768500000000
    ReportOptions.LastChange = 45440.448235636580000000
    Datasets = <
      item
        DataSet = dataset_pesquisa_padrao
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 20.000000000000000000
      RightMargin = 20.000000000000000000
      TopMargin = 20.000000000000000000
      BottomMargin = 20.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object Título: TfrxReportTitle
        FillType = ftBrush
        Height = 75.590551180000000000
        Top = 18.897650000000000000
        Width = 642.520100000000000000
        object Memo1: TfrxMemoView
          Left = 124.724490000000000000
          Top = 45.354360000000000000
          Width = 389.291590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE FORNECEDORES DO SISTEMA')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 366.614410000000000000
          Top = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Time: TfrxMemoView
          Left = 457.323130000000000000
          Top = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 548.031850000000000000
          Top = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 200.315090000000000000
        Width = 642.520100000000000000
        DataSet = dataset_pesquisa_padrao
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDB_usuariosID_USUARIO: TfrxMemoView
          Align = baWidth
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = dataset_pesquisa_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ID_FORNECEDOR"]')
          ParentFont = False
        end
        object frxDB_usuariosNOME: TfrxMemoView
          Align = baWidth
          Left = 79.370130000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = dataset_pesquisa_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."NOME"]')
          ParentFont = False
        end
        object frxDB_usuariosTIPO: TfrxMemoView
          Align = baWidth
          Left = 241.889920000000000000
          Top = 3.779530000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'CNPJ'
          DataSet = dataset_pesquisa_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."CNPJ"]')
          ParentFont = False
        end
        object frxDB_usuariosCADASTRO: TfrxMemoView
          Align = baWidth
          Left = 400.630180000000000000
          Top = 3.779530000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          DataField = 'CADASTRO'
          DataSet = dataset_pesquisa_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."CADASTRO"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 117.165430000000000000
        Width = 642.520100000000000000
        object Memo2: TfrxMemoView
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#211'DIGO:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 79.370130000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOME:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 241.889920000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 400.630180000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
        end
      end
    end
  end
end
