unit PedidoVendasU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.Character, Vcl.Buttons, Vcl.Grids
  ;

type
  TPedidoDeVendasF = class(TForm)
    pnPedidoVendas: TPanel;
    edtCodigoProduto: TLabeledEdit;
    edtDescricaoProd: TLabeledEdit;
    edtPrecoVenda: TLabeledEdit;
    StringGrid: TStringGrid;
    btnInserirProd: TSpeedButton;
    edtDescCliente: TEdit;
    lblDescCliente: TLabel;
    lblCodigoCliente: TLabel;
    edtCodigoClienteP: TEdit;
    lblCodProduto: TLabel;
    lblDescProd: TLabel;
    pnlTopPedido: TPanel;
    btnPesquisaProd: TSpeedButton;
    lblPrecoVenda: TLabel;
    pnlRodapePedido: TPanel;
    LblTotalPedido: TLabel;
    btnGravarPedido: TBitBtn;
    lblValorTotal: TLabel;
    procedure btnPesquisaProdClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnInserirProdClick(Sender: TObject);
    procedure StringGridSetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: string);
    procedure StringGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnGravarPedidoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    var
       Contador : Integer;
    procedure GridDeleteRow(RowNumber: Integer; Grid: TstringGrid);
    procedure AlterouGrid;
  public
    { Public declarations }
    var
      CodigoPedido : String;
      ModoInUp : Char;
    function CalculaValorTotal:String;

    procedure LimparGrid(Grid: TstringGrid);

  end;

var
  PedidoDeVendasF: TPedidoDeVendasF;

implementation

Uses ClassClientes, ClassProdutos, ClassPedidos, ConexaoU;

{$R *.dfm}

procedure TPedidoDeVendasF.FormShow(Sender: TObject);
begin
   Contador := 0;
   StringGridSetEditText(StringGrid,0,0,'');
 end;

procedure TPedidoDeVendasF.FormCreate(Sender: TObject);
begin
  AlterouGrid;
end;



procedure TPedidoDeVendasF.AlterouGrid;
begin
 StringGrid.FixedRows := 1  ;
  StringGrid.ColWidths[0] := 50;
  StringGrid.ColWidths[1] := 650;
  StringGrid.ColWidths[2] := 70;

  StringGrid.Cells[0, 0] := 'Cod';
  StringGrid.Cells[1, 0] := 'Produto';
  StringGrid.Cells[2, 0] := 'Valor';
  StringGrid.Cells[3, 0] := 'Qtd';
  StringGrid.Cells[4, 0] := 'Total';
end;


procedure TPedidoDeVendasF.btnInserirProdClick(Sender: TObject);
begin
    if Contador = 0 then begin
       Inc(Contador);
       StringGrid.Cells[0, StringGrid.RowCount -1] := edtCodigoProduto.Text ;
       StringGrid.Cells[1, StringGrid.RowCount -1] := edtDescricaoProd.Text ;
       StringGrid.Cells[2, StringGrid.RowCount -1] := edtPrecoVenda.Text ;
    end
    else begin
       StringGrid.RowCount := StringGrid.RowCount + 1;
       StringGrid.Cells[0, StringGrid.RowCount -1] := edtCodigoProduto.Text ;
       StringGrid.Cells[1, StringGrid.RowCount -1] := edtDescricaoProd.Text ;
       StringGrid.Cells[2, StringGrid.RowCount -1] := edtPrecoVenda.Text ;
     end;
end;

procedure TPedidoDeVendasF.btnPesquisaProdClick(Sender: TObject);
begin
  var produto : TStringList;
  var InputStr := InputBox('Pesquise Seu Produto', 'Digite o Código do seu Produto','');
  var cons : TProdutos;

  Cons := TProdutos.Create;
  Produto := TStringList.Create;
  try
    Produto := Cons.SelectProduto(InputStr);
    if produto.Count <> 0 then begin
      edtCodigoProduto.Text   := Produto[0];
      edtDescricaoProd.Text  := Produto[1];
      edtPrecoVenda.Text := Produto[2];
    end;
  finally
    FreeAndNil(cons);
    FreeAndNil(Produto);
  end;
