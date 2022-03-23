object FrmFormularioClientes: TFrmFormularioClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  ClientHeight = 228
  ClientWidth = 691
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
  object Label1: TLabel
    Left = 16
    Top = 76
    Width = 31
    Height = 13
    Caption = 'Nome:'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 365
    Top = 75
    Width = 85
    Height = 13
    Caption = 'Data Nascimento:'
    FocusControl = DBEdit2
  end
  object Label4: TLabel
    Left = 16
    Top = 109
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
    FocusControl = DBEdit3
  end
  object Label5: TLabel
    Left = 403
    Top = 109
    Width = 41
    Height = 13
    Caption = 'N'#250'mero:'
    FocusControl = DBEdit4
  end
  object Label6: TLabel
    Left = 17
    Top = 139
    Width = 32
    Height = 13
    Caption = 'Bairro:'
    FocusControl = DBEdit5
  end
  object Label7: TLabel
    Left = 18
    Top = 170
    Width = 23
    Height = 13
    Caption = 'CEP:'
    FocusControl = DBEdit6
  end
  object Label8: TLabel
    Left = 158
    Top = 169
    Width = 46
    Height = 13
    Caption = 'Telefone:'
    FocusControl = DBEdit7
  end
  object Label9: TLabel
    Left = 18
    Top = 195
    Width = 28
    Height = 13
    Caption = 'Email:'
    FocusControl = DBEdit8
  end
  object Label10: TLabel
    Left = 351
    Top = 169
    Width = 51
    Height = 13
    Caption = 'Categoria:'
  end
  object Label11: TLabel
    Left = 363
    Top = 139
    Width = 37
    Height = 13
    Caption = 'Cidade:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 691
    Height = 49
    Align = alTop
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    object Label3: TLabel
      Left = 514
      Top = 17
      Width = 162
      Height = 25
      Caption = 'Cadastro Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 551
    Top = 49
    Width = 140
    Height = 179
    Align = alRight
    TabOrder = 1
    object BtnCancelar: TButton
      Left = 14
      Top = 54
      Width = 113
      Height = 33
      Caption = 'Cancelar'
      TabOrder = 0
      OnClick = BtnCancelarClick
    end
    object BtnSalvar: TButton
      Left = 15
      Top = 12
      Width = 113
      Height = 33
      Caption = 'Salvar'
      TabOrder = 1
      OnClick = BtnSalvarClick
    end
  end
  object DBEdit1: TDBEdit
    Left = 54
    Top = 73
    Width = 300
    Height = 21
    DataField = 'NOME'
    DataSource = DM.DsClientes
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 452
    Top = 72
    Width = 92
    Height = 21
    DataField = 'DATA_NASCIMENTO'
    DataSource = DM.DsClientes
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 67
    Top = 105
    Width = 330
    Height = 21
    DataField = 'ENDERECO'
    DataSource = DM.DsClientes
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 452
    Top = 104
    Width = 93
    Height = 21
    DataField = 'NUMERO'
    DataSource = DM.DsClientes
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 57
    Top = 134
    Width = 300
    Height = 21
    DataField = 'BAIRRO'
    DataSource = DM.DsClientes
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 46
    Top = 166
    Width = 108
    Height = 21
    DataField = 'CEP'
    DataSource = DM.DsClientes
    TabOrder = 7
  end
  object DBEdit7: TDBEdit
    Left = 205
    Top = 166
    Width = 142
    Height = 21
    DataField = 'TELEFONE'
    DataSource = DM.DsClientes
    TabOrder = 8
  end
  object DBEdit8: TDBEdit
    Left = 47
    Top = 192
    Width = 496
    Height = 21
    DataField = 'EMAIL'
    DataSource = DM.DsClientes
    TabOrder = 9
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 410
    Top = 135
    Width = 135
    Height = 21
    DataField = 'ID_CIDADE'
    DataSource = DM.DsClientes
    KeyField = 'ID_CIDADE'
    ListField = 'CIDADE'
    ListSource = DM.DsCidades
    TabOrder = 10
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 409
    Top = 166
    Width = 135
    Height = 21
    DataField = 'ID_CIDADE'
    DataSource = DM.DsClientes
    KeyField = 'ID_CIDADE'
    ListField = 'CIDADE'
    ListSource = DM.DsCidades
    TabOrder = 11
  end
end
