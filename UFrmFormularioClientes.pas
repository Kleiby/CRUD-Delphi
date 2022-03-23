unit UFrmFormularioClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFrmFormularioClientes = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Panel3: TPanel;
    BtnCancelar: TButton;
    BtnSalvar: TButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFormularioClientes: TFrmFormularioClientes;

implementation

{$R *.dfm}

uses UDM, UFrmClientes;

procedure TFrmFormularioClientes.BtnCancelarClick(Sender: TObject);
begin
  DM.DtsClientes.Cancel;
  DM.FDTransaction.RollbackRetaining;

  Self.Close;  
end;

procedure TFrmFormularioClientes.BtnSalvarClick(Sender: TObject);
begin

  If (Self.DBEdit1.Text = '') Then
  Begin
    MessageDlg('Informe o Nome do Cliente!', mtInformation, [mbOK], 0);
    Self.DBEdit1.SetFocus;
    Abort;
  End;

  If (Self.DBEdit2.Text = '') Then
  Begin
    MessageDlg('Informe a Data de Nascimento!', mtInformation, [mbOK], 0);
    Self.DBEdit2.SetFocus;
    Abort;
  End;

  If (Self.DBEdit3.Text = '') Then
  Begin
    MessageDlg('Informe o Endereço!', mtInformation, [mbOK], 0);
    Self.DBEdit3.SetFocus;
    Abort;
  End;  

  If (Self.DBEdit4.Text = '') Then
  Begin
    MessageDlg('Informe o Número do Endereço!', mtInformation, [mbOK], 0);
    Self.DBEdit4.SetFocus;
    Abort;
  End;  

  If (Self.DBEdit5.Text = '') Then
  Begin
    MessageDlg('Informe o Bairro!', mtInformation, [mbOK], 0);
    Self.DBEdit5.SetFocus;
    Abort;
  End;  

  If (Self.DBEdit5.Text = '') Then
  Begin
    MessageDlg('Informe o Bairro!', mtInformation, [mbOK], 0);
    Self.DBEdit5.SetFocus;
    Abort;
  End;  

  If Trim(DBEdit6.Text) = '' Then
  Begin
    MessageDlg('Informe o CEP!', mtInformation, [mbOK], 0);
    Self.DBEdit6.SetFocus;
    Abort;
  End;  

  If (Self.DBLookupComboBox1.Text = '') Then
  Begin
    MessageDlg('Informe a Cidade!', mtInformation, [mbOK], 0);
    Self.DBLookupComboBox1.SetFocus;
    Abort;
  End;

  If (Self.DBEdit7.Text = '') Then
  Begin
    MessageDlg('Informe o Telefone!', mtInformation, [mbOK], 0);
    Self.DBEdit7.SetFocus;
    Abort;
  End;  

  If (Self.DBEdit8.Text = '') Then
  Begin
    MessageDlg('Informe o Email!', mtInformation, [mbOK], 0);
    Self.DBEdit8.SetFocus;
    Abort;
  End;  

  Try
    DM.DtsClientes.Post;
    DM.FDTransaction.CommitRetaining;

    MessageDlg('Dados Gravados com Sucesso!', mtInformation, [mbOK], 0);
  Except
    DM.FDTransaction.CommitRetaining;
    MessageDlg('Não foi Possivel Gravar os Dados do Cliente!', mtInformation, [mbOK], 0);
  End;

end;

end.
