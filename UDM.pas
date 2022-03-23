unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase;

type
  TDM = class(TDataModule)
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    DtsCategorias: TFDQuery;
    DsCategorias: TDataSource;
    DtsCategoriasID_CATEGORIA: TIntegerField;
    DtsCategoriasCATEGORIA: TStringField;
    DtsClientes: TFDQuery;
    DsClientes: TDataSource;
    DtsCidades: TFDQuery;
    DsCidades: TDataSource;
    DtsCidadesID_CIDADE: TIntegerField;
    DtsCidadesCIDADE: TStringField;
    DtsCidadesUF: TStringField;
    FDConnection: TFDConnection;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
    FDTransaction: TFDTransaction;
    DtsClientesID_CLIENTE: TIntegerField;
    DtsClientesNOME: TStringField;
    DtsClientesDATA_NASCIMENTO: TDateField;
    DtsClientesENDERECO: TStringField;
    DtsClientesNUMERO: TStringField;
    DtsClientesBAIRRO: TStringField;
    DtsClientesCEP: TStringField;
    DtsClientesTELEFONE: TStringField;
    DtsClientesEMAIL: TStringField;
    DtsClientesID_CATEGORIA: TIntegerField;
    DtsClientesID_CIDADE: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses UFrmFormularioClientes, UFrmCidades, UFrmClientes, UFrmConsulta;

end.
