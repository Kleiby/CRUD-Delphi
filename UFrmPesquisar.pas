unit UFrmPesquisar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmPesquisar = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    BtnBuscar: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox5: TGroupBox;
    DbCidade: TDBLookupComboBox;
    DbCategoria: TDBLookupComboBox;
    DbCliente: TDBLookupComboBox;
    CkTodosCliente: TCheckBox;
    CkTodasCategoria: TCheckBox;
    procedure BtnBuscarClick(Sender: TObject);
    procedure VerificaCheckBox(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesquisar: TFrmPesquisar;

implementation

{$R *.dfm}

uses UDM, UFrmConsulta, UFrmPrincipal;

procedure TFrmPesquisar.BtnBuscarClick(Sender: TObject);
begin
  FrmConsulta.FDQConsultaClientes.SQL.Close;
  If (Not CkTodosCliente.Checked) and (DbCliente.Text <> '') Then
  Begin
    AdicionarFiltro('CLIENTES.ID_CLIENTE = '+QuotedStr(DM.DtsCliente ID_CLIENTE.AsString));
    DescricaoFiltros := DescricaoFiltros + 'Clientes: '+ DM.DtsClientesNOME.AsString+'      ';
  End
  Else
    DescricaoFiltros := DescricaoFiltros + 'Clientes: Todos      ';

  If (Not CkTodasCidade.Checked) and (DbCidade.Text <> '') Then
  Begin
    AdicionarFiltro('CIDADES.ID_CIDADE = '+QuotedStr(DM.DtsCidadesID_CIDADE.AsString));
    DescricaoFiltros := DescricaoFiltros + 'Cidades: '+ DM.DtsCidadesCIDADE.AsString+'      ';
  End
  Else
    DescricaoFiltros := DescricaoFiltros + 'Cidades: Todos      ';

   If (Not CkTodasCategoria.Checked) and (Categoria.Text <> '') Then
  Begin
    AdicionarFiltro('CATEGORIAS.ID_CATEGORIA = '+QuotedStr(DM.DtsCategoriasID_CATEGORIA.AsString));
    DescricaoFiltros := DescricaoFiltros + 'Categorias: '+ DM.DtsCategoriasCATEGORIA.AsString+'      ';
  End
  Else
    DescricaoFiltros := DescricaoFiltros + 'Categorias: Todos      ';

  Application.CreateForm(TFrmConsulta, FrmConsulta);
  FrmConsulta.ShowModal;
  FrmConsulta.Free;
  FrmConsulta := nil;

  FrmConsulta.FDQConsultaClientes.SQL.Open;

end;

procedure TFrmPesquisar.VerificaCheckBox(Sender: TObject);
begin
  if Sender.ClassType = TCheckBox then
  Begin
    If TCheckBox(Sender) = CkTodosCliente      then HabilitarCampoDeBusca(DbCliente     , Not(TCheckBox(Sender).Checked));
    If TCheckBox(Sender) = CkTodasCidade      then HabilitarCampoDeBusca(DbCidade      , Not(TCheckBox(Sender).Checked));
    If TCheckBox(Sender) = CkTodasCategoria   then HabilitarCampoDeBusca(DBCategoria   , Not(TCheckBox(Sender).Checked));
  End;
end;

Procedure AdicionarFiltro( AValue :string );
Begin
  Filtro := Filtro + ' AND ' + AValue;
end;

Begin

  If not BtnVisualizar.Enabled Then
    Exit;

  If not VerificarPreenchimentos Then
    Exit;

  BtnVisualizar.Enabled := False;
  DescricaoFiltros      := '';

End;

procedure TFrmRelatoriosProdutos.BtnVisualizarClick(Sender: TObject);
  procedure painelAguarde(status: boolean);
  begin
    if (status) then
    begin
      //aguarde
      PnMensagem.Left := (Self.Width Div 2) - (PnMensagem.Width DIV 2);
      PnMensagem.Top  := (Self.Height DIV 2) - (PnMensagem.Height Div 2);
      PnMensagem.Visible := True;
      RxAnimacao.Animate := True;
    end
    else
      PnMensagem.Visible := False;
  end;
var
  Filtro, LINHA_ESTOQUE_NOVO, FILTRO_DEPOSITO, JOIN_DEPOSITO, SQL_ESTOQUE_NOVO, Inativo: String;
  QtdDaAmostragem: Currency;
  DescricaoFiltros :String;

procedure TFrmPesquisar.FormShow
Begin
  DM.DtsClientes.Close;
  DM.DtsClientes.SelectSQL.Strings[1] := '';
  DM.DtsClientes.Open;
  DM.DtsClientes.FetchAll;  

  DM.DtsCidades.Close;
  DM.DtsCidades.SelectSQL.Strings[1] := '';
  DM.DtsCidades.Open;
  DM.DtsCidades.FetchAll;

  DM.DtsCategorias.Close;
  DM.DtsCategorias.SelectSQL.Strings[1] := '';
  DM.DtsCategorias.Open;
  DM.DtsCategorias.FetchAll;    
end;

end.
