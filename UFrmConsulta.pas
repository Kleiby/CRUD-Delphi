unit UFrmConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmConsulta = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Panel2: TPanel;
    BtnImpirmir: TButton;
    BtnExportar: TButton;
    BtnVoltar: TButton;
    DBGConsultaClientes: TDBGrid;
    DsConsultaClientes: TDataSource;
    FDQConsultaClientes: TFDQuery;
    FDQConsultaClientesID_CLIENTE: TIntegerField;
    FDQConsultaClientesNOME: TStringField;
    FDQConsultaClientesDATA_NASCIMENTO: TDateField;
    FDQConsultaClientesENDERECO: TStringField;
    FDQConsultaClientesNUMERO: TStringField;
    FDQConsultaClientesBAIRRO: TStringField;
    FDQConsultaClientesCEP: TStringField;
    FDQConsultaClientesTELEFONE: TStringField;
    FDQConsultaClientesEMAIL: TStringField;
    FDQConsultaClientesID_CATEGORIA: TIntegerField;
    FDQConsultaClientesID_CIDADE: TIntegerField;
    FDQConsultaClientesCIDADE: TStringField;
    FDQConsultaClientesUF: TStringField;
    FDQConsultaClientesCATEGORIA: TStringField;
    procedure BtnImpirmirClick(Sender: TObject);
    procedure BtnVoltarClick(Sender: TObject);
    procedure BtnExportarClick(Sender: TObject);
    procedure DBGConsultaClientesDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsulta: TFrmConsulta;

implementation

{$R *.dfm}

uses UDM, UQrClientes, UFrmPesquisar, UFrmClientes, UFrmFormularioClientes;

procedure TFrmConsulta.BtnExportarClick(Sender: TObject);
Var
  sLista  : TStringList;
  nCampo  : Integer;
  cLinha  : String;
begin
   sLista  := TStringList.Create;
   cLinha := '';
   for nCampo := 0 to FDQConsultaClientes.fileds.coun-1 do
      cLinha := cLinha + FDQConsultaClientes.fileds[nCampo].DisplayLabel + ';';
   sLista.Add(cLinha);

   DBGConsultaClientes.First;
   while not FDQConsultaClientes.EOF do
    begin
      cLinha := '';
      for nCampo := 0 to FDQConsultaClientes.fileds.coun-1 do
        cLinha := cLinha + FDQConsultaClientes.fileds[nCampo].DisplayText + ';';
       sLista.Add(cLinha);
       DBGConsultaClientes.Next;
    end;

    if FileExisits (C:\tmp\Clientes.csv) then
      DeleteFile(C:\tmp\Clientes.csv);

    sLista.SaveToFile(C:\tmp\Clientes.csv);
end;

procedure TFrmConsulta.BtnImpirmirClick(Sender: TObject);
begin
  Application.CreateForm(TQrClientes, QrClientes);
  {UQrClientes.ShowModal;
  UQrClientes.Free;
  UQrClientes := nil;}
end;

procedure TFrmConsulta.BtnVoltarClick(Sender: TObject);
begin
  Application.CreateForm(TFrmPesquisar, FrmPesquisar);
  FrmPesquisar.ShowModal;
  FrmPesquisar.Free;
  FrmPesquisar := nil;
end;

procedure TFrmConsulta.DBGConsultaClientesDblClick(Sender: TObject);
begin
  DM.DtsClientes.Close;
  DM.DtsClientes.SelectSQL.Strings[1] := 'WHERE CLIENTES.ID_CLIENTE = ' + Self.FDQConsultaClientesID_CLIENTE.AsString;
  DM.DtsClientes.Open;

  FrmClientes.AbrirFormularioClientes(1);
end;

end.
