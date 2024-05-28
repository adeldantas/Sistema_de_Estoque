﻿inherited Frm_Pesquisa_Produto: TFrm_Pesquisa_Produto
  Caption = 'Frm_Pesquisa_Produto'
  ClientWidth = 1014
  ExplicitLeft = -236
  ExplicitWidth = 1030
  ExplicitHeight = 570
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1014
    ExplicitWidth = 1014
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
    Width = 1014
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Title.Caption = 'ID DO PRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO_DESCRICAO'
        Title.Caption = 'DESCRI'#199#195'O'
        Width = 266
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_CUSTO'
        Title.Caption = 'CUSTO'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_VENDA'
        Title.Caption = 'PRE'#199'O'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE_MIN'
        Title.Caption = 'ESTOQUE M'#205'NIMO'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR'
        Title.Caption = 'ID DO FORNECEDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    Width = 1014
    ExplicitWidth = 1014
  end
  inherited query_pesquisa_padrao: TFDQuery
    Active = True
    SQL.Strings = (
      'SELECT A.ID_PRODUTO,'
      '       A.PRODUTO_DESCRICAO,'
      '       A.VL_CUSTO,'
      '       A.VL_VENDA,'
      '       A.ESTOQUE,'
      '       A.ESTOQUE_MIN,'
      '       A.UNIDADE,'
      '       A.CADASTRO,'
      '       A.ID_FORNECEDOR,'
      '       B.NOME'
      'FROM PRODUTO A, FORNECEDOR B'
      'WHERE A.ID_FORNECEDOR=B.ID_FORNECEDOR')
    object query_pesquisa_padraoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object query_pesquisa_padraoPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Required = True
      Size = 100
    end
    object query_pesquisa_padraoVL_CUSTO: TBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object query_pesquisa_padraoVL_VENDA: TBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object query_pesquisa_padraoESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object query_pesquisa_padraoESTOQUE_MIN: TBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object query_pesquisa_padraoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object query_pesquisa_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object query_pesquisa_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object query_pesquisa_padraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  inherited Rel_pesquisa_padrao: TfrxReport
    ReportOptions.CreateDate = 45439.470544768500000000
    ReportOptions.LastChange = 45440.486219259300000000
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
      PaperWidth = 180.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 20.000000000000000000
      RightMargin = 20.000000000000000000
      TopMargin = 20.000000000000000000
      BottomMargin = 20.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object Título: TfrxReportTitle
        FillType = ftBrush
        Height = 75.590551180000000000
        Top = 18.897650000000000000
        Width = 529.134200000000000000
        object Memo1: TfrxMemoView
          Left = 71.811070000000000000
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
          Left = 139.842610000000000000
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
          Left = 230.551330000000000000
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
          Left = 321.260050000000000000
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
        Width = 529.134200000000000000
        DataSet = dataset_pesquisa_padrao
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDB_usuariosID_USUARIO: TfrxMemoView
          Align = baWidth
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_PRODUTO'
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
            '[frxDBDataset1."ID_PRODUTO"]')
          ParentFont = False
        end
        object frxDB_usuariosNOME: TfrxMemoView
          Align = baWidth
          Left = 79.370130000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'PRODUTO_DESCRICAO'
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
            '[frxDBDataset1."PRODUTO_DESCRICAO"]')
          ParentFont = False
        end
        object frxDB_usuariosCADASTRO: TfrxMemoView
          Align = baWidth
          Left = 336.378170000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'VL_CUSTO'
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
            '[frxDBDataset1."VL_CUSTO"]')
          ParentFont = False
        end
        object frxDBDataset1VL_VENDA: TfrxMemoView
          Left = 241.889920000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VL_VENDA'
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
            '[frxDBDataset1."VL_VENDA"]')
          ParentFont = False
        end
        object frxDBDataset1ESTOQUE1: TfrxMemoView
          Left = 423.307360000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'ESTOQUE'
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
            '[frxDBDataset1."ESTOQUE"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 117.165430000000000000
        Width = 529.134200000000000000
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
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'PRE'#199'O:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 336.378170000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CUSTO:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 423.307360000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'ESTOQUE:')
          ParentFont = False
        end
      end
    end
  end
end