end;



procedure TPedidoDeVendasF.btnGravarPedidoClick(Sender: TObject);
var  Consulta : TConsulta;
begin
   case ModoInUp of
      'I':
       begin
          Consulta  := TConsulta.Create;
          try
            if Consulta.InserirPed(StrToInt(edtCodigoClienteP.text),StrToCurr(StringReplace(lblValorTotal.Caption, '.', '', [rfReplaceAll]))) then
               ShowMessage(' Pedido Gravado com sucesso')
            else
               ShowMessage('Não foi possível gravar seu pedido')
          finally
            FreeAndNil(Consulta);
          end;
       end;

       'U':
       begin
          Consulta  := TConsulta.Create;
          try
            if Consulta.AtualizaPed(StrToInt(edtCodigoClienteP.text),StrToCurr(StringReplace(lblValorTotal.Caption, '.', '', [rfReplaceAll])), CodigoPedido) then
               ShowMessage('Pedido Atualizado com sucesso')
            else
               ShowMessage('Não foi possível Atualizar/Gravar seu pedido')
          finally
            FreeAndNil(Consulta);
          end;
       end;
   end;
end;

function TPedidoDeVendasF.CalculaValorTotal : String;
var j : Integer;
    S : string;
    SubTotal : Currency;
begin
   SubTotal := 0;
   S :='';

   for j := 1 to StringGrid.RowCount -1 do
   begin
     S := StringGrid.Cells[4,j];
     if S = '' then
        S := '0';
     SubTotal := SubTotal + StrToFloat(StringReplace(S, '.', '', [rfReplaceAll]));
   end;
   Result := FormatCurr('##,###,##0.00', SubTotal);
end;

procedure TPedidoDeVendasF.StringGridSetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: string);
var
   Vlr : Currency;
   Qtd : integer;
begin
   if (ACol = 3) then
   begin
      if Value <> '' then
         begin
            Vlr := StrToCurr(StringReplace(StringGrid.Cells[2, ARow], '.', '', [rfReplaceAll]));
            Qtd := StrToInt(StringGrid.Cells[3, ARow]);
            Vlr := Vlr * Qtd;
            StringGrid.Cells[4, ARow] := FormatCurr('##,###,##0.00', Vlr);
         end
      else
         StringGrid.Cells[4, ARow] := '';
   end;
   lblValorTotal.Caption := CalculaValorTotal;
end;

procedure TPedidoDeVendasF.StringGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if ModoInUp = 'I' then
   begin
     if key = VK_DELETE then
     begin
       if Application.MessageBox('Deseja apagar o item selecionado ?',
         PChar('Apagar Item'), MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) =
         IDYES then
       begin
          GridDeleteRow(StringGrid.Row, StringGrid);
          StringGridSetEditText(Self,4,1,'s');
       end;
     end;
   end

end;

procedure TPedidoDeVendasF.GridDeleteRow(RowNumber: Integer; Grid: TstringGrid);
var i: Integer;
begin
  Grid.Row := RowNumber;
  if (Grid.Row = Grid.RowCount - 1) then
      Grid.RowCount := Grid.RowCount - 1
  else
  begin
    for i := RowNumber to Grid.RowCount - 1 do
        Grid.Rows[i] := Grid.Rows[i + 1];
    Grid.RowCount := Grid.RowCount - 1;
  end;
end;

procedure TPedidoDeVendasF.LimparGrid(Grid: TstringGrid);
begin
  for var c := 0 to Pred(Grid.ColCount) do
    for var r := 0 to Pred(Grid.RowCount) do
      Grid.Cells[c, r] := '';

  Grid.RowCount := 2;
  AlterouGrid;

  edtCodigoProduto.Clear;
  edtDescricaoProd.Clear;
  edtPrecoVenda.Clear;
end;


end.

