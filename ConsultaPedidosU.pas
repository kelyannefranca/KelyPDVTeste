unit ConsultaPedidosU;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Data.DB, FireDAC.Stan.Param,
  Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage;
type
  TConsultaPedidosF = class(TForm)
    pnlconsultatop: TPanel;
    pnlConsultaPrincipal: TPanel;
    DBGrid1: TDBGrid;
    lblPedidos: TLabel;
    lblitemspedido: TLabel;
    DBGrid2: TDBGrid;
    pnlConsultaRodape: TPanel;
    imgSeta: TImage;
    btnFechar: TButton;
    btnEditarPedido: TBitBtn;
    btnExcluirPed: TBitBtn;

    procedure btnExcluirPedClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEditarPedidoClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }

  end;
var
  ConsultaPedidosF: TConsultaPedidosF;

implementation

Uses ClientesPedidosU, ClassPedidos, ConexaoU, PedidoVendasU;
{$R *.dfm}


procedure TConsultaPedidosF.btnEditarPedidoClick(Sender: TObject);
var i : Integer;
    Pedido : TPedido;
begin
    Pedido := TPedido.Create;
    I := 1;
    try
      with DBGrid2.DataSource.DataSet do
      begin
         While not EoF do
         Begin
            PedidoDeVendasF.StringGrid.RowCount := I + 1;
            Pedido.NumPedido := FieldByName('FkNumeroPedido').AsString;
            Pedido.CodProduto := FieldByName('CodProduto').AsString;
            Pedido.Descricao := FieldByName('Descricao').AsString;
            Pedido.VlrUnitario := FieldByName('VlrUnitario').AsString;
            Pedido.Qtd := FieldByName('Qtd').AsString;
            Pedido.Total :=  FieldByName('Total').AsString;     // As Total
            PedidoDeVendasF.StringGrid.Cells[0,I] := Pedido.CodProduto;
            PedidoDeVendasF.StringGrid.Cells[1,I] := Pedido.Descricao;
            PedidoDeVendasF.StringGrid.Cells[2,I] := Pedido.VlrUnitario;
            PedidoDeVendasF.StringGrid.Cells[3,I] := Pedido.Qtd;
            PedidoDeVendasF.StringGrid.Cells[4,I] := Pedido.Total;
            I := I + 1;
            Next;
         End;
         PedidoDeVendasF.edtCodigoClienteP.text := DBGrid1.DataSource.DataSet.FieldByName('PKCodCli').AsString;
         PedidoDeVendasF.edtDescCliente.text := DBGrid1.DataSource.DataSet.FieldByName('Cliente').AsString;
         PedidoDeVendasF.ModoInUp := 'U';
         PedidoDeVendasF.CodigoPedido :=  DBGrid1.DataSource.DataSet.FieldByName('NumPedido').AsString;
         PedidoDeVendasF.ShowModal;
      end;
    finally
      FreeAndNil(Pedido);
    end;
end;

procedure TConsultaPedidosF.btnFecharClick(Sender: TObject);
begin
    ConsultaPedidosF.Close;
end;



procedure TConsultaPedidosF.btnExcluirPedClick(Sender: TObject);
begin
   var InputStr := InputBox('Cancelar Pedido', 'Digite o número do pedido','');
   try
      Dm.FDConnection.StartTransaction;
      Dm.QryDelPedido.SQL.Clear;
      Dm.QryDelPedido.SQL.Add( 'DELETE FROM  pedidosdadosgerais WHERE NumPedido = :pNumPedido');
      Dm.QryDelPedido.ParamByName('pNumPedido').AsInteger := StrToInt(Trim(InputStr));
      Dm.QryDelPedido.ExecSQL;
      Dm.QryDelPedido.Close;
      Dm.FDConnection.Commit;
      ShowMessage('Pedido Cancelado com sucesso!');
      Dm.QueryPedGerais.Close;
      Dm.QueryPedGerais.Close;
      Dm.QueryPedGerais.Open;
      Dm.QueryPedGerais.Open;
   except on E: Exception do
      DM.FDConnection.Rollback;
   end;
end;
procedure TConsultaPedidosF.FormShow(Sender: TObject);
begin
   Dm.QueryPedGerais.Close;
   Dm.qryPedProd.Close;
   Dm.QueryPedGerais.Open;
   Dm.qryPedProd.Open;
end;

end.
