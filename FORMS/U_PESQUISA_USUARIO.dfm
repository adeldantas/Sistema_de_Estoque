inherited Frm_Pesquisa_Usuario: TFrm_Pesquisa_Usuario
  Caption = 'Pesquisa de Usu'#225'rios'
  ExplicitLeft = 8
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    ExplicitTop = -6
    inherited CB_chave_pesquisa: TComboBox
      OnChange = CB_chave_pesquisaChange
    end
    inherited Bt_pesquisa: TBitBtn
      OnClick = Bt_pesquisaClick
    end
  end
  inherited DBGrid1: TDBGrid
    DataSource = ds_pesquisa_padrao
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 206
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Width = 96
        Visible = True
      end>
  end
  inherited query_pesquisa_padrao: TFDQuery
    object query_pesquisa_padraoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object query_pesquisa_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object query_pesquisa_padraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object query_pesquisa_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end