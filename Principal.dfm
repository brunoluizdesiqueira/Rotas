object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Calcula corrida'
  ClientHeight = 280
  ClientWidth = 363
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    363
    280)
  PixelsPerInch = 96
  TextHeight = 13
  object lbldistancia: TLabel
    Left = 8
    Top = 120
    Width = 69
    Height = 13
    Caption = 'Dist'#226'ncia: 0km'
  end
  object lbltempo: TLabel
    Left = 8
    Top = 152
    Width = 56
    Height = 13
    Caption = 'Tempo: 0hs'
  end
  object lblValor: TLabel
    Left = 8
    Top = 203
    Width = 347
    Height = 23
    Alignment = taCenter
    Caption = 'R$ 0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 10
    Top = 16
    Width = 38
    Height = 13
    Caption = 'Origem:'
  end
  object Label2: TLabel
    Left = 8
    Top = 61
    Width = 40
    Height = 13
    Caption = 'Destino:'
  end
  object Label3: TLabel
    Left = 8
    Top = 184
    Width = 347
    Height = 13
    Alignment = taCenter
    Caption = 'Valor da corrida:'
  end
  object btnConsultar: TButton
    Left = 279
    Top = 245
    Width = 75
    Height = 27
    Anchors = [akBottom]
    Caption = 'Consultar'
    TabOrder = 0
    OnClick = btnConsultarClick
    ExplicitLeft = 270
    ExplicitTop = 217
  end
  object edtOrigem: TEdit
    Left = 8
    Top = 32
    Width = 337
    Height = 21
    TabOrder = 1
  end
  object edtDestino: TEdit
    Left = 8
    Top = 80
    Width = 337
    Height = 21
    TabOrder = 2
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    AcceptEncoding = 'identity'
    BaseURL = 'https://maps.googleapis.com/maps/api/distancematrix'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 312
    Top = 96
  end
  object RESTRequest: TRESTRequest
    Client = RESTClient1
    Params = <>
    Resource = 
      'json?units=imperial&origins=Campinas,SP&destinations=Sao+Paulo,S' +
      'P&key=AIzaSyBPBXe9Z7DIhV1747sFrPXs7zhUkKHt6A8'
    Response = RESTResponse
    SynchronizedEvents = False
    Left = 312
    Top = 8
  end
  object RESTResponse: TRESTResponse
    ContentType = 'application/json'
    Left = 312
    Top = 56
  end
end
