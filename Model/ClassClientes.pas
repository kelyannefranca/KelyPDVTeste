unit ClassClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.Character,

  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  FireDAC.Comp.Client, Data.DB, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TClientes = class(TObject)
     DSMas : TDataSource;
  private
  public
     function ConsultaClientes(CodigoCliente : string) : TStringlist;
  end;

implementation

Uses ConexaoU, PedidoVendasU;

function TClientes.ConsultaClientes(CodigoCliente: string): TStringlist;
var
  FDSelQry : TFDQuery;
  SQLSelCli : String;
  Cliente : TStringList;
begin
  Cliente := TStringList.Create;

  SQLSelCli := '';
  SQLSelCli := 'SELECT PKCODCLI, Nome FROM CLIENTES WHERE PKCODCLI = ' + QuotedStr(Trim(CodigoCliente));
  FDSelQry := TFDQuery.Create(nil);
  try
    FDSelQry.Connection:= DM.FDConnection;
    FDSelQry.SQL.Clear;
    FDSelQry.SQL.Add(SQLSelCli);
    FDSelQry.Open;

    if not FDSelQry.IsEmpty then
    begin
       Cliente.Add(FDSelQry.FieldByName('PKCodCli').AsString);
       Cliente.Add(FDSelQry.FieldByName('Nome').AsString);
    end
    else
        ShowMessage('Seu Registro não foi encontrado!, Tente Novamente');
  except
    on E: Exception do
         ShowMessage('Erro: Ao tentar realizar a consulta' + E.Message );
  end;
  Result := Cliente;
end;

end.
