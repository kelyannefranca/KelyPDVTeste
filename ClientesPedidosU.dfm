object ClientesPedidosF: TClientesPedidosF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pedido'
  ClientHeight = 269
  ClientWidth = 436
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlConsultaCliente: TPanel
    Left = 0
    Top = 0
    Width = 436
    Height = 269
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 443
    ExplicitHeight = 273
    object lblCodigoCliente: TLabel
      Left = 146
      Top = 58
      Width = 140
      Height = 14
      Caption = 'Digite o c'#243'digo do cliente: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LbNomeCliente: TLabel
      Left = 170
      Top = 90
      Width = 199
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnPesquisaCli: TBitBtn
      Left = 35
      Top = 153
      Width = 97
      Height = 35
      Caption = 'Incluir Cliente'
      TabOrder = 0
      OnClick = btnPesquisaCliClick
    end
    object btnLimpar: TBitBtn
      Left = 170
      Top = 153
      Width = 97
      Height = 35
      Caption = 'Limpar'
      TabOrder = 1
      OnClick = btnLimparClick
    end
    object btnIncluirPedido: TBitBtn
      Left = 304
      Top = 153
      Width = 97
      Height = 35
      Caption = 'Incluir Pedido'
      TabOrder = 2
      OnClick = btnIncluirPedidoClick
    end
    object edtPedCliente: TLabeledEdit
      Left = 35
      Top = 96
      Width = 113
      Height = 21
      EditLabel.Width = 3
      EditLabel.Height = 13
      TabOrder = 3
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 434
      Height = 52
      Align = alTop
      Caption = 'CLIENTES'
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
      ExplicitWidth = 441
    end
    object btnFechar: TBitBtn
      Left = 320
      Top = 216
      Width = 81
      Height = 28
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btnFecharClick
    end
  end
end
