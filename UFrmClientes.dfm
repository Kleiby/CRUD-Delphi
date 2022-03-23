object FrmClientes: TFrmClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  ClientHeight = 382
  ClientWidth = 666
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 526
    Height = 333
    Align = alClient
    DataSource = DM.DsClientes
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 666
    Height = 49
    Align = alTop
    Color = clHighlight
    ParentBackground = False
    TabOrder = 1
    object Label3: TLabel
      Left = 578
      Top = 18
      Width = 73
      Height = 25
      Caption = 'Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 526
    Top = 49
    Width = 140
    Height = 333
    Align = alRight
    TabOrder = 2
    object BtnAlterar: TButton
      Left = 14
      Top = 54
      Width = 113
      Height = 33
      Caption = 'Alterar'
      TabOrder = 0
      OnClick = BtnAlterarClick
    end
    object BtnNovo: TButton
      Left = 15
      Top = 14
      Width = 113
      Height = 33
      Caption = 'Novo'
      TabOrder = 1
      OnClick = BtnNovoClick
    end
    object BtnExcluir: TButton
      Left = 14
      Top = 94
      Width = 113
      Height = 33
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = BtnExcluirClick
    end
  end
  object DsClientes: TDataSource
    DataSet = QClientes
    Left = 613
    Top = 207
  end
  object QClientes: TFDQuery
    Connection = DM.FDConnection
    Transaction = DM.FDTransaction
    SQL.Strings = (
      'SELECT * FROM CLIENTES'
      ''
      ''
      ''
      'ORDER BY NOME')
    Left = 550
    Top = 204
    object QClientesID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QClientesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object QClientesDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
    object QClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 200
    end
    object QClientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object QClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object QClientesCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 8
    end
    object QClientesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 50
    end
    object QClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object QClientesID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
    end
    object QClientesID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
  end
end
