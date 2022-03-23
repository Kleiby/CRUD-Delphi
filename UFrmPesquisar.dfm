object FrmPesquisar: TFrmPesquisar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  ClientHeight = 304
  ClientWidth = 318
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 318
    Height = 49
    Align = alTop
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    object Label3: TLabel
      Left = 216
      Top = 18
      Width = 89
      Height = 25
      Caption = 'Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object BtnBuscar: TButton
    Left = 104
    Top = 271
    Width = 97
    Height = 28
    Caption = 'Buscar'
    TabOrder = 1
    OnClick = BtnBuscarClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 55
    Width = 297
    Height = 210
    TabOrder = 2
    object GroupBox2: TGroupBox
      Left = 16
      Top = 12
      Width = 264
      Height = 57
      Caption = '  Por Nome:  '
      TabOrder = 0
      object DbCliente: TDBLookupComboBox
        Left = 8
        Top = 19
        Width = 244
        Height = 21
        KeyField = 'ID_CIDADE'
        ListField = 'CIDADE'
        TabOrder = 0
      end
      object CkTodosCliente: TCheckBox
        Left = 160
        Top = -2
        Width = 97
        Height = 17
        Caption = 'Todos Clientes'
        TabOrder = 1
        OnClick = VerificaCheckBox
      end
    end
    object GroupBox3: TGroupBox
      Left = 16
      Top = 74
      Width = 264
      Height = 57
      Caption = '  Por Cidades:  '
      TabOrder = 1
      object DbCidade: TDBLookupComboBox
        Left = 9
        Top = 23
        Width = 244
        Height = 21
        KeyField = 'ID_CIDADE'
        ListField = 'CIDADE'
        TabOrder = 0
      end
      object CkTodasCidades: TCheckBox
        Left = 160
        Top = -2
        Width = 160
        Height = 17
        Caption = 'Todas Cidades'
        TabOrder = 1
        OnClick = VerificaCheckBox
      end
    end
    object GroupBox5: TGroupBox
      Left = 16
      Top = 137
      Width = 264
      Height = 57
      Caption = '  Por Categoria:  '
      TabOrder = 2
      object DbCategoria: TDBLookupComboBox
        Left = 11
        Top = 24
        Width = 244
        Height = 21
        KeyField = 'ID_CATEGORIA'
        ListField = 'CATEGORIA'
        TabOrder = 0
      end
      object ckTodasCategoria: TCheckBox
        Left = 160
        Top = -2
        Width = 103
        Height = 17
        Caption = 'Todas Categorias'
        TabOrder = 1
        OnClick = VerificaCheckBox
      end
    end
  end
end
