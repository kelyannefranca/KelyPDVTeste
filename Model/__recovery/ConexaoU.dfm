object Dm: TDm
  OldCreateOrder = False
  Height = 254
  Width = 426
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=pedidosvendawk'
      'User_Name=root'
      'Password=81270142'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 40
  end
  object FDTransaction: TFDTransaction
    Connection = FDConnection
    Left = 72
    Top = 88
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 72
    Top = 136
  end
  object FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\kelyn\OneDrive\Documentos\Embarcadero\Studio\Projects\P' +
      'rojKelyPDV\ProjKelyPdv\output\libmysql.dll'
    Left = 72
    Top = 192
  end
  object QueryPedGerais: TFDQuery
    Connection = FDConnection
    Transaction = FDTransaction
    UpdateTransaction = FDTransaction
    SQL.Strings = (
      'SELECT'
      '  P.NumPedido, '
      '  C.PKCodCli,'
      '  C.nome As Cliente,'
      '  P.DataEmissao As Emiss'#227'o,'
      '  P.ValorTotal As Total'
      'FROM '
      '  pedidosdadosgerais P'
      'INNER JOIN clientes C ON (P.FkCodCli = C.PKCodCli)'
      '-- WHERE P.NumPedido = :pNumPed')
    Left = 224
    Top = 16
  end
  object qryPedProd: TFDQuery
    IndexFieldNames = 'FkNumeroPedido'
    MasterSource = DsPedGerais
    MasterFields = 'NumPedido'
    DetailFields = 'FkNumeroPedido'
    Connection = FDConnection
    Transaction = FDTransaction
    UpdateTransaction = FDTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT '
      '   D.Autoincrem , '
      '   D.FkNumeroPedido,'
      '   D.FkCodProd As CodProduto,  '
      '   P.Descricao, '
      '  D.Qtd, '
      '  D.VlrUnitario, '
      '  D.VlrTotal As Total '
      'FROM '
      '  pedidosprodutos D'
      'INNER JOIN '
      '  produtos P ON (P.PkCodProd = D.FkCodProd)'
      'WHERE  '
      '  D.FkNumeroPedido  =  :NumPedido ')
    Left = 216
    Top = 96
    ParamData = <
      item
        Name = 'NUMPEDIDO'
        DataType = ftLargeint
        ParamType = ptInput
        Value = 3
      end>
  end
  object DsPedGerais: TDataSource
    DataSet = QueryPedGerais
    Left = 309
    Top = 16
  end
  object DsPedidoProd: TDataSource
    DataSet = qryPedProd
    Left = 312
    Top = 96
  end
  object QryDelPedido: TFDQuery
    Connection = FDConnection
    Left = 263
    Top = 168
  end
end
