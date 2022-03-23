program CRUD;





uses
  Vcl.Forms,
  UFrmCategorias in 'UFrmCategorias.pas' {FrmCategorias},
  UDM in 'UDM.pas' {DM: TDataModule},
  UFrmClientes in 'UFrmClientes.pas' {FrmClientes},
  UFrmCidades in 'UFrmCidades.pas' {FrmCidades},
  UFrmPrincipal in 'UFrmPrincipal.pas' {FrmPrincipal},
  UFrmPesquisar in 'UFrmPesquisar.pas' {FrmPesquisar},
  UFrmConsulta in 'UFrmConsulta.pas' {FrmConsulta},
  UQrClientes in 'UQrClientes.pas' {QrClientes: TQuickRep},
  UFrmFormularioClientes in 'UFrmFormularioClientes.pas' {FrmFormularioClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
