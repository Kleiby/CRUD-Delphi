object FrmCategorias: TFrmCategorias
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  ClientHeight = 355
  ClientWidth = 357
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 357
    Height = 49
    Align = alTop
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    object Label3: TLabel
      Left = 248
      Top = 18
      Width = 98
      Height = 25
      Caption = 'Categorias'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 49
    Width = 357
    Height = 112
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 20
      Width = 15
      Height = 13
      Caption = 'ID:'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 49
      Width = 51
      Height = 13
      Caption = 'Categoria:'
      FocusControl = DBEdit2
    end
    object DBNavigator1: TDBNavigator
      Left = 56
      Top = 82
      Width = 225
      Height = 25
      DataSource = DM.DsCategorias
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 104
      Top = 16
      Width = 41
      Height = 21
      DataField = 'ID_CATEGORIA'
      DataSource = DM.DsCategorias
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 104
      Top = 43
      Width = 225
      Height = 21
      DataField = 'CATEGORIA'
      DataSource = DM.DsCategorias
      TabOrder = 2
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 161
    Width = 357
    Height = 194
    Align = alClient
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 355
      Height = 192
      Align = alClient
      DataSource = DM.DsCategorias
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_CATEGORIA'
          Title.Caption = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CATEGORIA'
          Title.Caption = 'Categoria'
          Width = 300
          Visible = True
        end>
    end
  end
end
