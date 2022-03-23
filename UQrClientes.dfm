object QrClientes: TQrClientes
  Left = 0
  Top = 0
  Width = 794
  Height = 1123
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  Functions.Strings = (
    'PAGENUMBER'
    'COLUMNNUMBER'
    'REPORTTITLE')
  Functions.DATA = (
    '0'
    '0'
    #39#39)
  Options = [FirstPageHeader, LastPageFooter]
  Page.Columns = 1
  Page.Orientation = poPortrait
  Page.PaperSize = A4
  Page.Continuous = False
  Page.Values = (
    100.000000000000000000
    2970.000000000000000000
    100.000000000000000000
    2100.000000000000000000
    100.000000000000000000
    100.000000000000000000
    0.000000000000000000)
  PrinterSettings.Copies = 1
  PrinterSettings.OutputBin = Auto
  PrinterSettings.Duplex = False
  PrinterSettings.FirstPage = 0
  PrinterSettings.LastPage = 0
  PrinterSettings.UseStandardprinter = False
  PrinterSettings.UseCustomBinCode = False
  PrinterSettings.CustomBinCode = 0
  PrinterSettings.ExtendedDuplex = 0
  PrinterSettings.UseCustomPaperCode = False
  PrinterSettings.CustomPaperCode = 0
  PrinterSettings.PrintMetaFile = False
  PrinterSettings.MemoryLimit = 1000000
  PrinterSettings.PrintQuality = 0
  PrinterSettings.Collate = 0
  PrinterSettings.ColorOption = 0
  PrintIfEmpty = True
  SnapToGrid = True
  Units = MM
  Zoom = 100
  PrevFormStyle = fsNormal
  PreviewInitialState = wsMaximized
  PrevShowThumbs = False
  PrevShowSearch = False
  PrevInitialZoom = qrZoomToWidth
  PreviewDefaultSaveType = stPDF
  PreviewLeft = 0
  PreviewTop = 0
  object DetailBand1: TQRBand
    Left = 38
    Top = 97
    Width = 718
    Height = 108
    Frame.DrawTop = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      285.750000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbDetail
    object QRDBText1: TQRDBText
      Tag = 2
      Left = 51
      Top = 1
      Width = 43
      Height = 14
      Size.Values = (
        37.041666666666670000
        134.937500000000000000
        2.645833333333333000
        113.770833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = FrmConsulta.FDQConsultaClientes
      DataField = 'ID_CLIENTE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 7
    end
    object QRDBText2: TQRDBText
      Tag = 2
      Left = 44
      Top = 17
      Width = 318
      Height = 14
      Size.Values = (
        37.041666666666670000
        116.416666666666700000
        44.979166666666670000
        841.375000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = FrmConsulta.FDQConsultaClientes
      DataField = 'NOME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 7
    end
    object QRDBText3: TQRDBText
      Tag = 2
      Left = 67
      Top = 32
      Width = 120
      Height = 14
      Size.Values = (
        37.041666666666670000
        177.270833333333300000
        84.666666666666670000
        317.500000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = FrmConsulta.FDQConsultaClientes
      DataField = 'CNPJ_CPF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 7
    end
    object QRDBText13: TQRDBText
      Tag = 4
      Left = 249
      Top = 32
      Width = 113
      Height = 14
      Size.Values = (
        37.041666666666670000
        658.812500000000000000
        84.666666666666670000
        298.979166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataField = 'INSCRICAO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 7
    end
    object QRLabel3: TQRLabel
      Tag = 1
      Left = 4
      Top = 32
      Width = 58
      Height = 14
      Size.Values = (
        37.041666666666670000
        10.583333333333330000
        84.666666666666670000
        153.458333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'CNPJ/CPF:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 7
    end
    object QRLabel7: TQRLabel
      Tag = 3
      Left = 190
      Top = 32
      Width = 53
      Height = 14
      Size.Values = (
        37.041666666666670000
        502.708333333333300000
        84.666666666666670000
        140.229166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Inscri'#231#227'o:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 7
    end
    object QRLabel9: TQRLabel
      Tag = 5
      Left = 372
      Top = 32
      Width = 40
      Height = 14
      Size.Values = (
        37.041666666666670000
        984.250000000000000000
        84.666666666666670000
        105.833333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Cidade:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 7
    end
    object QRDBText4: TQRDBText
      Tag = 2
      Left = 61
      Top = 47
      Width = 126
      Height = 14
      Size.Values = (
        37.041666666666670000
        161.395833333333300000
        124.354166666666700000
        333.375000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = FrmConsulta.FDQConsultaClientes
      DataField = 'TELEFONE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 7
    end
    object QRLabel10: TQRLabel
      Tag = 5
      Left = 372
      Top = 17
      Width = 54
      Height = 14
      Size.Values = (
        37.041666666666670000
        984.250000000000000000
        44.979166666666670000
        142.875000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Categoria:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 7
    end
    object QRDBText5: TQRDBText
      Tag = 6
      Left = 434
      Top = 16
      Width = 278
      Height = 14
      Size.Values = (
        37.041666666666670000
        1148.291666666667000000
        42.333333333333330000
        735.541666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = FrmConsulta.FDQConsultaClientes
      DataField = 'CATEGORIA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 7
    end
    object QRDBText9: TQRDBText
      Tag = 6
      Left = 418
      Top = 32
      Width = 185
      Height = 14
      Size.Values = (
        37.041666666666670000
        1105.958333333333000000
        84.666666666666670000
        489.479166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = FrmConsulta.FDQConsultaClientes
      DataField = 'CIDADE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 7
    end
    object QRLabel13: TQRLabel
      Tag = 7
      Left = 608
      Top = 32
      Width = 19
      Height = 14
      Size.Values = (
        37.041666666666670000
        1608.666666666667000000
        84.666666666666670000
        50.270833333333330000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'UF:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 7
    end
    object QRDBText12: TQRDBText
      Tag = 8
      Left = 630
      Top = 32
      Width = 22
      Height = 14
      Size.Values = (
        37.041666666666670000
        1666.875000000000000000
        84.666666666666670000
        58.208333333333330000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = FrmConsulta.FDQConsultaClientes
      DataField = 'UF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 7
    end
    object QRLabel14: TQRLabel
      Tag = 1
      Left = 4
      Top = 47
      Width = 48
      Height = 14
      Size.Values = (
        37.041666666666670000
        10.583333333333330000
        124.354166666666700000
        127.000000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Telefone:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 7
    end
    object QRLabel15: TQRLabel
      Tag = 1
      Left = 4
      Top = 17
      Width = 34
      Height = 14
      Size.Values = (
        37.041666666666670000
        10.583333333333330000
        44.979166666666670000
        89.958333333333330000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Nome:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 7
    end
    object QRLabel16: TQRLabel
      Tag = 5
      Left = 372
      Top = 47
      Width = 35
      Height = 14
      Size.Values = (
        37.041666666666670000
        984.250000000000000000
        124.354166666666700000
        92.604166666666670000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Bairro:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 7
    end
    object QRDBText16: TQRDBText
      Tag = 2
      Left = 64
      Top = 62
      Width = 298
      Height = 14
      Size.Values = (
        37.041666666666670000
        169.333333333333300000
        164.041666666666700000
        788.458333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataField = 'END_NUMERO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 7
    end
    object QRDBText17: TQRDBText
      Tag = 6
      Left = 413
      Top = 46
      Width = 190
      Height = 14
      Size.Values = (
        37.041666666666670000
        1092.729166666667000000
        121.708333333333300000
        502.708333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = FrmConsulta.FDQConsultaClientes
      DataField = 'BAIRRO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 7
    end
    object QRLabel17: TQRLabel
      Tag = 7
      Left = 608
      Top = 47
      Width = 27
      Height = 14
      Size.Values = (
        37.041666666666670000
        1608.666666666667000000
        124.354166666666700000
        71.437500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'CEP:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 7
    end
    object QRDBText18: TQRDBText
      Tag = 8
      Left = 638
      Top = 49
      Width = 74
      Height = 14
      Size.Values = (
        37.041666666666670000
        1688.041666666667000000
        129.645833333333300000
        195.791666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = FrmConsulta.FDQConsultaClientes
      DataField = 'CEP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 7
    end
    object QRLabel18: TQRLabel
      Tag = 1
      Left = 4
      Top = 62
      Width = 52
      Height = 14
      Size.Values = (
        37.041666666666670000
        10.583333333333330000
        164.041666666666700000
        137.583333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Endere'#231'o:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 7
    end
    object QRDBText20: TQRDBText
      Tag = 2
      Left = 63
      Top = 77
      Width = 299
      Height = 14
      Size.Values = (
        37.041666666666670000
        166.687500000000000000
        203.729166666666700000
        791.104166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = FrmConsulta.FDQConsultaClientes
      DataField = 'EMAIL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 7
    end
    object QRLabel23: TQRLabel
      Tag = 1
      Left = 4
      Top = 77
      Width = 33
      Height = 14
      Size.Values = (
        37.041666666666670000
        10.583333333333330000
        203.729166666666700000
        87.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Email:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 7
    end
    object QRLabel1: TQRLabel
      Tag = 1
      Left = 4
      Top = 2
      Width = 40
      Height = 14
      Size.Values = (
        37.041666666666670000
        10.583333333333330000
        5.291666666666667000
        105.833333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'C'#243'digo:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 7
    end
  end
  object SummaryBand1: TQRBand
    Left = 38
    Top = 205
    Width = 718
    Height = 20
    Frame.DrawTop = True
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      52.916666666666670000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbSummary
    object QRExpr2: TQRExpr
      Tag = 2
      Left = 94
      Top = 2
      Width = 36
      Height = 15
      Size.Values = (
        39.687500000000000000
        248.708333333333300000
        5.291666666666667000
        95.250000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      Expression = 'COUNT'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object QRLabel2: TQRLabel
      Tag = 1
      Left = 2
      Top = 2
      Width = 86
      Height = 15
      Size.Values = (
        39.687500000000000000
        5.291666666666667000
        5.291666666666667000
        227.541666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Total de Clientes: '
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
  end
  object Rodape: TQRBand
    Left = 38
    Top = 225
    Width = 718
    Height = 18
    Frame.DrawTop = True
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      47.625000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbPageFooter
    object RodapeSysNumeroPagina: TQRSysData
      Left = 677
      Top = 2
      Width = 39
      Height = 15
      Size.Values = (
        39.687500000000000000
        1791.229166666667000000
        5.291666666666667000
        103.187500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      Data = qrsPageNumber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Text = ''
      Transparent = False
      ExportAs = exptText
      FontSize = 8
    end
    object RodapeLbPagina: TQRLabel
      Left = 630
      Top = 2
      Width = 36
      Height = 15
      Size.Values = (
        39.687500000000000000
        1666.875000000000000000
        5.291666666666667000
        95.250000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'P'#225'gina:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
  end
  object CabecalhoLbSistema: TQRDBText
    Left = 38
    Top = 30
    Width = 75
    Height = 10
    Size.Values = (
      26.458333333333330000
      100.541666666666700000
      79.375000000000000000
      198.437500000000000000)
    XLColumn = 0
    XLNumFormat = nfGeneral
    Alignment = taLeftJustify
    AlignToBand = False
    Color = clWhite
    DataField = 'SISTEMA_E_VERSAO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
    ExportAs = exptText
    WrapStyle = BreakOnSpaces
    FullJustify = False
    MaxBreakChars = 0
    FontSize = 5
  end
  object Cabecalho: TQRBand
    Left = 38
    Top = 38
    Width = 718
    Height = 59
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      156.104166666666700000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbTitle
    object CabecalhoLbModulo: TQRDBText
      Left = 0
      Top = 2
      Width = 51
      Height = 14
      Size.Values = (
        37.041666666666670000
        0.000000000000000000
        5.291666666666667000
        134.937500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataField = 'MODULO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object CabecalhoShapeLinhaHorizontal: TQRShape
      Left = 0
      Top = 25
      Width = 718
      Height = 1
      Size.Values = (
        2.645833333333333000
        0.000000000000000000
        66.145833333333330000
        1899.708333333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsHorLine
      VertAdjust = 0
    end
    object CabecalhoLbTituloRelatorio: TQRLabel
      Left = 296
      Top = 27
      Width = 126
      Height = 18
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      Size.Values = (
        47.625000000000000000
        783.166666666666700000
        71.437500000000000000
        333.375000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taCenter
      AlignToBand = True
      Caption = '  Lista de Clientes  '
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object CabecalhoSysData: TQRSysData
      Left = 646
      Top = 2
      Width = 71
      Height = 14
      Size.Values = (
        37.041666666666670000
        1709.208333333333000000
        5.291666666666667000
        187.854166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      Data = qrsDateTime
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Text = ''
      Transparent = False
      ExportAs = exptText
      FontSize = 8
    end
  end
end
