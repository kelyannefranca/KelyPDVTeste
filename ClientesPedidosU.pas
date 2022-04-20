unit ClientesPedidosU;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;
type
  TClientesPedidosF = class(TForm)
    pnlConsultaCliente: TPanel;
    lblCodigoCliente: TLabel;
    btnPesquisaCli: TBitBtn;
    btnLimpar: TBitBtn;
    LbNomeCliente: TLabel;
    btnIncluirPedido: TBitBtn;
    edtPedCliente: TLabeledEdit;
    Panel1: TPanel;
    btnFechar: TBitBtn;


    procedure FormCreate(Sender: TObject);
    procedure btnIncluirPedidoClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnPesquisaCliClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     AchouCliente : Boolean;
  end;
var
  ClientesPedidosF: TClientesPedidosF;
implementation
{$R *.dfm}
uses PedidoVendasU, ClassClientes;

procedure TClientesPedidosF.FormCreate(Sender: TObject);
begin
    AchouCliente := False;
 end;

procedure TClientesPedidosF.btnPesquisaCliClick(Sender: TObject);
var Consultar : TClientes;
    Cliente : TStringList;
begin
  Consultar := TClientes.Create;
  Cliente := TStringList.Create;
  try
    Cliente := Consultar.ConsultaClientes(Trim(edtPedCliente.Text));
    if Cliente.Count <> 0 then begin
       AchouCliente := True;
       LbNomeCliente.Caption  := Cliente[1];
       edtPedCliente.Enabled := False end
    else begin
       AchouCliente  := False;
       edtPedCliente.Clear;
       edtPedCliente.SetFocus;
    end;
  finally
    FreeAndNil(Consultar);
    FreeAndNil(Cliente);
  end;
end;

procedure TClientesPedidosF.btnLimparClick(Sender: TObject);
begin
  if edtPedCliente.Enabled = False then
  begin
     edtPedCliente.Enabled := True;
     edtPedCliente.Clear;
     LbNomeCliente.Caption := '';
     edtPedCliente.SetFocus;
  end;
end;


procedure TClientesPedidosF.btnIncluirPedidoClick(Sender: TObject);
begin
   if AchouCliente and (edtPedCliente.Text <> '0') and (edtPedCliente.Text <> '') and (LbNomeCliente.Caption <>'') then begin
      with PedidoDeVendasF do begin
           edtCodigoClienteP.text := Trim(edtPedCliente.Text);
           edtDescCliente.text := LbNomeCliente.Caption;
           ModoInUp := 'I';
           LimparGrid(PedidoDeVendasF.StringGrid);
           ShowModal;
      end;
   end;
end;
procedure TClientesPedidosF.btnFecharClick(Sender: TObject);
begin
   ClientesPedidosF.Close;
end;


end.
