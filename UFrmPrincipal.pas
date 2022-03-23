unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFrmPrincipal = class(TForm)
    Menu: TMainMenu;
    Cadastros1: TMenuItem;
    Consulta1: TMenuItem;
    Clientes1: TMenuItem;
    Cidades1: TMenuItem;
    Categorias1: TMenuItem;
    procedure Clientes1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure Categorias1Click(Sender: TObject);
    procedure Consulta1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses UFrmCategorias, UFrmCidades, UFrmClientes, UFrmConsulta, UFrmPesquisar;

procedure TFrmPrincipal.Categorias1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmCategorias, FrmCategorias);
  FrmCategorias.ShowModal;
  FrmCategorias.Free;
  FrmCategorias := nil;
end;

procedure TFrmPrincipal.Cidades1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmCidades, FrmCidades);
  FrmCidades.ShowModal;
  FrmCidades.Free;
  FrmCidades := nil;
end;

procedure TFrmPrincipal.Clientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmClientes, FrmClientes);
  FrmClientes.ShowModal;
  FrmClientes.Free;
  FrmClientes := nil;
end;

procedure TFrmPrincipal.Consulta1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmPesquisar, FrmPesquisar);
  FrmPesquisar.ShowModal;
  FrmPesquisar.Free;
  FrmPesquisar := nil;
end;

end.
