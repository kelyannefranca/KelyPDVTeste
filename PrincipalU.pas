unit PrincipalU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, System.Actions, Vcl.ActnList, Vcl.Imaging.pngimage;

type
  TPrincipalF = class(TForm)
    pnlMenuPrincipal: TPanel;
    pnlTopMenu: TPanel;
    pnlRodapeMenu: TPanel;
    Label1: TLabel;
    pnlIncluirPedidos: TPanel;
    imgIncluir: TImage;
    Label2: TLabel;
    Label3: TLabel;
    btnIncluirPedidos: TSpeedButton;
    pnlConsulta: TPanel;
    Image2: TImage;
    Label6: TLabel;
    Label7: TLabel;
    btnConsultarPedidos: TBitBtn;
    Label4: TLabel;
    procedure PedidodeVendas1Click(Sender: TObject);
    procedure ManutenodePedidos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrincipalF: TPrincipalF;

implementation

Uses PedidoVendasU, ClientesPedidosU, ConsultaPedidosU;

{$R *.dfm}

procedure TPrincipalF.PedidodeVendas1Click(Sender: TObject);
begin
  ClientesPedidosF.ShowModal;
end;


procedure TPrincipalF.ManutenodePedidos1Click(Sender: TObject);
begin
    ConsultaPedidosF.ShowModal;
end;

end.
