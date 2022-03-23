object FrmConsulta: TFrmConsulta
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  ClientHeight = 427
  ClientWidth = 716
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 716
    Height = 49
    Align = alTop
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    object Label3: TLabel
      Left = 520
      Top = 18
      Width = 190
      Height = 25
      Caption = 'Consulta de Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 576
    Top = 49
    Width = 140
    Height = 378
    Align = alRight
    TabOrder = 1
    object BtnImpirmir: TButton
      Left = 15
      Top = 39
      Width = 113
      Height = 33
      Caption = 'Impirmir'
      TabOrder = 0
      OnClick = BtnImpirmirClick
    end
    object BtnExportar: TButton
      Left = 15
      Top = 79
      Width = 113
      Height = 33
      Caption = 'Exportar'
      TabOrder = 1
      OnClick = BtnExportarClick
    end
    object BtnVoltar: TButton
      Left = 15
      Top = 118
      Width = 113
      Height = 33
      Caption = 'Voltar'
      TabOrder = 2
      OnClick = BtnVoltarClick
    end
  end
  object DBGConsultaClientes: TDBGrid
    Left = 0
    Top = 49
    Width = 576
    Height = 378
    Align = alClient
    DataSource = DsConsultaClientes
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGConsultaClientesDblClick
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
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_NASCIMENTO'
        Title.Caption = 'Data Nascimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Title.Caption = 'Enedere'#231'o'
        Width = 600
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Title.Caption = 'N'#250'mero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Title.Caption = 'Bairro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Title.Caption = 'Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 20
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
        Title.Caption = 'Telefone'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Title.Caption = 'Email'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CATEGORIA'
        Title.Caption = 'Categoria Cliente'
        Width = 200
        Visible = True
      end>
  end
  object DsConsultaClientes: TDataSource
    DataSet = FDQConsultaClientes
    Left = 614
    Top = 235
  end
  object FDQConsultaClientes: TFDQuery
    SQL.Strings = (
      'SELECT CLIENTES.*,'
      '       CIDADES.CIDADE,'
      '       CIDADES.UF,'
      '       CATEGORIAS.CATEGORIA'
      'FROM CLIENTES'
      'INNER JOIN CIDADES ON CIDADES.ID_CIDADE = CLIENTES.ID_CIDADE'
      
        'LEFT JOIN CATEGORIAS ON CATEGORIAS.ID_CATEGORIA = CLIENTES.ID_CA' +
        'TEGORIA'
      ''
      ''
      '')
    Left = 600
    Top = 222
    object FDQConsultaClientesID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQConsultaClientesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object FDQConsultaClientesDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
    object FDQConsultaClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 200
    end
    object FDQConsultaClientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object FDQConsultaClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object FDQConsultaClientesCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 8
    end
    object FDQConsultaClientesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 50
    end
    object FDQConsultaClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object FDQConsultaClientesID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
    end
    object FDQConsultaClientesID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object FDQConsultaClientesCIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQConsultaClientesUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF'
      Origin = 'UF'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object FDQConsultaClientesCATEGORIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
end
