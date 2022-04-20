unit ClassPedidos;


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
  FireDAC.Comp.DataSet,FireDAC.DApt.Intf, FireDAC.DApt;

type
  TConsulta = class(TObject)
     DSMas : TDataSource;
  private

  public
     function InserirPed(CodCli : Integer; VTotal : Currency):Boolean;
     function AtualizaPed(CodCli : Integer; VTotal : Currency; CodPed :String):Boolean;
  end;

Type
  TPedido = class(TObject)
  private
    FQtd: String;
    FDescricao: String;
    FTotal: String;
    FNumPedido: string;
    FCodProduto: String;
    FVlrUnitario: String;
  public
    property NumPedido      :string read FNumPedido write FNumPedido;
    property CodProduto     :String read FCodProduto write FCodProduto;
    property Descricao      :String read FDescricao write FDescricao;
    property VlrUnitario    :String read FVlrUnitario write FVlrUnitario;
    property Qtd            :String read FQtd write FQtd;
    property Total          :String read FTotal write FTotal;
  end;

implementation

Uses PedidoVendasU,ConexaoU;

{ TConsulta }

function TConsulta.InserirPed(CodCli : Integer; VTotal : Currency):Boolean;
var
  FDInsQry, FDInsQryDet, QryGetId : TFDQuery;
  Str: TStringBuilder;
  LastId :Integer;
begin
   Str := TStringBuilder.Create;

   FDInsQry := TFDQuery.Create(nil);
   FDInsQryDet := TFDQuery.Create(nil);
   QryGetId := TFDQuery.Create(nil);

   FDInsQry.Connection := DM.FDConnection;
   FDInsQryDet.Connection :=  DM.FDConnection;
   QryGetId .Connection :=  DM.FDConnection;
   DM.FDConnection.StartTransaction;
   try

     Str.Clear;
     Str.Append('INSERT INTO ');
     Str.Append('pedidosdadosgerais ');
     Str.Append('( DataEmissao,');
     Str.Append(' FkCodCli,  ');
     Str.Append(' ValorTotal)');
     Str.Append('VALUES (');
     Str.Append(' :pDataEmissao,');
     Str.Append(' :pFkCodCli,');
     Str.Append(' :pValorTotal);');

     FDInsQry.SQL.Clear;
     FDInsQry.SQL.Add(Str.ToString);

     FDInsQry.ParamByName('pDataEmissao').AsDate := Date;
     FDInsQry.ParamByName('pFkCodCli').AsInteger := CodCli;
     FDInsQry.ParamByName('pValorTotal').AsCurrency := VTotal;

     FDInsQry.ExecSQL;

     QryGetId.SQl.Clear;
     QryGetId.SQl.Add('Select Last_Insert_Id() as NumPedido');
     QryGetId.Open;
     LastId := QryGetId.FieldByName('NumPedido').AsInteger;

     for var i := 1 to PedidoDeVendasF.StringGrid.RowCount -1 do
     begin
         Str.Clear;
         Str.Append('INSERT INTO ');
         Str.Append('PEDIDOSPRODUTOS ');
         Str.Append('(   FkNumeroPedido,');
         Str.Append('    FkCodProd,');
         Str.Append('    Qtd,');
         Str.Append('    VlrUnitario,');
         Str.Append('    VlrTotal) ');
         Str.Append(' VALUES ( ');
         Str.Append('   :pFkNumeroPedido,');
         Str.Append('   :pFkCodProd,');
         Str.Append('   :pQtd, ');
         Str.Append('   :pVlrUnitario, ');
         Str.Append('   :pVlrTotal);');

         FDInsQryDet.SQL.Clear;
         FDInsQryDet.SQL.Add(Str.ToString);

         FDInsQryDet.ParamByName('pFkNumeroPedido').AsInteger := LastId ;
         FDInsQryDet.ParamByName('pFkCodProd').AsInteger := StrToInt(PedidoDeVendasF.StringGrid.Cells[0,i]);
         FDInsQryDet.ParamByName('pQtd').AsInteger:=  StrToInt(PedidoDeVendasF.StringGrid.Cells[3,i]);
         FDInsQryDet.ParamByName('pVlrUnitario').AsCurrency :=  StrToCurr(PedidoDeVendasF.StringGrid.Cells[2,i]);
         FDInsQryDet.ParamByName('pVlrTotal').AsCurrency := StrToCurr(PedidoDeVendasF.StringGrid.Cells[4,i]);

         FDInsQryDet.ExecSQL;
     end;
     DM.FDConnection.Commit;
     Result := True;
   except
     DM.FDConnection.Rollback;
     raise;
   end;
end;


function TConsulta.AtualizaPed(CodCli: Integer; VTotal : Currency; CodPed : String): Boolean;
var Str: TStringBuilder;
    FDInsQryDet : TFDQuery;
begin
    Str := TStringBuilder.Create;
    FDInsQryDet := TFDQuery.Create(nil);

    FDInsQryDet.Connection :=  DM.FDConnection;
    DM.FDConnection.StartTransaction;
    try
      try
        DM.qryPedProd.First;
        for var i := 1 to PedidoDeVendasF.StringGrid.RowCount -1 do
        begin
           Str.Clear;
           Str.Append('UPDATE ');
           Str.Append('   PEDIDOSPRODUTOS ');
           Str.Append('SET ');
           Str.Append('   FkNumeroPedido = :pFkNumeroPedido, ');
           Str.Append('   FkCodProd = :pFkCodProd, ');
           Str.Append('   Qtd = :pQtd, ');
           Str.Append('   VlrUnitario = :pVlrUnitario, ');
           Str.Append('   VlrTotal = :pVlrTotal ');
           Str.Append('WHERE ');
           Str.Append('   Autoincrem = :pAutoincrem');

           FDInsQryDet.SQL.Add(Str.ToString);

           FDInsQryDet.ParamByName('pFkNumeroPedido').AsInteger := StrToInt(CodPed) ;
           FDInsQryDet.ParamByName('pFkCodProd').AsInteger := StrToInt(PedidoDeVendasF.StringGrid.Cells[0,i]);
           FDInsQryDet.ParamByName('pQtd').AsInteger:=  StrToInt(PedidoDeVendasF.StringGrid.Cells[3,i]);
           FDInsQryDet.ParamByName('pVlrUnitario').AsCurrency :=  StrToCurr(PedidoDeVendasF.StringGrid.Cells[2,i]);
           FDInsQryDet.ParamByName('pVlrTotal').AsCurrency := StrToCurr(PedidoDeVendasF.StringGrid.Cells[4,i]);
           FDInsQryDet.ParamByName('pAutoincrem').AsInteger := DM.qryPedProd.FieldByName('Autoincrem').AsInteger;

           FDInsQryDet.ExecSQL;
           FDInsQryDet.SQL.Clear;
           DM.qryPedProd.Next;
        end;
        FDInsQryDet.SQL.Clear;
        FDInsQryDet.SQL.Add('UPDATE pedidosdadosgerais SET ValorTotal = :pValorTotal WHERE NumPedido = :pNumPedido');
        FDInsQryDet.ParamByName('pNumPedido').AsInteger := StrToInt(CodPed);
        FDInsQryDet.ParamByName('pValorTotal').AsCurrency := StrToCurr(PedidoDeVendasF.lblValorTotal.Caption);

        FDInsQryDet.ExecSQL;

        DM.FDConnection.Commit;
        Result := True;
      except
        DM.FDConnection.Rollback;
         raise;
      end;
    finally
      FreeAndNil(Str);
      FreeAndNil(FDInsQryDet);
    end;
end;

end.
