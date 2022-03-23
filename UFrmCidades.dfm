object FrmCidades: TFrmCidades
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  ClientHeight = 355
  ClientWidth = 395
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
    Width = 395
    Height = 49
    Align = alTop
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 357
    object Label3: TLabel
      Left = 312
      Top = 18
      Width = 73
      Height = 25
      Caption = 'Cidades'
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
    Width = 395
    Height = 112
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 357
    object Label1: TLabel
      Left = 32
      Top = 20
      Width = 15
      Height = 13
      Caption = 'ID:'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 32
      Top = 49
      Width = 37
      Height = 13
      Caption = 'Cidade:'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 249
      Top = 20
      Width = 17
      Height = 13
      Caption = 'UF:'
      FocusControl = DBEdit1
    end
    object DBNavigator1: TDBNavigator
      Left = 75
      Top = 82
      Width = 225
      Height = 25
      DataSource = DM.DsCidades
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 75
      Top = 16
      Width = 41
      Height = 21
      DataField = 'ID_CIDADE'
      DataSource = DM.DsCidades
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 75
      Top = 43
      Width = 262
      Height = 21
      DataField = 'CIDADE'
      DataSource = DM.DsCidades
      TabOrder = 2
    end
    object DBComboBox1: TDBComboBox
      Left = 288
      Top = 16
      Width = 49
      Height = 21
      DataField = 'UF'
      DataSource = DM.DsCidades
      Items.Strings = (
        'AC'
        'AL'
        'AM'
        'AP'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MG'
        'MS'
        'MT'
        'PA'
        'PB'
        'PE'
        'PI'
        'PR'
        'RJ'
        'RN'
        'RO'
        'RR'
        'RS'
        'SC'
        'SE'
        'SP'
        'TO')
      TabOrder = 3
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 161
    Width = 395
    Height = 194
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 357
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 393
      Height = 192
      Align = alClient
      DataSource = DM.DsCidades
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_CIDADE'
          Title.Caption = 'ID'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CIDADE'
          Title.Caption = 'Cidade'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF'
          Width = 30
          Visible = True
        end>
    end
  end
end
