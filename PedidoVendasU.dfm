object PedidoDeVendasF: TPedidoDeVendasF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pedido de Vendas'
  ClientHeight = 587
  ClientWidth = 971
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTopPedido: TPanel
    Left = 0
    Top = 0
    Width = 971
    Height = 49
    Align = alTop
    Caption = 'PEDIDO DE VENDAS '
    Color = clSilver
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Yu Gothic UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object pnPedidoVendas: TPanel
    Left = 0
    Top = 49
    Width = 971
    Height = 538
    Align = alClient
    Caption = 'pnPedidoVendas'
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object btnInserirProd: TSpeedButton
      Left = 748
      Top = 66
      Width = 49
      Height = 40
      Hint = 'Adicione o produto'
      Glyph.Data = {
        42100000424D4210000000000000420000002800000020000000200000000100
        20000300000000100000EC000000EC00000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000804000046C370053653502816636
        02766E39003A0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000743A0016512A00BE130A00FD000000FF000000FF0000
        00FF000000FF251400F75E310292800000020000000000000000000000000000
        0000000000000000000000000000000000000000004F00000077000000770000
        0077000000770000007700000077000000770000007700000077000000770000
        0077000000772111008A211100F9000000FF000000FF080400FF281500FF2011
        00FF020100FF000000FF000000FF3C1F00E37340001400000000000000000000
        00000000000000000000000000000000003A000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF160B00FF944E01FFE87902FFF17E02FFF17E
        02FFDA7202FF713B01FF040200FF000000FF3D1F00E380000002000000000000
        000000000000000000000000000000000055000000FF030C11FF113E55FF113E
        55FF113E55FF113E55FF113E55FF113E55FF113E55FF113E55FF113E55FF113E
        55FF0B0906FF000000FF1B0E00FFD56F02FFF17E02FFF17E02FFBE6302FFD56F
        02FFF17E02FFF17E02FFAA5901FF040200FF000000FF5F310291000000000000
        000000000000000000000000000000000055000000FF0A2533FF33BAFFFF33BA
        FFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF42A4
        D0FF050200FF000000FFB45E01FFF17E02FFF17E02FFD26E02FF020100FF2413
        00FFF17E02FFF17E02FFF17E02FF703B01FF000000FF251400F7000000000000
        000000000000000000000000000000000055000000FF0A2533FF33BAFFFF33BA
        FFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF4D62
        5EFF000000FF2C1700FFF17E02FFF17E02FFF17E02FFC16502FF000000FF1008
        00FFF17E02FFF17E02FFF17E02FFDA7202FF020100FF000000FF6E39003A0000
        000000000000000000000000000000000055000000FF0A2533FF33BAFFFF33BA
        FFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF4949
        38FF000000FF603201FFF17E02FFA35501FF160B00FF0D0700FF000000FF0100
        00FF100800FF231200FFD46F02FFF17E02FF201100FF000000FF643402750000
        000000000000000000000000000000000055000000FF0A2533FF33BAFFFF33BA
        FFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF4542
        31FF000000FF673601FFF17E02FF7F4201FF000000FF000000FF000000FF0000
        00FF000000FF020100FFBF6402FFF17E02FF271400FF000000FF6637027D0000
        000000000000000000000000000000000055000000FF0A2533FF33BAFFFF33BA
        FFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF4B56
        4CFF000000FF402201FFF17E02FFF07E02FFC66702FF9A5101FF000000FF0D07
        00FFC16502FFD26E02FFF17E02FFE87902FF080400FF000000FF773F004D0000
        000000000000000000000000000000000055000000FF0A2533FF33BAFFFF33BA
        FFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF468F
        A9FF000000FF050200FFD26E02FFF17E02FFF17E02FFC66702FF000000FF160B
        00FFF17E02FFF17E02FFF17E02FF954E01FF000000FF190D00FC663300050000
        000000000000000000000000000000000055000000FF0A2533FF33BAFFFF33BA
        FFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BA
        FFFF2E200EFF000000FF3F2101FFEC7C02FFF17E02FFEF7D02FF7E4201FFA456
        01FFF17E02FFF17E02FFD56F02FF160B00FF000000FF522B01BD000000000000
        000000000000000000000000000000000055000000FF0A2533FF33BAFFFF33BA
        FFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BA
        FFFF468DA6FF080500FF000000FF3F2101FFD36E02FFF17E02FFF17E02FFF17E
        02FFF17E02FFB45E01FF1B0E00FF000000FF251400F88C4D0014000000000000
        000000000000000000000000000000000055000000FF0A2533FF33BAFFFF33BA
        FFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BA
        FFFF33BAFFFF4C7379FF080500FF000000FF050200FF402201FF683601FF6133
        01FF2C1700FF000000FF000000FF201000FA6E3B004100000000000000000000
        000000000000000000000000000000000055000000FF0A2533FF33BAFFFF33BA
        FFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BA
        FFFF33BAFFFF33BAFFFF468DA6FF2E200EFF000000FF000000FF000000FF0000
        00FF000000FF000000FF0C0600F7804000240000000000000000000000000000
        000000000000000000000000000000000055000000FF0A2533FF33BAFFFF33BA
        FFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF33BA
        FFFF33BAFFFF33BAFFFF33BAFFFF33BAFFFF468FAAFF4B574DFF454231FF4949
        38FF364643FF000000FF000000DD000000000000000000000000000000000000
        000000000000000000000000000000000055000000FF09222FFF30AEEEFF30AE
        EEFF30AEEEFF30AEEEFF30AEEEFF30AEEEFF30AEEEFF30AEEEFF30AEEEFF30AE
        EEFF30AEEEFF30AEEEFF30AEEEFF30AEEEFF30AEEEFF30AEEEFF30AEEEFF30AE
        EEFF2380AFFF000000FF000000DD000000000000000000000000000000000000
        000000000000000000000000000000000052000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF020203DE000000000000000000000000000000000000
        000000000000000000000000000000000020000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF030404AB000000000000000000000000000000000000
        000000000000000000000000000000000000010101B0000000FF152A34FF61BE
        EEFF61BEEEFF61BEEEFF61BEEEFF61BEEEFF61BEEEFF61BEEEFF13262FFF0000
        00FF608A9FFF90CEEEFF90CEEEFF90CEEEFF90CEEEFF90CEEEFF90CEEEFF6C9B
        B3FF000000FF000000FE00000039000000000000000000000000000000000000
        00000000000000000000000000000000000000000023010202FA000000FF468A
        ACFF68CCFFFF68CCFFFF68CCFFFF68CCFFFF68CCFFFF68CCFFFF152933FF0000
        00FF6793AAFF9ADDFFFF9ADDFFFF9ADDFFFF9ADDFFFF9ADDFFFF99DCFEFF2332
        3AFF000000FF020303A900000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000020290000000FF0E1B
        22FF65C6F8FF68CCFFFF68CCFFFF68CCFFFF68CCFFFF68CCFFFF152933FF0000
        00FF6793AAFF9ADDFFFF9ADDFFFF9ADDFFFF9ADDFFFF9ADDFFFF638EA4FF0000
        00FF020203FB0000002300000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000011020506F20000
        00FF396F8BFF68CCFFFF68CCFFFF68CCFFFF68CCFFFF68CCFFFF152933FF0000
        00FF6793AAFF9ADDFFFF9ADDFFFF9ADDFFFF9ADDFFFF95D5F6FF131B1FFF0000
        00FF020204880000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000006F0000
        00FF060B0EFF5FBAE8FF68CCFFFF68CCFFFF68CCFFFF68CCFFFF152933FF0000
        00FF6793AAFF9ADDFFFF9ADDFFFF9ADDFFFF9ADDFFFF4F7283FF000000FF0406
        07F00000000F0000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000004060A
        0DE0000000FF2C566BFF68CCFFFF68CCFFFF68CCFFFF68CCFFFF152933FF0000
        00FF6793AAFF9ADDFFFF9ADDFFFF9ADDFFFF8CC9E8FF080C0EFF000000FF0202
        0267000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        004D000000FF020304FF152933FF152933FF152933FF152933FF04080AFF0000
        00FF151D22FF1F2C33FF1F2C33FF1F2C33FF131B1FFF000000FF090D0FDF0000
        0003000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000081013C5000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF010202FE000000420000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000A0000004C00000055000000550000005500000055000000550000
        005500000055000000550000005500000055000000550000002E000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
      OnClick = btnInserirProdClick
    end
    object lblDescCliente: TLabel
      Left = 109
      Top = 6
      Width = 52
      Height = 13
      Caption = 'Descricao:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCodigoCliente: TLabel
      Left = 6
      Top = 6
      Width = 84
      Height = 14
      Caption = 'Codigo Cliente: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCodProduto: TLabel
      Left = 7
      Top = 57
      Width = 88
      Height = 14
      Caption = 'Codigo Produto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDescProd: TLabel
      Left = 109
      Top = 57
      Width = 52
      Height = 13
      Caption = 'Descricao:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnPesquisaProd: TSpeedButton
      Left = 687
      Top = 66
      Width = 55
      Height = 40
      Hint = 'Pesquise Seu Produto'
      Glyph.Data = {
        42100000424D4210000000000000420000002800000020000000200000000100
        20000300000000100000EC000000EC00000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000066B3
        FF1466B3FFFF66B3FFFF66B3FFFF66B3FFFF6699FFF46695FFFF6695FFFF6695
        FFFF66ABFFD566B3FFFF66B3FFFF66B3FFFF66A7FFF66695FFFF6695FFFF6695
        FFFF6695FFDD0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000070BF
        FF2069B7FFF869B7FFF869B7FFF869B7FFF8669DFFF66698FFF26697FFEE6696
        FFE96CB5FFF569B7FFF869B7FFF869B7FFF868ABFFF56598FFF76696FFF16696
        FFEC6697FFCD0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000080D9
        FF1480D5FFFF80D5FFFF80D5FFFF80D5FFFF68B6FFEB66B3FFFF66B3FFFF66B3
        FFFF76C7FFFF80D5FFFF80D5FFFF80D5FFFF75C7FFF866B3FFFF66B3FFFF66B3
        FFFF66B3FFDC0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000080D9
        FF1480D5FFFF80D5FFFF80D5FFFF80D5FFFF69B7FFF666B3FFFF66B3FFFF66B3
        FFFF76C7FFFA80D5FFFF80D5FFFF80D5FFFF76C8FFFF66B3FFFF66B3FFFF66B3
        FFFF66B3FFDC0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000080D9
        FF1480D5FFFF80D5FFFF80D5FFFF80D5FFFF6AB9FFFE66B3FFFF66B3FFFF66B3
        FFFF77C9FFF080D5FFFF80D5FFFF80D5FFFF76C8FFFF66B3FFFF66B3FFFF66B3
        FFFF66B3FFDC0000000084524A1F864F4D7486504D708A554A18000000000000
        00000000000000000000000000000000000000000000000000000000000080D9
        FF1480D5FFFF80D5FFFF80D5FFFF80D5FFFF6AB8FFFD66B3FFFF66B3FFFF66B3
        FFFF77C9FFE780D5FFFF80D5FFFF80D5FFFF76C8FFFF66B3FFFF66B3FFFF66B3
        FFFF66B3FFDC85524D3286504DF286504DFF86504DFF86504DEC844F4F3A0000
        00000000000000000000000000000000000000000000000000000000000080D9
        FF1480D5FFFF80D5FFFF80D5FFFF93DBFFFF76C5FFF568B6FFFF66B3FFFF66B3
        FFFF79CBFFDD80D5FFFF80D5FFFF89D8FFFF88D1FFFB6EBCFFFF66B3FFFF66B3
        FFFF66B3FFDC86504DB386504DFF86504DFF86504DFF86504DFF86504DF28652
        4E3B0000000000000000000000000000000000000000000000000000000080D9
        FF1480D5FFFF80D5FFFF80D5FFFFAEE4FFFE85D6FFFC6CBAFFFF66B3FFFF66B3
        FFFF79CBFFD480D5FFFF80D5FFFF96DCFFFFA0DFFFFE7CCDFFFF66B3FFFF66B3
        FFFF66B3FFDC86504DCE86504DFF86504DFF86504DFF86504DFF86504DFF577E
        8BD000D4FF3B00000000000000000000000000000000000000000000000080D9
        FF1480D5FFFF80D5FFFF80D5FFFFB0E4FFF484D5FFF36CBAFFFF66B3FFFF66B3
        FFFF7ACDFFCB80D5FFFF80D5FFFF97DDFFF89EE0FFFB7CCEFFEE66B3FFFF66B3
        FFFF66B3FFDC85504C8686504DFF86504DFF86504DFF86504DFF4D8899FD01D3
        FEFF05D0F9F2676B733E000000000000000000000000000000000000000080DF
        FF0880D5FF6680D5FF6680D5FF66AFE7FF6988D8FF696BB9FF6967B4FF6667B4
        FF6677C9FF5E80D5FF6680D5FF6697DEFF65A0E1FF6678CBFF6667B4FF6667B4
        FF6665B4FF588E55550986504EC286504DFF86504DFF4C899AFF01D3FEFF05D0
        F9FF696D73EF86504DF486514D3F000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000008B46460B86504DBF587D8AE701D3FEFF05D0F9FF6274
        7CFF86504DFF86504DFF86504DF486514D3F0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000004E89890D01D2FEC205D0F9FF667076F48650
        4DFF86504DFF86504DFF86504DFF864F4EA40000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000D5FF0C696D75B186504DFF8650
        4DFF86504DFF86504DFF834E4ACA8055550600000000000000008855550F8751
        4C5B86504DA086504DBF754240AE73403EB2713F3D8571423D36000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000008B46460B86504DBF8650
        4DFF86504DFF824C49EC73403DFF73403C838055550687504E7986504DF08650
        4DFF9C6E6AFFAE8681FFAC867AE69A7066FF7B4B47FF72403DFF72403DC37142
        3D36000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000008B46460B8650
        4DBF87504DB67541413B72403DEF74423EFF844F4CD3885350FFB8948EFFF0E0
        D6FFFFF4E9FFFFF4E9FFEBD0BBFAFFE8CDFFFDE5CBFFD4B5A1FF8A5D55FF7240
        3DFA72403E670000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000008055
        550C80555506000000007744443C834D4AEA905E5AFFE3CEC4FFFFF4E9FFFFF4
        E9FFFFF4E9FFFFF4E9FFEFD6BDFCFFE8CDFFFFE8CDFFFFE8CDFFFCE4CAFFAC85
        78FF72403DFF723F3D6500000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000864F4C9A8A5652FFE6D2C9FFFFF4E9FFFFF4E9FFFFE8
        C2FFFFD688FFFFCD69FFFDB66EFFFFB166FFFFC58BFFFFE2C3FFFFE8CDFFFFE8
        CDFFAA8376FF72403DF871413B2B000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000085514B2C86504DFCCAADA6FFFFF4E9FFFFF4E9FFFFDD9EFFFFCC
        66FFFFCC66FFFFCC66FFFEB76CFFFFAB59FFFFAB59FFFFB163FFFFDCB6FFFFE8
        CDFFFBE4C9FF845650FF71403DB4000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000086504D9292615DFFFCF0E6FFFFF4E9FFFFE4B2FFFFCC66FFFFCC
        66FFFFCC66FFFFCC66FFFEB769FFFFAB59FFFFAB59FFFFAB59FFFFB265FFFFE4
        C6FFFFE8CDFFC9A896FF72403DFF704040200000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000086504DE0B8948EFFFFF4E9FFFFF3E6FFFFCF6FFFFFCC66FFFFCC
        66FFFFCC66FFFFCC66FFFFB666FFFFAB59FFFFAB59FFFFAB59FFFFAB59FFFFCA
        94FFFFE8CDFFF6DDC4FF754440FF71413C6A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00009249490786504DFED0B5ADFFFFF4E9FFFFEBC9FFFFCC66FFFFCC66FFFFCC
        66FFFFCC66FFFFCC66FFFFB562FFFFAB59FFFFAB59FFFFAB59FFFFAB59FFFFB8
        72FFFFE8CDFFFFE8CDFF885953FF71403C900000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00008952491C86504DFFDBC3BBFFFFF4E9FFFFE6BCFFFFCC66FFFFCC66FFFFCC
        66FFFFCC66FFFFCC66FFFFB45EFFFFAB59FFFFAB59FFFFAB59FFFFAB59FFFFB2
        66FFFFE8CDFFFFE8CDFF956961FF72403DA80000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00008055550C86504DFFD3B9B1FFFFF4E9FFFFE9C4FFFFCC66FFFFCC66FFFFCC
        66FFFFCC66FFFFCC66FFFFB561FFFFAB59FFFFAB59FFFFAB59FFFFAB59FFFFB6
        6EFFFFE8CDFFFFE8CDFF8B5E57FF72413D960000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000085504DEBBF9D97FFFFF4E9FFFFF2E2FFFFCE6AFFFFCC66FFFFCC
        66FFFFCC66FFFFCC66FFFFB665FFFFAB59FFFFAB59FFFFAB59FFFFAB59FFFFC6
        8DFFFFE8CDFFFBE3C9FF784743FF713F3D750000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000086504DA2996966FFFFF3E8FFFFF4E9FFFFDEA2FFFFCC66FFFFCC
        66FFFFCC66FFFFCC66FFFFB768FFFFAB59FFFFAB59FFFFAB59FFFFAD5EFFFFE1
        BFFFFFE8CDFFD4B5A1FF72403DFF7440402C0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000087514D4286504DFFD8BFB6FFFFF4E9FFFFF3E6FFFFD789FFFFCC
        66FFFFCC66FFFFCC66FFFEB76BFFFFAB59FFFFAB59FFFFAC5CFFFFD4A8FFFFE8
        CDFFFEE7CCFF92665DFF72403DCC000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000864F4DB793625EFFF3E3D9FFFFF4E9FFFFF3E6FFFFE0
        AAFFFFCF71FFFFCC66FFFDB66DFFFFAC5AFFFFBA76FFFFDCB4FFFFE8CDFFFFE8
        CDFFBE9B8BFF72403DFF74423E42000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000008A554A1886504EE39C6E69FFF1E1D7FFFFF4E9FFFFF4
        E9FFFFF3E7FFFFEED4FFF2D0AEFDFFE3C4FFFFE8CDFFFFE8CDFFFFE8CDFFC6A4
        93FF74423EFF72403E8800000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000884F4F2D86504DE1915F5BFFD0B3ACFFFDF1
        E6FFFFF4E9FFFFF4E9FFECD1BCFAFFE8CDFFFFE8CDFFEDD2BAFFA37A6FFF7240
        3DFF72413D968000000200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000854E4E1786504DA886504DFE905D
        5AFFB38D87FFC4A39DFFC29F91EDB48E81FF93685FFF74423EFF72403DE77240
        3D60000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000085504A308650
        4C8986504ECF85504DEB74423FCD723F3DE172403DB3723F3D656A40400C0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
      OnClick = btnPesquisaProdClick
    end
    object lblPrecoVenda: TLabel
      Left = 519
      Top = 52
      Width = 85
      Height = 13
      Caption = 'Preco de Venda: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtCodigoProduto: TLabeledEdit
      Left = 7
      Top = 77
      Width = 83
      Height = 28
      EditLabel.Width = 3
      EditLabel.Height = 13
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object edtDescricaoProd: TLabeledEdit
      Left = 108
      Top = 77
      Width = 404
      Height = 28
      EditLabel.Width = 3
      EditLabel.Height = 13
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object edtPrecoVenda: TLabeledEdit
      Left = 519
      Top = 77
      Width = 100
      Height = 28
      EditLabel.Width = 3
      EditLabel.Height = 13
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object StringGrid: TStringGrid
      Left = 7
      Top = 112
      Width = 937
      Height = 349
      FixedColor = clBlack
      FixedCols = 0
      RowCount = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goFixedRowDefAlign]
      ParentFont = False
      TabOrder = 3
      OnKeyDown = StringGridKeyDown
      OnSetEditText = StringGridSetEditText
    end
    object edtDescCliente: TEdit
      Left = 109
      Top = 25
      Width = 383
      Height = 28
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -15
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object edtCodigoClienteP: TEdit
      Left = 7
      Top = 24
      Width = 84
      Height = 28
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -15
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object pnlRodapePedido: TPanel
      Left = 1
      Top = 461
      Width = 969
      Height = 76
      Align = alBottom
      TabOrder = 6
      object LblTotalPedido: TLabel
        Left = 6
        Top = 10
        Width = 123
        Height = 29
        Caption = 'Total R$ : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12615680
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblValorTotal: TLabel
        Left = 134
        Top = 10
        Width = 7
        Height = 29
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnGravarPedido: TBitBtn
        Left = 816
        Top = 18
        Width = 121
        Height = 33
        Caption = 'Gravar'
        TabOrder = 0
        OnClick = btnGravarPedidoClick
      end
    end
  end
end