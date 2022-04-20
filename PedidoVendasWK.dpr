program PedidoVendasWK;
uses
  Vcl.Forms,
  PrincipalU in 'PrincipalU.pas' {PrincipalF},
  ConexaoU in 'Model\ConexaoU.pas' {Dm: TDataModule},
  ClientesPedidosU in 'ClientesPedidosU.pas' {ClientesPedidosF},
  ConsultaPedidosU in 'ConsultaPedidosU.pas' {ConsultaPedidosF},
  ClassProdutos in 'Model\ClassProdutos.pas',
  ClassClientes in 'Model\ClassClientes.pas',
  PedidoVendasU in 'PedidoVendasU.pas' {PedidoDeVendasF},
  ClassPedidos in 'Model\ClassPedidos.pas';

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrincipalF, PrincipalF);
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TClientesPedidosF, ClientesPedidosF);
  Application.CreateForm(TConsultaPedidosF, ConsultaPedidosF);
  Application.CreateForm(TPedidoDeVendasF, PedidoDeVendasF);
  Application.Run;
end.
