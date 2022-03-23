unit UQrClientes;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBX.IBCustomDataSet,
  IBX.IBQuery;

type
  TQrClientes = class(TQuickRep)
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel3: TQRLabel;
    SummaryBand1: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel23: TQRLabel;
    Rodape: TQRBand;
    RodapeSysNumeroPagina: TQRSysData;
    RodapeLbPagina: TQRLabel;
    CabecalhoLbSistema: TQRDBText;
    QRLabel1: TQRLabel;
    Cabecalho: TQRBand;
    CabecalhoLbModulo: TQRDBText;
    CabecalhoShapeLinhaHorizontal: TQRShape;
    CabecalhoLbTituloRelatorio: TQRLabel;
    CabecalhoSysData: TQRSysData;
  private
  public
  end;

var
  QrClientes: TQrClientes;

implementation

uses UDM, UFrmConsulta;

{$R *.DFM}

end.
