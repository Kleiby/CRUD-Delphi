unit UFrmClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, System.UITypes,
  Vcl.StdCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmClientes = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label3: TLabel;
    Panel3: TPanel;
    BtnAlterar: TButton;
    BtnNovo: TButton;
    BtnExcluir: TButton;
    DsClientes: TDataSource;
    QClientes: TFDQuery;
    QClientesID_CLIENTE: TIntegerField;
    QClientesNOME: TStringField;
    QClientesDATA_NASCIMENTO: TDateField;
    QClientesENDERECO: TStringField;
    QClientesNUMERO: TStringField;
    QClientesBAIRRO: TStringField;
    QClientesCEP: TStringField;
    QClientesTELEFONE: TStringField;
    QClientesEMAIL: TStringField;
    QClientesID_CATEGORIA: TIntegerField;
    QClientesID_CIDADE: TIntegerField;
    procedure AbrirFormularioClientes(ATag: Integer);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmClientes: TFrmClientes;

implementation

{$R *.dfm}

uses UDM, UFrmFormularioClientes;

procedure TFrmClientes.AbrirFormularioClientes(ATag: Integer);
begin
  Application.CreateForm(TFrmFormularioClientes, FrmFormularioClientes);
  FrmFormularioClientes.Tag := ATag;
  FrmFormularioClientes.ShowModal;
  FreeAndNil(FrmFormularioClientes);

  FrmClientes.QClientes.Close;
  FrmClientes.QClientes.Open;
end;

procedure TFrmClientes.BtnAlterarClick(Sender: TObject);
begin
  DM.DtsClientes.Close;
  DM.DtsClientes.SQL.Strings[1] := 'WHERE CLIENTES.ID_CLIENTE = ' + Self.QClientesID_CLIENTE.AsString;
  DM.DtsClientes.Open;

  AbrirFormularioClientes(1);
end;

procedure TFrmClientes.BtnExcluirClick(Sender: TObject);
begin
  try
  DM.DtsClientes.Close;
  DM.DtsClientes.SQL.Strings[1] := 'WHERE CLIENTES.ID_CLIENTE = ' + Self.QClientesID_CLIENTE.AsString;
  DM.DtsClientes.Open;

    if not (QClientes.IsEmpty) then
      DM.DtsClientes.Delete;

    DM.FDTransaction.CommitRetaining;

    MessageDlg('Cliente Excluido com Sucesso!', mtInformation, [mbOK], 0);
  except
    DM.FDTransaction.RollbackRetaining;
    MessageDlg('Não foi Possivel Excluir o Cliente!', mtInformation, [mbOK], 0);
  end;

  Self.QClientes.Close;
  Self.QClientes.Open;
end;

procedure TFrmClientes.BtnNovoClick(Sender: TObject);
begin
  DM.DtsClientes.Close;
  DM.DtsClientes.Open;
  DM.DtsClientes.Insert;

  AbrirFormularioClientes();
end;

end.
