object DM: TDM
  OldCreateOrder = False
  Height = 407
  Width = 488
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 46
    Top = 90
  end
  object DtsCategorias: TFDQuery
    Active = True
    Connection = FDConnection
    Transaction = FDTransaction
    SQL.Strings = (
      'SELECT * FROM CATEGORIAS'
      ''
      ''
      ''
      'ORDER BY CATEGORIA')
    Left = 152
    Top = 24
    object DtsCategoriasID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DtsCategoriasCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      Size = 100
    end
  end
  object DsCategorias: TDataSource
    DataSet = DtsCategorias
    Left = 224
    Top = 24
  end
  object DtsClientes: TFDQuery
    Active = True
    Connection = FDConnection
    Transaction = FDTransaction
    SQL.Strings = (
      'SELECT * FROM CLIENTES'
      ''
      ''
      ''
      'ORDER BY NOME')
    Left = 152
    Top = 87
    object DtsClientesID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DtsClientesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object DtsClientesDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
    object DtsClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 200
    end
    object DtsClientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object DtsClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object DtsClientesCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 8
    end
    object DtsClientesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 50
    end
    object DtsClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object DtsClientesID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
    end
    object DtsClientesID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
  end
  object DsClientes: TDataSource
    DataSet = DtsClientes
    Left = 224
    Top = 88
  end
  object DtsCidades: TFDQuery
    Active = True
    Connection = FDConnection
    Transaction = FDTransaction
    SQL.Strings = (
      'SELECT * FROM CIDADES'
      ''
      ''
      ''
      'ORDER BY CIDADE')
    Left = 152
    Top = 151
    object DtsCidadesID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DtsCidadesCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 100
    end
    object DtsCidadesUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
  end
  object DsCidades: TDataSource
    DataSet = DtsCidades
    Left = 224
    Top = 152
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey '
      
        'Database=D:\Projetos\Cadastro de Clientes\Fonte\Banco\DBCLIENTES' +
        '.FDB'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 47
    Top = 23
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    Left = 45
    Top = 154
  end
  object FDTransaction: TFDTransaction
    Connection = FDConnection
    Left = 44
    Top = 220
  end
end
